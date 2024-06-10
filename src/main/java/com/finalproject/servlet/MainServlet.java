package com.finalproject.servlet;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import io.github.stefanbratanov.jvm.openai.ChatCompletion;
import io.github.stefanbratanov.jvm.openai.ChatMessage;
import io.github.stefanbratanov.jvm.openai.CreateChatCompletionRequest;
import io.github.stefanbratanov.jvm.openai.OpenAI;
import io.github.stefanbratanov.jvm.openai.OpenAIModel;


public class MainServlet extends HttpServlet {
private OpenAI openAI;


public void init() {
    String apiKey = System.getenv("OPENAI_API_KEY");
    openAI = OpenAI.newBuilder(apiKey).build();

}

public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
    PrintWriter out = response.getWriter();
    response.setContentType("text/html");
String userMessage = request.getParameter("message");
if (userMessage == null|| userMessage.isEmpty()) {
    out.println("<p>Please provide a message query parameter. </p>");

}
else {
    CreateChatCompletionRequest chatRequest = CreateChatCompletionRequest.newBuilder()
    .model(OpenAIModel.GPT_4o)
    .message(ChatMessage.userMessage(userMessage))
    .build();
    ChatCompletion chatCompletion = openAI.chatClient().createChatCompletion(chatRequest);

    //no system because np servlet
    out.println("<HTML>");
    out.println("<HEAD>");
    out.println("<TITLE>Hello Servlet</TITLE>");
    out.println("</HEAD>");
    out.println("<BODY>");
    out.println("<p>Response: " + chatCompletion.choices().get(0).message().content() + "</p>");
    out.println("</BODY>");
    out.println("</HTML>");

}



}
}




