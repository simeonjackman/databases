# SQLite Web Application with Node.js Backend

## Overview
This project is a web application that displays data stored in an SQLite database.

---

## Features
- Display user data in a table format.
- Create new user accounts through the frontend.
- Store and display fights between players.
- Learn the basics of SQL and databases.

---

## Technologies Used
- **Frontend**: HTML, CSS, JavaScript (Fetch API for communication with the backend).
- **Backend**: Node.js (Express.js framework).
- **Database**: SQLite (Lightweight SQL database).

---

## How It Works
1. **Frontend**:
   - Users interact with the application through a webpage.
   - The data is displayed in tables, and forms are available for adding new users.
2. **Backend**:
   - The backend handles requests from the frontend and interacts with the SQLite database.
   - For example, when you create a new user, the backend stores that information in the database.
3. **Database**:
   - The SQLite database stores all the data, including users and fights.

---

## How to Set Up the Project

### Prerequisites
- Install **Node.js** (https://docs.npmjs.com/downloading-and-installing-node-js-and-npm).

### Steps
1. **Clone the Repository**:
   ```bash
   git clone <repository-url>
   cd <repository-folder>
   ```
2. **Install Dependencies**:
   ```bash
   npm install -r requirement.txt
   ```
3. **Set Up the Database**:
   - Open the `datenbank.db` file and run the init.sql query.

4. **Start the Backend Server**:
   ```bash
   node server.js
   ```
   The backend will run on `http://localhost:3000`.

5. **Open the Frontend**:
   - Open the `index.html` file in your browser.
   - The frontend communicates with the backend to display and manage data.

---

## Resources
- [Node.js Documentation](https://nodejs.org/en/docs/)
- [SQLite Documentation](https://www.sqlite.org/docs.html)
- [HTML and CSS Tutorials](https://www.w3schools.com/)
- [SQL Tutorials](https://www.w3schools.com/sql/default.asp)