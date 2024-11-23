# Online Auction Fraud Detection System

## Overview

**Online Auction Fraud Detection** is a system designed to address the growing challenges of fraud in online auction platforms. By integrating database-driven fraud detection rules, real-time monitoring, and a user-friendly interface, the system ensures a secure and reliable environment for buyers, sellers, and administrators.

This project was developed as part of our **Bachelor's major project** in **Computer Science and Engineering** during the academic years **2015-2019**. It was completed under the guidance of **Mrs. K. Suparna (Assistant Professor)** at **Kommuri Pratap Reddy Institute of Technology**, affiliated with **Jawaharlal Nehru Technological University, Hyderabad (JNTUH)**.


### Our Team:
The project was a collective effort by the following team members:
- [**Shaik Abdul Sahil Majeed**](https://www.linkedin.com/in/shaik-abdul-majeed-sahil-410b51151/)
- [**Nisha Kumari Bidla**](https://www.linkedin.com/in/nisha-kumari-bidla-850255146/)
- [**S. Sai Shravya**](https://www.linkedin.com/in/saishravyasimhadri/)

## Features
- Proactive fraud detection using database rules and online modeling.
- User management (buyers, sellers, and admins) with role-specific features.
- Real-time analysis of auction activities.
- Scalable and modular design for integrating additional fraud detection algorithms.

## Technologies Used
- **Frontend**: JSP, HTML, CSS
- **Backend**: Java, SQL
- **Database**: MySQL
- **Server**: Apache Tomcat
- **Libraries**: JAR files for database connectivity and email activation

## Folder Structure
```plaintext
Online-Auction-Fraud-Detection/
├── docs/                   # Documentation files
│   ├── Abstract Online Modeling.doc
│   ├── Complete Project report.pdf
│   ├── SYSTEM DESIGN.doc
│   ├── ...
├── resources/              # Supporting materials
│   ├── logo-blank.jpg
│   ├── logoPSD.psd
│   ├── product/
│   ├── productS/
│   ├── OAFD.pptx
├── src/                    # Source code and assets
│   ├── jsp/                # JSP files
│   │   ├── admin_log.jsp
│   │   ├── user_log.jsp
│   │   ├── ...
│   ├── css/                # CSS files
│   │   ├── style.css
│   ├── html/               # HTML files
│   │   ├── index.html
│   ├── images/             # Images
│   │   ├── bar_gree.jpg
│   │   ├── login.png
│   │   ├── ...
│   ├── database/           # SQL files
│   │   ├── auction_fraud.sql
│   │   ├── db-aut.sql
│   ├── WEB-INF/            # Deployment configuration
│   │   ├── web.xml
│   │   ├── META-INF/
│   │   │   ├── MANIFEST.MF
│   │   ├── classes/
│   │   ├── lib/
│   │       ├── activation.jar
│   │       ├── mysql.jar
│   │       ├── ...

```
## How to Run

### Step 1: Clone the Repository

Run the following commands in your terminal:
```bash
git clone https://github.com/<nishabidla>/Online-Auction-Fraud-Detection.git
cd Online-Auction-Fraud-Detection
```
### Step 2: Set Up the Database

- Open MySQL or any database tool.
- Import the `auction_fraud.sql` file from the `src/database/` folder:
```
mysql -u root -p < auction_fraud.sql
```
- Update the database connection in the ```WEB-INF/classes/databasecon.class``` file:
```
String url = "jdbc:mysql://localhost:3306/your_database_name";
String user = "root";
String password = "your_password";
```

### Step 3: Deploy the Application

1. **Install and set up Apache Tomcat.**

2. **Copy the required deployment files into Tomcat's `webapps` directory:**
   - From your project folder, navigate to `src` and copy the contents of `WEB-INF` into:
     ```bash
     /path/to/tomcat/webapps/Online-Auction-Fraud-Detection/WEB-INF
     ```
   - Place JSP files from `src/jsp/` into the root of `Online-Auction-Fraud-Detection`.
   - Place CSS files in a `css/` subdirectory and images in an `images/` subdirectory.

3. **Final Tomcat structure:**
   ```plaintext
   webapps/
   ├── Online-Auction-Fraud-Detection/
   │   ├── admin_log.jsp
   │   ├── user_log.jsp
   │   ├── css/
   │   │   ├── style.css
   │   ├── images/
   │   │   ├── bar_gree.jpg
   │   │   ├── login.png
   │   ├── WEB-INF/
   │   │   ├── web.xml
   │   │   ├── META-INF/
   │   │   │   ├── MANIFEST.MF
   │   │   ├── lib/
   │   │       ├── mysql.jar
  
  
### Step 4: Run the Application

1. **Admin Login:**

- Use admin credentials to manage users and auction activity.
- Default credentials (if applicable):
```
Username: admin
Password: admin123
```
2. **Buyer/Seller:**
- Register and log in as a buyer or seller to interact with the auction system.

### Step 5: Debug and Verify

1. **Verify Database Connection:**

- Ensure your database is running and the connection details in `WEB-INF/classes/databasecon.class` are correct.
- Check for successful connection logs in Tomcat.
2. **Test Key Features:**

- Admin:
   - Add and manage users.
   - View and handle complaints or fraudulent activities.
     
- Buyer/Seller:
   - Browse auctions and place bids.
   - Submit complaints (if needed).

3. **Fix Errors (if any):**

- Use Tomcat logs (logs/catalina.out) to identify and resolve issues.
  
### Contribution
1. **Fork the repository.**
2. **Create a feature branch:**
```bash
git checkout -b feature-name
```
3. **Commit your changes:**
```bash
git commit -m "Add feature XYZ"
```
4. **Push and create a pull request:**
```bash
git push origin feature-name
```
### License
This project is licensed under the MIT License.

### Contact

If you have any questions, feel free to reach out:

- **Email**: [nishabidla0817@gmail.com](nishabidla0817@gmail.com)
- **GitHub Profile**: [nishabidla](https://github.com/nishabidla)
- **LinkedIn Profile**: [nisha_bidla](https://www.linkedin.com/in/nisha-kumari-bidla-850255146/)







