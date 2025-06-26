# 📚 Borrow & Return Book System – Installation Guide

This project is a simple PHP-based system for borrowing and returning books, suitable for library use.

---

### ✅ Step 1: Download the Project

Visit the GitHub repository:  
[https://github.com/heikaliskandar/borrow-return-book](https://github.com/heikaliskandar/borrow-return-book)

1. Click the green **“Code”** button  
2. Select **“Download ZIP”**  
3. After download completes, **extract** the ZIP file

---

### ✅ Step 2: Move to XAMPP `htdocs` Folder

Copy the extracted folder (e.g., `borrow-return-book`) to the following path:


Your final path should look like:


---

### ✅ Step 3: Import the Database

1. Open **XAMPP Control Panel**
2. Start **Apache** and **MySQL**
3. Open your browser and go to:

http://localhost/phpmyadmin

4. Click the **Import** tab  
5. Choose the file `library.sql` from the project folder  
6. Click **Go** to import

---

### ✅ Step 4: Check `connectdb.php`

Navigate to:


Make sure the content is as below:

```php
<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "library";
?>

http://localhost/borrow-return-book


Let me know if you'd like to add screenshots, badges, or a "Features" section as well.

