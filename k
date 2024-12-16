<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Scary Screenshot Tool</title>
    <style>
        body {
            font-family: 'Courier New', Courier, monospace;
            background-color: black;
            color: white;
            text-align: center;
            padding-top: 50px;
            animation: fadeIn 2s ease-in-out;
        }
        h1 {
            font-size: 48px;
            color: red;
            text-shadow: 2px 2px 10px rgba(255, 0, 0, 0.8);
        }
        .button {
            background-color: red;
            border: none;
            color: white;
            padding: 20px 40px;
            font-size: 22px;
            cursor: pointer;
            border-radius: 10px;
            margin-top: 30px;
            box-shadow: 0px 0px 10px rgba(255, 0, 0, 0.8);
            transition: 0.3s;
        }
        .button:hover {
            background-color: darkred;
            box-shadow: 0px 0px 20px rgba(255, 0, 0, 1);
        }
        .message {
            margin-top: 30px;
            font-size: 24px;
            color: lightgray;
            font-family: 'Courier New', Courier, monospace;
            text-shadow: 1px 1px 5px rgba(255, 0, 0, 0.8);
            opacity: 0;
            animation: fadeInMessage 3s ease forwards;
        }
        @keyframes fadeIn {
            0% { opacity: 0; }
            100% { opacity: 1; }
        }
        @keyframes fadeInMessage {
            0% { opacity: 0; }
            50% { opacity: 0.5; }
            100% { opacity: 1; }
        }
    </style>
</head>
<body>
    <h1>Scary Screenshot Tool</h1>
    <p>Click the button to take a screenshot...</p>
    <button class="button" onclick="takeScreenshot()">Take Screenshot</button>

    <div class="message" id="message"></div>

    <script>
        function takeScreenshot() {
            // Change the message to something scary
            document.getElementById('message').innerHTML = 'Screenshot taken...<br>They are watching you now...';

            // Disable the button and change the text
            document.querySelector('.button').disabled = true;
            document.querySelector('.button').innerHTML = 'You can\'t escape now...';

            // Add creepy background flicker effect
            document.body.style.backgroundColor = 'darkred';
            setTimeout(() => {
                document.body.style.backgroundColor = 'black';
            }, 500);

            // Optionally, add a spooky sound
            let audio = new Audio('https://www.soundjay.com/button/beep-07.wav'); // Spooky beep sound
            audio.play();

            // Reset everything after 5 seconds
            setTimeout(function() {
                document.querySelector('.button').disabled = false;
                document.querySelector('.button').innerHTML = 'Take Screenshot';
                document.getElementById('message').innerHTML = '';
            }, 5000); // Reset after 5 seconds
        }
    </script>
</body>
</html>
