<!DOCTYPE html>
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
            position: relative;
        }

        /* Gradient overlay */
        body::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(to bottom right, rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.3));
            z-index: 1;
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

        .btn-animated {
            position: relative;
            display: inline-block;
            padding: 10px 20px;
            font-size: 18px;
            text-transform: uppercase;
            overflow: hidden;
            transition: 0.5s;
            margin: 10px;
            letter-spacing: 4px;
            color: #fff;
            background: linear-gradient(90deg, rgba(255, 0, 150, 1) 0%, rgba(0, 204, 255, 1) 100%);
            z-index: 2;
        }

        .btn-animated:hover {
            background: #fff;
            color: #000;
            border-radius: 5px;
            box-shadow: 0 0 5px #fff, 0 0 25px #fff, 0 0 50px #fff, 0 0 100px #fff;
        }

        .btn-animated::before {
            content: '';
            position: absolute;
            top: -50%;
            left: -50%;
            width: 200%;
            height: 200%;
            background: rgba(255, 255, 255, 0.1);
            pointer-events: none;
            transition: 0.5s;
        }

        .btn-animated:hover::before {
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
        }

        .hover-effect:hover {
            background-color: rgba(255, 255, 255, 0.2);
            transition: background-color 0.3s ease;
        }

        /* Box shadow for elements */
        .shadow-custom {
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .label-text {
            color: #fff;
        }
    </style>
</head>

<body class="flex flex-col justify-center items-center h-screen w-full relative">
    <div class="flex flex-col justify-center items-center space-y-4 z-10">
        <!--Title: Automated Grading API-->
        <h1 class="text-6xl font-bold typing-effect file-input-primary shadow-custom"
            style="font-family: 'Sofia', Times, serif, sans-serif; font-style: italic;">
            The student got 4
        </h1>

        <!-- Theme Button -->
        <div class="dropdown mb-8 self-end" style="position: absolute; top: 20px; right: 20px;">
            <div tabindex="0" role="button" class="btn btn-animated" id="theme-button">
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
                        value
