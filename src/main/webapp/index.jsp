<!--How to commoent in HTML: command-->
<!--Backround GIF: https://i.pinimg.com/originals/7d/2a/9f/7d2a9fca264faa93561f72b5fc885fec.gif-->
<!--Title: Automated Grading API-->
<!--Theme Button-->
<!--Choose File Button-->
<!--Dropdown Button: Program Instructions -->
<!--Dropdown Button: Program Overview-->
<!--Dropdown Button: Program Information-->
<!--Login Credential Buttons-->
<!--Warning Button for Login Credentials-->




<html>
<head>
     <!--Telling console to donwload DaisyUI(formatting) and CSS-->
    <link href="https://cdn.jsdelivr.net/npm/daisyui@4.11.1/dist/full.min.css" rel="stylesheet" type="text/css" />
    <script src="https://cdn.tailwindcss.com"></script>
    
</head>

<body>

   
    <div class="flex justify-center w-full ">

        <!--Title: Automated Grading API-->
        <h1 style="color:Tomato;">Automated Grading API.</h1>

        <!--Backround GIF-->
        <style>
            body {
                background-image: url('img_girl.jpg');
                background-repeat: no-repeat;
                background-attachment: fixed;
                background-size: 100% 100%;
            }
        </style>

        <!--Theme Button-->
        <div class="dropdown mb-72">
            <div tabindex="0" role="button" class="btn m-1">
                Theme
                <svg width="12px" height="12px" class="h-2 w-2 fill-current opacity-60 inline-block"
                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 2048 2048">
                    <path d="M1799 349l242 241-1017 1017L7 590l242-241 775 775 775-775z"></path>
                </svg>
            </div>
            <ul tabindex="0" class="dropdown-content z-[1] p-2 shadow-2xl bg-base-300 rounded-box w-52">
                <li><input type="radio" name="theme-dropdown"
                        class="theme-controller btn btn-sm btn-block btn-ghost justify-start" aria-label="Default"
                        value="default" /></li>
                <li><input type="radio" name="theme-dropdown"
                        class="theme-controller btn btn-sm btn-block btn-ghost justify-start" aria-label="Retro"
                        value="retro" /></li>
                <li><input type="radio" name="theme-dropdown"
                        class="theme-controller btn btn-sm btn-block btn-ghost justify-start" aria-label="Cyberpunk"
                        value="cyberpunk" /></li>
                <li><input type="radio" name="theme-dropdown"
                        class="theme-controller btn btn-sm btn-block btn-ghost justify-start" aria-label="Valentine"
                        value="valentine" /></li>
                <li><input type="radio" name="theme-dropdown"
                        class="theme-controller btn btn-sm btn-block btn-ghost justify-start" aria-label="Aqua"
                        value="aqua" /></li>
            </ul>
        </div>

        <!--Choose File Button-->
        <label class="form-control w-full max-w-xs">
            <div class="label">
                <span class="label-text">Pick a file</span>
                <span class="label-text-alt">Alt label</span>
            </div>
            <input type="file" class="file-input file-input-bordered w-full max-w-xs" />
            <div class="label">
                <span class="label-text-alt">Alt label</span>
                <span class="label-text-alt">Alt label</span>
            </div>
        </label>

        <!--Dropdown Button: Program Instructions -->
        <div class="collapse bg-base-200">
            <input type="checkbox" class="peer" />
            <div
                class="collapse-title bg-primary text-primary-content peer-checked:bg-secondary peer-checked:text-secondary-content">
                Program Instructions
            </div>
            <div
                class="collapse-content bg-primary text-primary-content peer-checked:bg-secondary peer-checked:text-secondary-content">
                <p>Starting the Application:
                    Open your terminal.
                    Navigate to the project directory.
                    Run the command mvn tomcat7:run to start the server.
                    Access the application by visiting http://localhost:8081/ in your web browser.
                    Uploading a File:
                    On the web page at http://localhost:8080/WebApp/index.jsp, locate the file upload section.
                    Select the document of a clear photo containing the marked paper and upload it.
                </p>
            </div>
        </div>
        <!--Dropdown Button: Program Overview-->
        <div class="collapse bg-base-200">
            <input type="checkbox" class="peer" />
            <div
                class="collapse-title bg-primary text-primary-content peer-checked:bg-secondary peer-checked:text-secondary-content">
                Program Overview
            </div>
            <div
                class="collapse-content bg-primary text-primary-content peer-checked:bg-secondary peer-checked:text-secondary-content">
                <p>File Upload:
                    The teacher drops a file at http://localhost:8081/, accessed via the command mvn tomcat7:run.
                    Web Interface: The teacher accesses the web interface at http://localhost:8080/, which serves the
                    index.jsp page.
                    Processing the File:
                    File Submission: The file gets submitted to a servlet.
                    Google Vision API: The servlet sends the file to the Google Vision API for processing.
                    Result Interpretation: Google Vision API processes the file and returns results, such as a student's
                    name and grade (e.g., "Hakeem Kasif, Grade: 94%").
                    Displaying Results:
                    Update Table: The servlet adds the results to a table.
                    Send Back to Web Interface: The updated table with the student's grades is sent back to t
                </p>
            </div>
        </div>
        <!--Dropdown Button: Program Information-->
        <div class="collapse bg-base-200">
            <input type="checkbox" class="peer" />
            <div
                class="collapse-title bg-primary text-primary-content peer-checked:bg-secondary peer-checked:text-secondary-content">
                Program Information
            </div>
            <div
                class="collapse-content bg-primary text-primary-content peer-checked:bg-secondary peer-checked:text-secondary-content">
                <p>Creator: Hakeem Kashif Course Code: ICS3U-03 Date of Creation: 5/12/2024 Project Description: This
                    project automates the grading process by accepting scanned grading files, interpreting the grades
                    using the Google Vision API, and displaying the results in a user-friendly web interface.License:
                    Certified under the Lauders License.</p>
            </div>
        </div>


        <!--Program Statistics-->

        <div class="stats shadow">

            <div class="stat">
                <div class="stat-figure text-secondary">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                        class="inline-block w-8 h-8 stroke-current">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                            d="M13 16h-1v-4h-1m1-4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                    </svg>
                </div>
                <div class="stat-title">Downloads</div>
                <div class="stat-value">31K</div>
                <div class="stat-desc">Jan 1st - Feb 1st</div>
            </div>

            <div class="stat">
                <div class="stat-figure text-secondary">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                        class="inline-block w-8 h-8 stroke-current">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                            d="M12 6V4m0 2a2 2 0 100 4m0-4a2 2 0 110 4m-6 8a2 2 0 100-4m0 4a2 2 0 110-4m0 4v2m0-6V4m6 6v10m6-2a2 2 0 100-4m0 4a2 2 0 110-4m0 4v2m0-6V4">
                        </path>
                    </svg>
                </div>
                <div class="stat-title">New Users</div>
                <div class="stat-value">4,200</div>
                <div class="stat-desc">↗︎ 400 (22%)</div>
            </div>

            <div class="stat">
                <div class="stat-figure text-secondary">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                        class="inline-block w-8 h-8 stroke-current">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                            d="M5 8h14M5 8a2 2 0 110-4h14a2 2 0 110 4M5 8v10a2 2 0 002 2h10a2 2 0 002-2V8m-9 4h4">
                        </path>
                    </svg>
                </div>
                <div class="stat-title">New Registers</div>
                <div class="stat-value">1,200</div>
                <div class="stat-desc">↘︎ 90 (14%)</div>
            </div>
        </div>





</body>

</html>