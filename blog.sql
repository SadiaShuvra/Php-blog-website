DROP DATABASE blog;
CREATE DATABASE blog;
USE Blog;
CREATE TABLE tbl_admin (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);
INSERT INTO tbl_admin (name, email, password)
VALUES ('sadia', 'sadia@gmail.com', '123456');
CREATE TABLE tbl_posts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    post_header VARCHAR(255),
    post_title VARCHAR(255),
    post_content TEXT,
    post_author VARCHAR(100),
    post_slug VARCHAR(255),
    post_date DATETIME DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO tbl_posts 
(post_header, post_title, post_content, post_author, post_slug) 
VALUES

('bestphp.jfif',
'PHP Best Practices Every Developer Should Follow',
'Writing clean and maintainable PHP code is very important for long term projects. Many beginners start writing PHP without following proper structure, which later makes the application difficult to maintain. One of the most important best practices is separating logic from presentation using MVC structure.

Always validate and sanitize user input before processing it. Never trust data coming from forms or URLs. For example, instead of directly using GET values, you should validate them properly.

Example of safe input handling:

$id = intval($_GET["id"]);

Another important rule is to always use prepared statements to prevent SQL injection. Avoid writing queries directly with user input. Use meaningful variable names and keep your code organized inside functions.

Also, error reporting should be enabled during development so that bugs can be fixed early. Finally, always comment your code so that other developers can easily understand your logic.',

'Admin',
'php-best-practices'),


('mysql-indexing.jpg',
'Understanding MySQL Indexing for Faster Queries',
'Database performance is one of the most critical aspects of web development. When tables grow large, queries start taking more time unless proper indexing is implemented. Indexes help MySQL locate data quickly without scanning the entire table.

For example, imagine searching a book in a library without an index. It would take much longer compared to using a catalog system.

You can create an index using the following command:

CREATE INDEX idx_title ON tbl_posts(post_title);

Indexes should be used carefully because too many indexes can slow down INSERT operations. The best practice is to create indexes only on columns that are frequently used in WHERE conditions or JOIN operations.

Also, avoid using SELECT * in large tables. Instead, select only the required columns. This reduces memory usage and improves performance significantly.',

'Admin',
'mysql-indexing-guide'),


('javascript-async.jpg',
'Understanding Async JavaScript for Beginners',
'Asynchronous programming is one of the most powerful features of JavaScript. It allows code to run without blocking the main execution thread. This is especially useful when working with APIs, file loading, or timers.

One common mistake beginners make is not understanding callbacks and promises. A callback function runs after a task is completed.

Example:

setTimeout(function(){
    console.log("Task completed");
}, 2000);

Modern JavaScript uses Promises and async/await syntax to make asynchronous code easier to read.

Example using async/await:

async function loadData() {
    let response = await fetch("api/data");
    let data = await response.json();
    console.log(data);
}

Understanding async programming helps developers build fast and responsive applications.',

'Admin',
'async-javascript-guide'),


('web-security-advanced.jpg',
'Advanced Web Security Tips for Developers',
'Web security is a major concern in modern applications. Hackers constantly look for vulnerabilities such as SQL injection, cross site scripting, and session hijacking. Developers must follow strict security practices to protect user data.

Always hash passwords before storing them in databases. Never store passwords in plain text.

Example of password hashing in PHP:

$password = password_hash("mypassword", PASSWORD_DEFAULT);

You should also use HTTPS to encrypt communication between the client and server. Input validation is another critical step. All user inputs must be filtered and sanitized before processing.

Another important practice is implementing proper session management. Regenerate session IDs after login to prevent session fixation attacks.

Security should never be treated as an optional feature; it must be integrated from the beginning of development.',

'Admin',
'advanced-web-security'),


('git-workflow.jpg',
'Git Workflow Explained for Team Projects',
'Git is an essential tool for managing source code in modern development environments. It allows multiple developers to work on the same project efficiently without overwriting each other’s work.

A common workflow used in teams is the feature branch workflow. Developers create separate branches for new features, and once completed, they merge them into the main branch.

Basic Git commands include:

git init
git add .
git commit -m "Initial commit"

Using meaningful commit messages helps team members understand what changes were made. Pulling updates regularly prevents merge conflicts.

Git also provides version history, allowing developers to revert changes if something goes wrong. Learning Git workflow is crucial for every developer who wants to work in a professional environment.',

'Admin',
'git-team-workflow');