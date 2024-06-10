<!--How to comment in HTML: command-->
<!--Background GIF: https://i.pinimg.com/originals/7d/2a/9f/7d2a9fca264faa93561f72b5fc885fec.gif-->
<!--Title: Automated Grading API-->
<!--Theme Button-->
<!--Choose File Button-->
<!--Dropdown Button: Program Instructions -->
<!--Dropdown Button: Program Overview-->
<!--Dropdown Button: Program Information-->
<!--Login Credential Buttons-->
<!--Warning Button for Login Credentials-->
<!--Vertical lines need to end somewhere-->

<html>

<head>
    <!--Telling console to download DaisyUI(formatting) and CSS-->
    <link href="https://cdn.jsdelivr.net/npm/daisyui@4.11.1/dist/full.min.css" rel="stylesheet" type="text/css" />
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        /* Typing animation */
        @keyframes typing {
            from {
                width: 0;
            }

            to {
                width: 100%;
            }
        }

        @keyframes blink-caret {

            from,
            to {
                border-color: transparent;
            }

            50% {
                border-color: plum;
            }
        }

        @keyframes stop-blink {

            from,
            to {
                border-color: transparent;
            }
        }

        .typing-effect {
            overflow: hidden;
            border-right: .15em solid plum;
            white-space: nowrap;
            margin: 0 auto;
            letter-spacing: .15em;
            animation: typing 3.5s steps(30, end), blink-caret .75s step-end 7;
            animation-fill-mode: forwards;
            color: #fff;
            /* Set title color to white */
        }

        /* Background image */
        body {
            background-image: url('https://i.pinimg.com/originals/7d/2a/9f/7d2a9fca264faa93561f72b5fc885fec.gif');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }

        /* Adjust text color for better contrast */
        .text-primary-content {
            color: #fff;
            /* Set text color to white */
        }

        .bg-primary {
            background-color: rgba(0, 0, 0, 0.5);
            /* Set background color for dropdown headers with some transparency */
        }
    </style>

</head>

<body class="flex flex-col justify-center items-center h-screen w-full">
    <div class="flex flex-col justify-center items-center space-y-4">
        <!--Title: Automated Grading API-->
        <h1 class="text-6xl font-bold typing-effect file-input-primary"
            style="font-family: 'Sofia', Times, serif, sans-serif; font-style: italic;">
            Automated Grading API
        </h1>




       <!--Theme Button-->
<div class="dropdown mb-8" style="position: absolute; top: 20px; right: 20px;">
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
                <span class="label-text" style="color: white;">Pick a file</span>
            </div>
            <input type="file" class="file-input file-input-bordered file-input-primary w-full max-w-xs" />
        </label>
        


        <label class="cursor-pointer grid place-items-center">
            <input type="checkbox" value="synthwave" class="toggle theme-controller bg-base-content row-start-1 col-start-1 col-span-2"/>
            <svg class="col-start-1 row-start-1 stroke-base-100 fill-base-100" xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="5"/><path d="M12 1v2M12 21v2M4.2 4.2l1.4 1.4M18.4 18.4l1.4 1.4M1 12h2M21 12h2M4.2 19.8l1.4-1.4M18.4 5.6l1.4-1.4"/></svg>
            <svg class="col-start-2 row-start-1 stroke-base-100 fill-base-100" xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M21 12.79A9 9 0 1 1 11.21 3 7 7 0 0 0 21 12.79z"></path></svg>
          </label>

        <!--Dropdown Button: Program Instructions -->
        <div class="collapse bg-base-300 w-full max-w-xl">
            <input type="checkbox" class="peer" />
            <div
                class="collapse-title bg-primary text-primary-content peer-checked:bg-secondary peer-checked:text-secondary-content">
                <b>Program Instructions</b>
            </div>
            <div
                class="collapse-content bg-primary text-primary-content peer-checked:bg-secondary peer-checked:text-secondary-content">
                <b class="mb-4">1. Starting the Application</b>
                <li>Open your terminal.</li>
                <li>Navigate to the project directory.</li>
                <li>Run the command mvn tomcat7:run to start the server.</li>
                <li>Access the application by visiting http://localhost:8081/ in your web browser.</li>
                <p class="mb-4"></p>
                <b class="mb-4">2. Uploading a File</b>
                <li>On the web page at http://localhost:8080/WebApp/index.jsp, locate the file upload section.</li>
                <li>Select the document or clear photo containing the marked paper and upload it.</li>
            </div>
        </div>

        <!--Dropdown Button: Program Overview-->
        <div class="collapse bg-base-300 w-full max-w-xl">
            <input type="checkbox" class="peer" />
            <div
                class="collapse-title bg-primary text-primary-content peer-checked:bg-secondary peer-checked:text-secondary-content">
                <b>Program Overview</b>
            </div>
            <div
                class="collapse-content bg-primary text-primary-content peer-checked:bg-secondary peer-checked:text-secondary-content">
                <b>1. File Upload:</b>
                <li>The teacher drops a file at http://localhost:8081/, accessed via the command mvn tomcat7:run.</li>
                <p class="mb-4"></p>
                <b>2. Web Interface:</b>
                <li>The teacher accesses the web interface at http://localhost:8080/, which serves the index.jsp page.
                </li>
                <p class="mb-4"></p>
                <b>3. Processing the File:</b>
                <li>File Submission: The file gets submitted to a servlet.</li>
                <li>Google Vision API: The servlet sends the file to the Google Vision API for processing.</li>
                <li>Result Interpretation: Google Vision API processes the file and returns results, such as a student's
                    name and grade (e.g., "Greogary Lauder, Grade: 99%").</li>
                <p class="mb-4"></p>
                <b>4. Displaying Results:</b>
                <li>Update Table: The servlet adds the results to a table.</li>
                <li>Send Back to Web Interface: The updated table with the student's grades is sent back to the
                    teacher's web pages.</li>
            </div>
        </div>

        <!--Dropdown Button: Program Information-->
        <div class="collapse bg-base-300 w-full max-w-xl">
            <input type="checkbox" class="peer" />
            <div
                class="collapse-title bg-primary text-primary-content peer-checked:bg-secondary peer-checked:text-secondary-content">
                <b>Program Information</b>
            </div>
            <div
                class="collapse-content bg-primary text-primary-content peer-checked:bg-secondary peer-checked:text-secondary-content">
                <li><b>Creator: </b> Hakeem Kashif</li>
                <p class="mb-4"></p>
                <li><b>Course Code: </b> ICS3U-03</li>
                <p class="mb-4"></p>
                <li><b>Date of Creation: </b> 5/12/2024</li>
                <p class="mb-4"></p>
                <li><b>Project Description: </b> This project automates the grading process by accepting scanned grading
                    files, interpreting the grades using the Google Vision API, and displaying the results in a
                    user-friendly web interface.</li>
                <p class="mb-4"></p>
                <li><b>License: </b> Certified under the Lauders License.</li>
            </div>
        </div>
        <!--Program Statistics-->


        <div class="stats shadow grid grid-cols-1 sm:grid-cols-3 gap-4 w-full max-w-xl">


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
                <div class="stat-desc">(22%)</div>
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
                <div class="stat-desc">(14%)</div>
            </div>
        </div>






    </div>