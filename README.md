# Online Auction Fraud Detection System

## Overview
This project is a proactive fraud detection system for online auctions. It leverages a combination of machine learning models, data-driven insights, and real-time moderation techniques to identify and mitigate fraudulent activities in auction platforms. 

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
git clone https://github.com/<your-username>/Online-Auction-Fraud-Detection.git
cd Online-Auction-Fraud-Detection
```
### Step 2: Set Up the Database

1. Open MySQL or any database tool.
2. Import the ```auction_fraud.sql``` file from the ```src/database/``` folder:
```
mysql -u root -p < auction_fraud.sql
```
3. Update the database connection in the ```WEB-INF/classes/databasecon.class``` file:
```
String url = "jdbc:mysql://localhost:3306/your_database_name";
String user = "root";
String password = "your_password";
```
### Step 3: Deploy the Application
1. Install and set up **Apache Tomcat**.
2. Copy the Online-Auction-Fraud-Detection folder to Tomcat's webapps directory.
Start the Tomcat server and access the application in your browser at:
plaintext
Copy code
http://localhost:8080/Online-Auction-Fraud-Detection
Step 4: Run the Application
Admin Login:
Use the admin credentials to manage users and monitor fraud activity.
Buyer/Seller:
Sign up as a buyer or seller and interact with the auction.
Contribution
Fork the repository.
Create a feature branch:
bash
Copy code
git checkout -b feature-name
Commit your changes:
bash
Copy code
git commit -m "Add feature XYZ"
Push and create a pull request:
bash
Copy code
git push origin feature-name
License
This project is licensed under the MIT License.

Contact
If you have any questions, reach out at [Your Email/Username].





