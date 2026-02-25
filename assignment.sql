/*CREATE TABLE tbl_admin (
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


CREATE TABLE tbl_contact (
    id INT AUTO_INCREMENT PRIMARY KEY,
    sender_name VARCHAR(100),
    sender_phone VARCHAR(20),
    sender_email VARCHAR(150),
    message_content TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


INSERT INTO tbl_contact 
(sender_name, sender_phone, sender_email, message_content) 
VALUES
('Rahim Ahmed', '01712345678', 'rahim@gmail.com', 'Hello admin, I really like your blog. The PHP tutorials are very helpful for beginners. Please keep posting more content about Laravel framework and real world projects.'),
('Sadia Khan', '01898765432', 'sadia@yahoo.com', 'I have a question regarding MySQL indexing. Can you write a detailed article about composite indexes and how they improve query performance?'),
('Tanvir Hasan', '01655544433', 'tanvir@mail.com', 'Your JavaScript async article was very clear and easy to understand. I would love to see more posts about React and modern frontend development.');


INSERT INTO tbl_posts 
(post_header, post_title, post_content, post_author, post_slug) 
VALUES

('bestphp.jfif',
'PHP Best Practices Every Developer Should Follow',
'Writing clean and maintainable PHP code is very important for long term projects. Many beginners start writing PHP without following proper structure, which later makes the application difficult to maintain. One of the most important best practices is separating logic from presentation using MVC structure.

Always validate and sanitize user input before processing it. Never trust data coming from forms or URLs. For example:

$id = intval($_GET["id"]);

Another important rule is to always use prepared statements to prevent SQL injection. Avoid writing queries directly with user input. Use meaningful variable names and keep your code organized inside functions.

Error reporting should be enabled during development so bugs can be fixed early.',
'Admin',
'php-best-practices'),

('mysql-indexing.jpg',
'Understanding MySQL Indexing for Faster Queries',
'Database performance is critical for large applications. Indexing helps MySQL locate data faster without scanning entire tables.

Example:

CREATE INDEX idx_title ON tbl_posts(post_title);

Indexes should only be used on frequently searched columns. Too many indexes can slow down insert operations.

Always avoid SELECT * in large tables and select only required columns.',
'Admin',
'mysql-indexing-guide'),

('javascript-async.jpg',
'Understanding Async JavaScript for Beginners',
'Async programming allows JavaScript to run tasks without blocking execution.

Example:

setTimeout(function(){
  console.log("Done");
}, 2000);

Modern JS uses async/await:

async function loadData(){
  let res = await fetch("api");
}

This helps create fast and responsive applications.',
'Admin',
'async-javascript-guide');*/

