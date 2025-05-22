<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Simple DevOps App</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 50px; }
        .container { max-width: 600px; }
        input { padding: 8px; margin: 5px; width: 200px; }
        .btn { 
            background-color: #007bff; 
            color: white; 
            padding: 10px 20px; 
            border: none; 
            margin: 5px; 
            cursor: pointer; 
        }
        .btn:hover { background-color: #0056b3; }
        a { color: #007bff; margin: 10px; text-decoration: none; }
        a:hover { text-decoration: underline; }
        #result { 
            background-color: #d4edda; 
            padding: 15px; 
            margin: 20px 0; 
            border-radius: 5px;
            display: none;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Simple DevOps Test App</h1>
        
        <div>
            <a href="#" id="homeLink">Home</a> |
            <a href="#" id="aboutLink">About</a> |
            <a href="#" id="contactLink">Contact</a> |
            <a href="#" id="helpLink">Help</a>
        </div>
        
        <hr>
        
        <h3>User Form:</h3>
        <input type="text" id="nameBox" placeholder="Enter your name">
        <input type="text" id="emailBox" placeholder="Enter your email">
        <button class="btn" id="submitBtn">Submit</button>
        <button class="btn" id="clearBtn">Clear</button>
        
        <div id="result"></div>
        
        <p id="status">Ready</p>
    </div>

    <script>
        // Handle links without page refresh
        document.getElementById('homeLink').onclick = function(e) {
            e.preventDefault();
            document.getElementById('status').innerText = 'Home clicked';
        };
        
        document.getElementById('aboutLink').onclick = function(e) {
            e.preventDefault();
            document.getElementById('status').innerText = 'About clicked';
        };
        
        document.getElementById('contactLink').onclick = function(e) {
            e.preventDefault();
            document.getElementById('status').innerText = 'Contact clicked';
        };
        
        document.getElementById('helpLink').onclick = function(e) {
            e.preventDefault();
            document.getElementById('status').innerText = 'Help clicked';
        };
        
        // Handle form buttons
        document.getElementById('submitBtn').onclick = function() {
            var name = document.getElementById('nameBox').value;
            var email = document.getElementById('emailBox').value;
            
            if (name) {
                document.getElementById('result').innerHTML = 
                    '<strong>Submitted!</strong><br>Name: ' + name + '<br>Email: ' + email;
                document.getElementById('result').style.display = 'block';
                document.getElementById('status').innerText = 'Form submitted successfully';
            } else {
                document.getElementById('status').innerText = 'Please enter a name';
            }
        };
        
        document.getElementById('clearBtn').onclick = function() {
            document.getElementById('nameBox').value = '';
            document.getElementById('emailBox').value = '';
            document.getElementById('result').style.display = 'none';
            document.getElementById('status').innerText = 'Form cleared';
        };
    </script>
</body>
</html>