<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>HIT DevOps Final Project - Student Portal</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 40px;
            background-color: #f5f5f5;
        }
        .container {
            max-width: 800px;
            margin: 0 auto;
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        .header {
            text-align: center;
            color: #2c3e50;
            margin-bottom: 30px;
        }
        .form-section {
            background-color: #ecf0f1;
            padding: 20px;
            border-radius: 5px;
            margin: 20px 0;
        }
        .input-group {
            margin: 15px 0;
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: #34495e;
        }
        input[type="text"], input[type="email"] {
            width: 100%;
            padding: 10px;
            border: 2px solid #bdc3c7;
            border-radius: 4px;
            font-size: 16px;
            box-sizing: border-box;
        }
        input[type="text"]:focus, input[type="email"]:focus {
            border-color: #3498db;
            outline: none;
        }
        .btn {
            background-color: #3498db;
            color: white;
            padding: 12px 25px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            margin: 10px 5px;
            text-decoration: none;
            display: inline-block;
        }
        .btn:hover {
            background-color: #2980b9;
        }
        .btn-secondary {
            background-color: #95a5a6;
        }
        .btn-secondary:hover {
            background-color: #7f8c8d;
        }
        .result {
            background-color: #d5f4e6;
            border: 1px solid #27ae60;
            padding: 15px;
            border-radius: 5px;
            margin: 20px 0;
            display: none;
        }
        .navigation {
            text-align: center;
            margin: 30px 0;
        }
        .navigation a {
            margin: 0 15px;
            color: #3498db;
            text-decoration: none;
            font-weight: bold;
        }
        .navigation a:hover {
            text-decoration: underline;
        }
        .footer {
            text-align: center;
            margin-top: 40px;
            color: #7f8c8d;
            border-top: 1px solid #ecf0f1;
            padding-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>🎓 HIT DevOps Student Portal</h1>
            <p>Final Project - CI/CD Pipeline Demo Application</p>
        </div>

        <div class="navigation">
            <a href="#" id="homeLink">🏠 Home</a>
            <a href="#" id="aboutLink">ℹ️ About</a>
            <a href="#" id="contactLink">📧 Contact</a>
            <a href="#" id="githubLink">🐙 GitHub</a>
        </div>

        <div class="form-section">
            <h2>📝 Student Registration Form</h2>
            <div class="input-group">
                <label for="studentName">Student Name: *</label>
                <input type="text" id="studentName" name="studentName" 
                       placeholder="Enter your full name">
            </div>
            
            <div class="input-group">
                <label for="studentEmail">Email Address:</label>
                <input type="email" id="studentEmail" name="studentEmail" 
                       placeholder="Enter your email address">
            </div>
            
            <button type="button" class="btn" id="submitBtn">🚀 Submit Registration</button>
            <button type="button" class="btn btn-secondary" id="clearBtn">🔄 Clear Form</button>
            
            <div id="result" class="result"></div>
        </div>

        <div class="form-section">
            <h2>🔧 DevOps Tools & Techniques</h2>
            <p>This application demonstrates:</p>
            <ul>
                <li><strong>Git & GitHub:</strong> Source code version control</li>
                <li><strong>Jenkins:</strong> CI/CD pipeline automation</li>
                <li><strong>Tomcat:</strong> Production deployment environment</li>
                <li><strong>Selenium IDE:</strong> Automated testing</li>
                <li><strong>Gatling:</strong> Performance and load testing</li>
                <li><strong>Monitoring:</strong> Application availability tracking</li>
            </ul>
            
            <p>
                <a href="#" class="btn" id="pipelineBtn">⚙️ Trigger CI/CD Pipeline</a>
                <a href="#" class="btn btn-secondary" id="testBtn">🧪 Run Tests</a>
            </p>
        </div>

        <div class="footer">
            <p>&copy; 2025 HIT DevOps Course - Semester B</p>
            <p>Lecturer: Moshe Mamia | Student Project Submission</p>
            <p id="statusMessage">Application Status: ✅ Running Successfully</p>
        </div>
    </div>

    <script>
        // Handle navigation links without page refresh
        document.getElementById('homeLink').onclick = function(e) {
            e.preventDefault();
            document.getElementById('statusMessage').innerText = 'Navigation: Home section accessed';
        };
        
        document.getElementById('aboutLink').onclick = function(e) {
            e.preventDefault();
            document.getElementById('statusMessage').innerText = 'Navigation: About section accessed';
        };
        
        document.getElementById('contactLink').onclick = function(e) {
            e.preventDefault();
            document.getElementById('statusMessage').innerText = 'Navigation: Contact section accessed';
        };
        
        document.getElementById('githubLink').onclick = function(e) {
            e.preventDefault();
            document.getElementById('statusMessage').innerText = 'Navigation: GitHub section accessed';
        };
        
        // Handle form submission without page refresh
        document.getElementById('submitBtn').onclick = function() {
            var name = document.getElementById('studentName').value;
            var email = document.getElementById('studentEmail').value;
            
            if (name.trim()) {
                var currentTime = new Date().toLocaleString();
                document.getElementById('result').innerHTML = 
                    '<h3>✅ Welcome Message Generated!</h3>' +
                    '<p><strong>Student Name:</strong> ' + name + '</p>' +
                    '<p><strong>Email:</strong> ' + (email || 'Not provided') + '</p>' +
                    '<p><strong>Timestamp:</strong> ' + currentTime + '</p>';
                document.getElementById('result').style.display = 'block';
                document.getElementById('statusMessage').innerText = 'Registration submitted successfully! ✅';
            } else {
                document.getElementById('statusMessage').innerText = 'Please enter your name';
            }
        };
        
        // Handle form clearing
        document.getElementById('clearBtn').onclick = function() {
            document.getElementById('studentName').value = '';
            document.getElementById('studentEmail').value = '';
            document.getElementById('result').style.display = 'none';
            document.getElementById('statusMessage').innerText = 'Form cleared - Ready for new input';
        };
        
        // Handle DevOps action buttons
        document.getElementById('pipelineBtn').onclick = function(e) {
            e.preventDefault();
            document.getElementById('statusMessage').innerText = 'CI/CD Pipeline triggered! ⚙️';
        };
        
        document.getElementById('testBtn').onclick = function(e) {
            e.preventDefault();
            document.getElementById('statusMessage').innerText = 'Test suite executed successfully! 🧪';
        };
    </script>
</body>
</html>