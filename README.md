Step 1: Download the Project
Visit the GitHub repository:
https://github.com/heikaliskandar/borrow-return-book

Click the green “Code” button.

Select “Download ZIP”.

After download completes, extract the ZIP file.

Step 2: Move to XAMPP htdocs Folder
Copy the extracted folder (e.g., borrow-return-book) to:
C:\xampp\htdocs

Your final path should look like:
C:\xampp\htdocs\borrow-return-book

Step 3: Import the Database
Open XAMPP Control Panel, then:

Start Apache
Start MySQL

Go to your browser and open:
http://localhost/phpmyadmin


Step 4: Check connectdb.php
Open the file:

C:\xampp\htdocs\borrow-return-book\connectdb.php
Make sure it looks like this:


$servername = "localhost";
$username = "root";
$password = "";
$dbname = "library";

Step 5: Run the Project
Open browser and go to:

http://localhost/borrow-return-book
