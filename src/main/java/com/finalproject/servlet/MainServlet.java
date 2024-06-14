package com.finalproject.servlet;

import io.github.sashirestela.openai.SimpleOpenAI;
import io.github.sashirestela.openai.common.content.ContentPart.ContentPartImageUrl;
import io.github.sashirestela.openai.common.content.ContentPart.ContentPartImageUrl.ImageUrl;
import io.github.sashirestela.openai.common.content.ContentPart.ContentPartText;
import io.github.sashirestela.openai.domain.chat.ChatRequest;
import io.github.sashirestela.openai.domain.chat.ChatMessage.SystemMessage;
import io.github.sashirestela.openai.domain.chat.ChatMessage.UserMessage;
import io.github.sashirestela.openai.domain.chat.Chat;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.Base64;
import java.util.List;
import java.util.concurrent.CompletableFuture;

@MultipartConfig
public class MainServlet extends HttpServlet {

    private SimpleOpenAI openAI;

    @Override
    public void init() throws ServletException {
        super.init();
        openAI = SimpleOpenAI.builder()
                .apiKey(System.getenv("OPENAI_API_KEY"))
                .build();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String userMessage = request.getParameter("message");

        // Check if userInput is null or empty
        if (userMessage == null || userMessage.trim().isEmpty()) {
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.println("<html><body>");
            out.println("<h1>Error</h1>");
            out.println("<p>User input is required.</p>");
            out.println("</body></html>");
            return;
        }

        // Create a chat request
        ChatRequest chatRequest = ChatRequest.builder()
                .model("gpt-4o")
                .message(SystemMessage.of("You are a helpful assistant.", "system"))
                .message(UserMessage.of(userMessage, "user"))
                .build();

        // Send request and get response
        Chat chatResponse = openAI.chatCompletions().create(chatRequest).join();

        // Output the response
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<HTML>");
        out.println("<HEAD>");
        out.println("<TITLE>Hello Servlet</TITLE>");
        out.println("</HEAD>");
        out.println("<BODY>");
        out.println("<p>Response: " + chatResponse.getChoices().get(0).getMessage().getContent() + "</p>");
        out.println("</BODY>");
        out.println("</HTML>");
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            Part filePart = request.getPart("image");
            if (filePart == null) {
                throw new ServletException("No image found in request");
            }
            InputStream fileContent = filePart.getInputStream();
            byte[] imageBytes = fileContent.readAllBytes();
            String base64Image = Base64.getEncoder().encodeToString(imageBytes);
            String imageUri = "data:image/jpeg;base64," + base64Image;

            ChatRequest chatRequest = ChatRequest.builder()
                .model("gpt-4o")
                .messages(List.of(
                    SystemMessage.of(
                        "You are a helpful assistant that helps analyze images and convert the grade into percentages. 4+ means 98%, 4 means 90%  4- means 80%, 3+ means 78%, 3 means 75%  3- means 70%, 2+ means 68%, 2 means 66%  2- means 60%, 1+ means 58%, 1 means 55%  1- means 50%",
                        "system"),
                    UserMessage.of(List.of(
                        ContentPartText.of("What grade did this person get. Respond with just the grade no other text. If multiple grades are present respond in an array. If the person did not get a grade respond with an empty array. Here is the image: "),
                        ContentPartImageUrl.of(ImageUrl.of(imageUri))
                    ))
                ))
                .build();
            // Send request and get response
            Chat chatResponse = openAI.chatCompletions().create(chatRequest).join();

            // redirect to /results with the response
            // response.sendRedirect("/results?response=" + futureResponse.join());
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.println("<HTML>");
            out.println("<BODY>");
            out.println("<p>Response: " + chatResponse.getChoices().get(0).getMessage().getContent() + "</p>");
            out.println("</BODY>");ç
            out.println("</HTML>");
        } catch (Exception e) {
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR,
                    "Failed to process image: " + e.getMessage());
        }
    }
}