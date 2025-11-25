# Module-I: Basics of HTML - Part 4

## Semantic Elements and Navigation Bar

---

## Table of Contents

1. [Introduction to Semantic HTML](#introduction-to-semantic-html)
2. [Structural Semantic Elements](#structural-semantic-elements)
3. [Text-Level Semantic Elements](#text-level-semantic-elements)
4. [Div vs Span](#div-vs-span)
5. [Creating Navigation Bars](#creating-navigation-bars)
6. [Complete Website Layout](#complete-website-layout)
7. [Practical Examples](#practical-examples)

---

## 1. Introduction to Semantic HTML

### What is Semantic HTML?

**Semantic HTML** uses HTML elements that clearly describe their meaning and purpose to both the browser and the developer.

### Non-Semantic vs Semantic Elements:

**Non-Semantic (No meaning):**

```html
<div>Header Content</div>
<span>Important text</span>
```

**Semantic (Clear meaning):**

```html
<header>Header Content</header>
<strong>Important text</strong>
```

### Benefits of Semantic HTML:

✅ **Accessibility** - Screen readers understand content structure  
✅ **SEO** - Search engines better understand your content  
✅ **Maintainability** - Code is easier to read and maintain  
✅ **Consistency** - Standard meaning across websites  
✅ **Future-proof** - Works better with new technologies

### Common Semantic Elements:

| Element     | Purpose                |
| ----------- | ---------------------- |
| `<header>`  | Header section         |
| `<nav>`     | Navigation links       |
| `<main>`    | Main content           |
| `<section>` | Thematic grouping      |
| `<article>` | Self-contained content |
| `<aside>`   | Sidebar content        |
| `<footer>`  | Footer section         |
| `<figure>`  | Media with caption     |
| `<time>`    | Date/time              |
| `<mark>`    | Highlighted text       |

---

## 2. Structural Semantic Elements

### 2.1 Header (`<header>`)

Contains introductory content or navigation. Can be used multiple times in a document.

**Syntax:**

```html
<header>
	<h1>Website Title</h1>
	<nav>Navigation menu</nav>
</header>
```

**Example:**

```html
<!DOCTYPE html>
<html>
	<head>
		<title>Header Example</title>
		<style>
			header {
				background-color: #2c3e50;
				color: white;
				padding: 20px;
				text-align: center;
			}
			header h1 {
				margin: 0;
			}
			header p {
				margin: 10px 0 0 0;
				font-size: 0.9em;
			}
		</style>
	</head>
	<body>
		<!-- Page Header -->
		<header>
			<h1>Amity University Patna</h1>
			<p>Excellence in Education | Innovation in Learning</p>
		</header>

		<!-- Article Header -->
		<article>
			<header>
				<h2>Web Development Course</h2>
				<p>Published on <time datetime="2025-11-15">November 15, 2025</time></p>
			</header>
			<p>Article content goes here...</p>
		</article>
	</body>
</html>
```

---

### 2.2 Navigation (`<nav>`)

Contains major navigation links. Not for all links, only main navigation.

**Example:**

```html
<!DOCTYPE html>
<html>
	<head>
		<title>Navigation Example</title>
		<style>
			nav {
				background-color: #34495e;
				padding: 15px;
			}
			nav ul {
				list-style-type: none;
				margin: 0;
				padding: 0;
				display: flex;
			}
			nav li {
				margin-right: 20px;
			}
			nav a {
				color: white;
				text-decoration: none;
				padding: 10px 15px;
				display: block;
			}
			nav a:hover {
				background-color: #2c3e50;
				border-radius: 5px;
			}
		</style>
	</head>
	<body>
		<nav>
			<ul>
				<li><a href="#home">Home</a></li>
				<li><a href="#about">About</a></li>
				<li><a href="#courses">Courses</a></li>
				<li><a href="#admissions">Admissions</a></li>
				<li><a href="#contact">Contact</a></li>
			</ul>
		</nav>
	</body>
</html>
```

---

### 2.3 Main (`<main>`)

Represents the main content of the document. Only **one** `<main>` per page.

**Example:**

```html
<!DOCTYPE html>
<html>
	<head>
		<title>Main Element</title>
		<style>
			main {
				max-width: 1200px;
				margin: 20px auto;
				padding: 20px;
				background-color: white;
			}
		</style>
	</head>
	<body>
		<header>
			<h1>My Website</h1>
		</header>

		<nav>
			<!-- Navigation links -->
		</nav>

		<main>
			<h2>Welcome to Our Website</h2>
			<p>This is the main content area of the page.</p>

			<article>
				<h3>Featured Article</h3>
				<p>Article content...</p>
			</article>
		</main>

		<footer>
			<p>&copy; 2025 My Website</p>
		</footer>
	</body>
</html>
```

---

### 2.4 Section (`<section>`)

Represents a thematic grouping of content, typically with a heading.

**When to use `<section>`:**

- Content that naturally fits under a heading
- Dividing content into logical parts
- Chapters, tabs, or numbered sections

**Example:**

```html
<!DOCTYPE html>
<html>
	<head>
		<title>Section Example</title>
		<style>
			section {
				margin: 30px 0;
				padding: 20px;
				background-color: #f9f9f9;
				border-left: 4px solid #3498db;
			}
			section h2 {
				color: #2c3e50;
				margin-top: 0;
			}
		</style>
	</head>
	<body>
		<h1>Course Syllabus</h1>

		<section id="module1">
			<h2>Module 1: HTML Basics</h2>
			<p>Introduction to HTML, tags, elements, and document structure.</p>
			<ul>
				<li>HTML Syntax</li>
				<li>Basic Tags</li>
				<li>Forms and Tables</li>
			</ul>
		</section>

		<section id="module2">
			<h2>Module 2: CSS Styling</h2>
			<p>Learn to style web pages using CSS.</p>
			<ul>
				<li>Selectors</li>
				<li>Box Model</li>
				<li>Responsive Design</li>
			</ul>
		</section>

		<section id="module3">
			<h2>Module 3: JavaScript</h2>
			<p>Add interactivity to your web pages.</p>
			<ul>
				<li>Variables and Functions</li>
				<li>DOM Manipulation</li>
				<li>Events</li>
			</ul>
		</section>
	</body>
</html>
```

---

### 2.5 Article (`<article>`)

Represents independent, self-contained content that could be distributed separately.

**When to use `<article>`:**

- Blog posts
- News articles
- Forum posts
- Comments
- Product cards

**Example:**

```html
<!DOCTYPE html>
<html>
	<head>
		<title>Article Example</title>
		<style>
			article {
				margin: 20px 0;
				padding: 20px;
				border: 1px solid #ddd;
				border-radius: 8px;
				background-color: white;
			}
			article header {
				border-bottom: 2px solid #3498db;
				padding-bottom: 10px;
				margin-bottom: 15px;
			}
			article h2 {
				margin: 0 0 10px 0;
				color: #2c3e50;
			}
			.meta {
				color: #7f8c8d;
				font-size: 0.9em;
			}
			article footer {
				margin-top: 15px;
				padding-top: 15px;
				border-top: 1px solid #eee;
				color: #95a5a6;
				font-size: 0.9em;
			}
		</style>
	</head>
	<body>
		<h1>Latest Blog Posts</h1>

		<article>
			<header>
				<h2>Understanding HTML5 Semantic Elements</h2>
				<p class="meta">
					Posted by <strong>Prof. Kumar</strong> on
					<time datetime="2025-11-15">November 15, 2025</time>
				</p>
			</header>

			<p>
				HTML5 introduced semantic elements that provide meaning to web content.
				These elements help in creating a well-structured, accessible website...
			</p>

			<p>
				Semantic elements include header, nav, main, section, article, aside,
				and footer. Each serves a specific purpose...
			</p>

			<footer>
				<p>Tags: HTML, Web Development, Semantic HTML</p>
			</footer>
		</article>

		<article>
			<header>
				<h2>CSS Grid vs Flexbox</h2>
				<p class="meta">
					Posted by <strong>Prof. Sharma</strong> on
					<time datetime="2025-11-10">November 10, 2025</time>
				</p>
			</header>

			<p>
				Both CSS Grid and Flexbox are powerful layout systems, but they serve
				different purposes. Let's explore when to use each...
			</p>

			<footer>
				<p>Tags: CSS, Layout, Grid, Flexbox</p>
			</footer>
		</article>
	</body>
</html>
```

---

### 2.6 Aside (`<aside>`)

Contains content tangentially related to the main content (sidebars, pull quotes, advertisements).

**Example:**

```html
<!DOCTYPE html>
<html>
	<head>
		<title>Aside Example</title>
		<style>
			body {
				display: flex;
				gap: 20px;
				margin: 20px;
			}
			main {
				flex: 3;
			}
			aside {
				flex: 1;
				background-color: #ecf0f1;
				padding: 20px;
				border-radius: 8px;
			}
			aside h3 {
				margin-top: 0;
				color: #2c3e50;
			}
			aside ul {
				list-style-type: none;
				padding: 0;
			}
			aside li {
				margin: 10px 0;
				padding: 10px;
				background-color: white;
				border-radius: 4px;
			}
		</style>
	</head>
	<body>
		<main>
			<h1>Web Development Tutorial</h1>
			<p>
				This tutorial covers the basics of web development including HTML, CSS,
				and JavaScript. You'll learn how to create responsive, modern
				websites...
			</p>

			<h2>Chapter 1: HTML Fundamentals</h2>
			<p>
				HTML is the foundation of all web pages. It provides the structure...
			</p>
		</main>

		<aside>
			<h3>Related Articles</h3>
			<ul>
				<li><a href="#">Introduction to CSS</a></li>
				<li><a href="#">JavaScript Basics</a></li>
				<li><a href="#">Responsive Design Tips</a></li>
			</ul>

			<h3>Popular Tags</h3>
			<ul>
				<li>HTML5</li>
				<li>CSS3</li>
				<li>JavaScript</li>
				<li>Bootstrap</li>
			</ul>

			<h3>Quick Links</h3>
			<ul>
				<li><a href="#">Documentation</a></li>
				<li><a href="#">Resources</a></li>
				<li><a href="#">Downloads</a></li>
			</ul>
		</aside>
	</body>
</html>
```

---

### 2.7 Footer (`<footer>`)

Contains footer information for its nearest sectioning content or body.

**Example:**

```html
<!DOCTYPE html>
<html>
	<head>
		<title>Footer Example</title>
		<style>
			body {
				margin: 0;
				display: flex;
				flex-direction: column;
				min-height: 100vh;
			}
			main {
				flex: 1;
				padding: 20px;
			}
			footer {
				background-color: #2c3e50;
				color: white;
				padding: 40px 20px 20px 20px;
				margin-top: auto;
			}
			.footer-content {
				max-width: 1200px;
				margin: 0 auto;
				display: flex;
				justify-content: space-between;
				flex-wrap: wrap;
				gap: 30px;
			}
			.footer-section {
				flex: 1;
				min-width: 200px;
			}
			.footer-section h3 {
				margin-top: 0;
				color: #3498db;
			}
			.footer-section ul {
				list-style-type: none;
				padding: 0;
			}
			.footer-section li {
				margin: 8px 0;
			}
			.footer-section a {
				color: #ecf0f1;
				text-decoration: none;
			}
			.footer-section a:hover {
				color: #3498db;
			}
			.footer-bottom {
				text-align: center;
				margin-top: 30px;
				padding-top: 20px;
				border-top: 1px solid #34495e;
			}
		</style>
	</head>
	<body>
		<main>
			<h1>Page Content</h1>
			<p>Main content of the page goes here...</p>
		</main>

		<footer>
			<div class="footer-content">
				<div class="footer-section">
					<h3>About Us</h3>
					<p>
						Amity University Patna is committed to providing quality education
						and fostering innovation.
					</p>
				</div>

				<div class="footer-section">
					<h3>Quick Links</h3>
					<ul>
						<li><a href="#">Home</a></li>
						<li><a href="#">Courses</a></li>
						<li><a href="#">Admissions</a></li>
						<li><a href="#">Faculty</a></li>
						<li><a href="#">Contact</a></li>
					</ul>
				</div>

				<div class="footer-section">
					<h3>Contact Info</h3>
					<ul>
						<li>📍 Rupaspur, Patna, Bihar</li>
						<li>📞 +91-612-2441061</li>
						<li>✉️ info@amitypatna.edu</li>
						<li>🌐 www.amitypatna.edu</li>
					</ul>
				</div>

				<div class="footer-section">
					<h3>Follow Us</h3>
					<ul>
						<li><a href="#">Facebook</a></li>
						<li><a href="#">Twitter</a></li>
						<li><a href="#">LinkedIn</a></li>
						<li><a href="#">Instagram</a></li>
					</ul>
				</div>
			</div>

			<div class="footer-bottom">
				<p>&copy; 2025 Amity University Patna. All Rights Reserved.</p>
			</div>
		</footer>
	</body>
</html>
```

---

### 2.8 Figure and Figcaption

Used for images, diagrams, code listings with captions.

**Example:**

```html
<!DOCTYPE html>
<html>
	<head>
		<title>Figure Example</title>
		<style>
			figure {
				margin: 20px 0;
				padding: 10px;
				border: 1px solid #ddd;
				border-radius: 8px;
				text-align: center;
				background-color: #f9f9f9;
			}
			figure img {
				max-width: 100%;
				height: auto;
				border-radius: 4px;
			}
			figcaption {
				margin-top: 10px;
				font-style: italic;
				color: #555;
			}
		</style>
	</head>
	<body>
		<article>
			<h2>HTML Semantic Structure</h2>
			<p>
				The following diagram shows the structure of semantic HTML elements:
			</p>

			<figure>
				<img
					src="semantic-html-structure.png"
					alt="HTML5 Semantic Structure"
					width="600"
				/>
				<figcaption>Figure 1: HTML5 Semantic Structure Layout</figcaption>
			</figure>

			<p>
				As shown in the figure above, semantic elements create a clear
				structure...
			</p>
		</article>
	</body>
</html>
```

---

## 3. Text-Level Semantic Elements

### Common Text Semantic Elements:

```html
<!DOCTYPE html>
<html>
	<head>
		<title>Text Semantic Elements</title>
		<style>
			.example {
				margin: 15px 0;
				padding: 15px;
				background-color: #f9f9f9;
				border-left: 4px solid #3498db;
			}
		</style>
	</head>
	<body>
		<h2>Text-Level Semantic Elements</h2>

		<div class="example">
			<p>
				<strong>&lt;strong&gt;</strong> - <strong>Important text</strong> (bold)
			</p>
		</div>

		<div class="example">
			<p><strong>&lt;em&gt;</strong> - <em>Emphasized text</em> (italic)</p>
		</div>

		<div class="example">
			<p><strong>&lt;mark&gt;</strong> - <mark>Highlighted text</mark></p>
		</div>

		<div class="example">
			<p>
				<strong>&lt;small&gt;</strong> -
				<small>Fine print or side comments</small>
			</p>
		</div>

		<div class="example">
			<p><strong>&lt;del&gt;</strong> - <del>Deleted text</del></p>
		</div>

		<div class="example">
			<p><strong>&lt;ins&gt;</strong> - <ins>Inserted text</ins></p>
		</div>

		<div class="example">
			<p><strong>&lt;sub&gt;</strong> - H<sub>2</sub>O (subscript)</p>
		</div>

		<div class="example">
			<p><strong>&lt;sup&gt;</strong> - X<sup>2</sup> (superscript)</p>
		</div>

		<div class="example">
			<p><strong>&lt;code&gt;</strong> - <code>console.log("Hello");</code></p>
		</div>

		<div class="example">
			<p><strong>&lt;kbd&gt;</strong> - Press <kbd>Ctrl</kbd> + <kbd>C</kbd></p>
		</div>

		<div class="example">
			<p>
				<strong>&lt;abbr&gt;</strong> -
				<abbr title="HyperText Markup Language">HTML</abbr>
			</p>
		</div>

		<div class="example">
			<p>
				<strong>&lt;time&gt;</strong> - Published on
				<time datetime="2025-11-15">November 15, 2025</time>
			</p>
		</div>

		<div class="example">
			<p>
				<strong>&lt;cite&gt;</strong> -
				<cite>The Web Development Handbook</cite> by John Doe
			</p>
		</div>

		<div class="example">
			<p>
				<strong>&lt;q&gt;</strong> - He said, <q>Semantic HTML is important.</q>
			</p>
		</div>

		<div class="example">
			<p><strong>&lt;blockquote&gt;</strong> - For longer quotes:</p>
			<blockquote cite="https://example.com">
				<p>
					HTML5 semantic elements make your code more meaningful and accessible
					to both humans and machines.
				</p>
			</blockquote>
		</div>
	</body>
</html>
```

---

## 4. Div vs Span

### `<div>` - Block-Level Container

- Takes full width available
- Starts on new line
- Used for large sections
- Non-semantic (use semantic elements when possible)

### `<span>` - Inline Container

- Takes only necessary width
- Doesn't break line
- Used for small portions of text
- Non-semantic

**Example:**

```html
<!DOCTYPE html>
<html>
	<head>
		<title>Div vs Span</title>
		<style>
			.container {
				background-color: #ecf0f1;
				padding: 20px;
				margin: 10px 0;
			}
			.highlight {
				background-color: yellow;
				padding: 2px 5px;
			}
			.red-text {
				color: red;
			}
			.blue-box {
				background-color: lightblue;
				padding: 10px;
				margin: 5px 0;
			}
		</style>
	</head>
	<body>
		<h2>Div - Block Level Element</h2>

		<div class="container">
			<h3>Section 1</h3>
			<p>This is inside a div. Div takes full width.</p>
		</div>

		<div class="blue-box">
			<h3>Section 2</h3>
			<p>Another div element.</p>
		</div>

		<h2>Span - Inline Element</h2>

		<p>
			This is a paragraph with
			<span class="highlight">highlighted text</span> using span. Notice how
			<span class="red-text">span doesn't break the line</span>.
		</p>

		<p>
			You can use
			<span style="font-weight: bold; color: blue;">multiple spans</span>
			<span style="background-color: lightgreen;">in the same line</span>.
		</p>

		<h2>When to Use Each</h2>

		<div class="container">
			<h3>Use DIV for:</h3>
			<ul>
				<li>Page sections (prefer semantic elements)</li>
				<li>Containers for styling</li>
				<li>Grid/flex layouts</li>
			</ul>
		</div>

		<p>
			<strong>Use SPAN for:</strong> styling
			<span class="highlight">specific words</span> or
			<span class="red-text">phrases</span> within text.
		</p>
	</body>
</html>
```

---

## 5. Creating Navigation Bars

### 5.1 Horizontal Navigation Bar

```html
<!DOCTYPE html>
<html>
	<head>
		<title>Horizontal Navigation</title>
		<style>
			* {
				margin: 0;
				padding: 0;
				box-sizing: border-box;
			}
			nav {
				background-color: #333;
				overflow: hidden;
			}
			nav ul {
				list-style-type: none;
				display: flex;
			}
			nav li {
				flex: 0 0 auto;
			}
			nav a {
				display: block;
				color: white;
				text-align: center;
				padding: 14px 20px;
				text-decoration: none;
				transition: background-color 0.3s;
			}
			nav a:hover {
				background-color: #555;
			}
			nav a.active {
				background-color: #4caf50;
			}
		</style>
	</head>
	<body>
		<nav>
			<ul>
				<li><a href="#home" class="active">Home</a></li>
				<li><a href="#about">About</a></li>
				<li><a href="#services">Services</a></li>
				<li><a href="#portfolio">Portfolio</a></li>
				<li><a href="#contact">Contact</a></li>
			</ul>
		</nav>

		<div style="padding: 20px;">
			<h1>Content Area</h1>
			<p>Page content goes here...</p>
		</div>
	</body>
</html>
```

---

### 5.2 Navigation with Logo

```html
<!DOCTYPE html>
<html>
	<head>
		<title>Navigation with Logo</title>
		<style>
			* {
				margin: 0;
				padding: 0;
				box-sizing: border-box;
			}
			nav {
				background-color: #2c3e50;
				padding: 0 20px;
				display: flex;
				justify-content: space-between;
				align-items: center;
			}
			.logo {
				color: white;
				font-size: 24px;
				font-weight: bold;
				padding: 15px 0;
			}
			.logo span {
				color: #3498db;
			}
			nav ul {
				list-style-type: none;
				display: flex;
				margin: 0;
			}
			nav li {
				margin-left: 5px;
			}
			nav a {
				display: block;
				color: white;
				text-decoration: none;
				padding: 20px 20px;
				transition: all 0.3s;
			}
			nav a:hover {
				background-color: #3498db;
			}
		</style>
	</head>
	<body>
		<nav>
			<div class="logo">Amity<span>University</span></div>
			<ul>
				<li><a href="#home">Home</a></li>
				<li><a href="#courses">Courses</a></li>
				<li><a href="#admissions">Admissions</a></li>
				<li><a href="#faculty">Faculty</a></li>
				<li><a href="#contact">Contact</a></li>
			</ul>
		</nav>
	</body>
</html>
```

---

### 5.3 Dropdown Navigation Menu

```html
<!DOCTYPE html>
<html>
	<head>
		<title>Dropdown Navigation</title>
		<style>
			* {
				margin: 0;
				padding: 0;
				box-sizing: border-box;
			}
			nav {
				background-color: #333;
			}
			nav ul {
				list-style-type: none;
				display: flex;
			}
			nav > ul > li {
				position: relative;
			}
			nav a {
				display: block;
				color: white;
				text-decoration: none;
				padding: 15px 20px;
				transition: background-color 0.3s;
			}
			nav a:hover {
				background-color: #555;
			}
			/* Dropdown Menu */
			.dropdown {
				display: none;
				position: absolute;
				background-color: #444;
				min-width: 200px;
				box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
				z-index: 1;
			}
			.dropdown li {
				width: 100%;
			}
			nav li:hover .dropdown {
				display: block;
			}
			.dropdown a {
				padding: 12px 16px;
			}
			.dropdown a:hover {
				background-color: #555;
			}
		</style>
	</head>
	<body>
		<nav>
			<ul>
				<li><a href="#home">Home</a></li>

				<li>
					<a href="#about">About ▼</a>
					<ul class="dropdown">
						<li><a href="#history">History</a></li>
						<li><a href="#mission">Mission & Vision</a></li>
						<li><a href="#leadership">Leadership</a></li>
					</ul>
				</li>

				<li>
					<a href="#courses">Courses ▼</a>
					<ul class="dropdown">
						<li><a href="#btech">B.Tech</a></li>
						<li><a href="#mtech">M.Tech</a></li>
						<li><a href="#bca">BCA</a></li>
						<li><a href="#mca">MCA</a></li>
						<li><a href="#mba">MBA</a></li>
					</ul>
				</li>

				<li>
					<a href="#admissions">Admissions ▼</a>
					<ul class="dropdown">
						<li><a href="#how-to-apply">How to Apply</a></li>
						<li><a href="#eligibility">Eligibility</a></li>
						<li><a href="#fees">Fee Structure</a></li>
						<li><a href="#scholarships">Scholarships</a></li>
					</ul>
				</li>

				<li><a href="#contact">Contact</a></li>
			</ul>
		</nav>

		<div style="padding: 20px;">
			<h1>Dropdown Navigation Demo</h1>
			<p>Hover over menu items to see dropdown menus.</p>
		</div>
	</body>
</html>
```

---

### 5.4 Responsive Navigation (Mobile-Friendly)

```html
<!DOCTYPE html>
<html>
	<head>
		<title>Responsive Navigation</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<style>
			* {
				margin: 0;
				padding: 0;
				box-sizing: border-box;
			}
			body {
				font-family: Arial, sans-serif;
			}
			nav {
				background-color: #333;
				position: relative;
			}
			.nav-container {
				max-width: 1200px;
				margin: 0 auto;
				display: flex;
				justify-content: space-between;
				align-items: center;
				padding: 0 20px;
			}
			.logo {
				color: white;
				font-size: 24px;
				font-weight: bold;
				padding: 15px 0;
			}
			.menu-toggle {
				display: none;
				flex-direction: column;
				cursor: pointer;
				padding: 10px;
			}
			.menu-toggle span {
				width: 25px;
				height: 3px;
				background-color: white;
				margin: 3px 0;
				transition: 0.3s;
			}
			nav ul {
				list-style-type: none;
				display: flex;
			}
			nav li {
				margin: 0;
			}
			nav a {
				display: block;
				color: white;
				text-decoration: none;
				padding: 20px 20px;
				transition: background-color 0.3s;
			}
			nav a:hover {
				background-color: #555;
			}

			/* Mobile Styles */
			@media screen and (max-width: 768px) {
				.menu-toggle {
					display: flex;
				}
				nav ul {
					display: none;
					flex-direction: column;
					width: 100%;
					position: absolute;
					top: 60px;
					left: 0;
					background-color: #333;
				}
				nav ul.active {
					display: flex;
				}
				nav li {
					width: 100%;
					text-align: center;
				}
				nav a {
					padding: 15px;
					border-top: 1px solid #555;
				}
			}
		</style>
	</head>
	<body>
		<nav>
			<div class="nav-container">
				<div class="logo">MyWebsite</div>

				<div class="menu-toggle" onclick="toggleMenu()">
					<span></span>
					<span></span>
					<span></span>
				</div>

				<ul id="navMenu">
					<li><a href="#home">Home</a></li>
					<li><a href="#about">About</a></li>
					<li><a href="#services">Services</a></li>
					<li><a href="#portfolio">Portfolio</a></li>
					<li><a href="#contact">Contact</a></li>
				</ul>
			</div>
		</nav>

		<div style="padding: 20px;">
			<h1>Responsive Navigation</h1>
			<p>Resize the browser window to see the responsive navigation menu.</p>
			<p>On mobile devices, click the hamburger icon to toggle the menu.</p>
		</div>

		<script>
			function toggleMenu() {
				var menu = document.getElementById("navMenu");
				menu.classList.toggle("active");
			}
		</script>
	</body>
</html>
```

---

## 6. Complete Website Layout

### Full Semantic HTML Structure:

```html
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<title>Complete Semantic Layout</title>
		<style>
			* {
				margin: 0;
				padding: 0;
				box-sizing: border-box;
			}
			body {
				font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
				line-height: 1.6;
				color: #333;
			}

			/* Header */
			header {
				background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
				color: white;
				padding: 20px 0;
				box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
			}
			header .container {
				max-width: 1200px;
				margin: 0 auto;
				padding: 0 20px;
				display: flex;
				justify-content: space-between;
				align-items: center;
			}
			.logo {
				font-size: 28px;
				font-weight: bold;
			}
			.tagline {
				font-size: 14px;
				opacity: 0.9;
			}

			/* Navigation */
			nav {
				background-color: #2c3e50;
			}
			nav ul {
				list-style: none;
				display: flex;
				max-width: 1200px;
				margin: 0 auto;
				padding: 0 20px;
			}
			nav a {
				color: white;
				text-decoration: none;
				padding: 15px 20px;
				display: block;
				transition: background-color 0.3s;
			}
			nav a:hover {
				background-color: #34495e;
			}

			/* Main Content */
			main {
				max-width: 1200px;
				margin: 30px auto;
				padding: 0 20px;
				display: flex;
				gap: 30px;
			}

			/* Article Section */
			.content {
				flex: 3;
			}
			article {
				background-color: white;
				margin-bottom: 30px;
				padding: 25px;
				border-radius: 8px;
				box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
			}
			article header {
				background: none;
				padding: 0;
				margin-bottom: 15px;
				border-bottom: 3px solid #667eea;
				padding-bottom: 10px;
			}
			article h2 {
				color: #2c3e50;
				margin-bottom: 10px;
			}
			.article-meta {
				color: #7f8c8d;
				font-size: 0.9em;
			}
			article p {
				margin: 15px 0;
				text-align: justify;
			}

			/* Aside/Sidebar */
			aside {
				flex: 1;
				min-width: 250px;
			}
			.widget {
				background-color: white;
				padding: 20px;
				margin-bottom: 20px;
				border-radius: 8px;
				box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
			}
			.widget h3 {
				color: #2c3e50;
				margin-bottom: 15px;
				padding-bottom: 10px;
				border-bottom: 2px solid #667eea;
			}
			.widget ul {
				list-style: none;
			}
			.widget li {
				padding: 8px 0;
				border-bottom: 1px solid #ecf0f1;
			}
			.widget a {
				color: #34495e;
				text-decoration: none;
			}
			.widget a:hover {
				color: #667eea;
			}

			/* Footer */
			footer {
				background-color: #2c3e50;
				color: white;
				padding: 40px 20px 20px 20px;
				margin-top: 50px;
			}
			.footer-content {
				max-width: 1200px;
				margin: 0 auto;
				display: flex;
				justify-content: space-between;
				flex-wrap: wrap;
				gap: 30px;
			}
			.footer-section {
				flex: 1;
				min-width: 200px;
			}
			.footer-section h4 {
				color: #3498db;
				margin-bottom: 15px;
			}
			.footer-section ul {
				list-style: none;
			}
			.footer-section li {
				margin: 8px 0;
			}
			.footer-section a {
				color: #ecf0f1;
				text-decoration: none;
			}
			.footer-bottom {
				text-align: center;
				margin-top: 30px;
				padding-top: 20px;
				border-top: 1px solid #34495e;
			}

			/* Responsive Design */
			@media (max-width: 768px) {
				main {
					flex-direction: column;
				}
				nav ul {
					flex-direction: column;
				}
				header .container {
					flex-direction: column;
					text-align: center;
				}
			}
		</style>
	</head>
	<body>
		<!-- Header Section -->
		<header>
			<div class="container">
				<div>
					<div class="logo">Amity University Patna</div>
					<div class="tagline">Excellence in Education</div>
				</div>
				<div>
					<p>📞 +91-612-2441061</p>
					<p>✉️ info@amitypatna.edu</p>
				</div>
			</div>
		</header>

		<!-- Navigation Section -->
		<nav>
			<ul>
				<li><a href="#home">Home</a></li>
				<li><a href="#about">About</a></li>
				<li><a href="#courses">Courses</a></li>
				<li><a href="#admissions">Admissions</a></li>
				<li><a href="#faculty">Faculty</a></li>
				<li><a href="#contact">Contact</a></li>
			</ul>
		</nav>

		<!-- Main Content Section -->
		<main>
			<!-- Articles/Content Area -->
			<div class="content">
				<section id="courses">
					<h1>Web Development Technology - CSIT256</h1>

					<article>
						<header>
							<h2>Module 1: HTML Basics</h2>
							<p class="article-meta">
								<time datetime="2025-11-15">November 15, 2025</time> | By Prof.
								Kumar | 6 Hours
							</p>
						</header>

						<p>
							This module introduces students to HTML5, the foundational
							language of web development. Students will learn document
							structure, basic and advanced tags, forms, tables, and semantic
							elements.
						</p>

						<p><strong>Topics Covered:</strong></p>
						<ul>
							<li>Introduction to HTML syntax and elements</li>
							<li>Basic tags: headings, paragraphs, lists, links</li>
							<li>Media elements: images, audio, video</li>
							<li>Advanced HTML: tables and forms</li>
							<li>Semantic elements for better structure</li>
						</ul>
					</article>

					<article>
						<header>
							<h2>Module 2: CSS Styling and Bootstrap</h2>
							<p class="article-meta">
								<time datetime="2025-11-15">November 15, 2025</time> | By Prof.
								Sharma | 6 Hours
							</p>
						</header>

						<p>
							Learn to style web pages using CSS3 and create responsive designs
							with Bootstrap framework. Master selectors, box model,
							positioning, and modern layout techniques.
						</p>

						<p><strong>Topics Covered:</strong></p>
						<ul>
							<li>CSS syntax and selectors</li>
							<li>Box model and positioning</li>
							<li>Responsive design with media queries</li>
							<li>Bootstrap framework and grid system</li>
							<li>Bootstrap components and utilities</li>
						</ul>
					</article>
				</section>
			</div>

			<!-- Sidebar -->
			<aside>
				<div class="widget">
					<h3>Quick Links</h3>
					<ul>
						<li><a href="#">Syllabus Download</a></li>
						<li><a href="#">Lecture Notes</a></li>
						<li><a href="#">Lab Manuals</a></li>
						<li><a href="#">Previous Papers</a></li>
						<li><a href="#">Resources</a></li>
					</ul>
				</div>

				<div class="widget">
					<h3>Course Modules</h3>
					<ul>
						<li><a href="#">Module 1: HTML</a></li>
						<li><a href="#">Module 2: CSS</a></li>
						<li><a href="#">Module 3: JavaScript</a></li>
						<li><a href="#">Module 4: AJAX & JSON</a></li>
						<li><a href="#">Module 5: PHP & MySQL</a></li>
					</ul>
				</div>

				<div class="widget">
					<h3>Important Dates</h3>
					<ul>
						<li>Mid-term Exam: Dec 15, 2025</li>
						<li>Assignment Due: Dec 20, 2025</li>
						<li>End-term Exam: Jan 10, 2026</li>
					</ul>
				</div>
			</aside>
		</main>

		<!-- Footer Section -->
		<footer>
			<div class="footer-content">
				<div class="footer-section">
					<h4>About Amity</h4>
					<p>
						Amity University Patna is committed to providing quality education
						and fostering innovation in technology and management.
					</p>
				</div>

				<div class="footer-section">
					<h4>Quick Links</h4>
					<ul>
						<li><a href="#">Home</a></li>
						<li><a href="#">Courses</a></li>
						<li><a href="#">Admissions</a></li>
						<li><a href="#">Faculty</a></li>
						<li><a href="#">Placements</a></li>
					</ul>
				</div>

				<div class="footer-section">
					<h4>Contact</h4>
					<ul>
						<li>📍 Rupaspur, Patna, Bihar</li>
						<li>📞 +91-612-2441061</li>
						<li>✉️ info@amitypatna.edu</li>
						<li>🌐 www.amitypatna.edu</li>
					</ul>
				</div>

				<div class="footer-section">
					<h4>Follow Us</h4>
					<ul>
						<li><a href="#">Facebook</a></li>
						<li><a href="#">Twitter</a></li>
						<li><a href="#">LinkedIn</a></li>
						<li><a href="#">Instagram</a></li>
					</ul>
				</div>
			</div>

			<div class="footer-bottom">
				<p>&copy; 2025 Amity University Patna. All Rights Reserved.</p>
			</div>
		</footer>
	</body>
</html>
```

---

## 7. Practical Examples

### 7.1 Personal Portfolio Website Structure

```html
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<title>Portfolio - John Doe</title>
	</head>
	<body>
		<header>
			<h1>John Doe</h1>
			<p>Web Developer & Designer</p>
		</header>

		<nav>
			<ul>
				<li><a href="#about">About</a></li>
				<li><a href="#skills">Skills</a></li>
				<li><a href="#projects">Projects</a></li>
				<li><a href="#contact">Contact</a></li>
			</ul>
		</nav>

		<main>
			<section id="about">
				<h2>About Me</h2>
				<p>I'm a passionate web developer...</p>
			</section>

			<section id="skills">
				<h2>Skills</h2>
				<ul>
					<li>HTML5 & CSS3</li>
					<li>JavaScript & React</li>
					<li>Python & Django</li>
				</ul>
			</section>

			<section id="projects">
				<h2>Projects</h2>

				<article>
					<header>
						<h3>E-commerce Website</h3>
						<time datetime="2025-01">January 2025</time>
					</header>
					<p>Full-stack e-commerce platform built with React and Node.js</p>
				</article>

				<article>
					<header>
						<h3>Portfolio Website</h3>
						<time datetime="2025-02">February 2025</time>
					</header>
					<p>Responsive portfolio using HTML, CSS, and JavaScript</p>
				</article>
			</section>

			<section id="contact">
				<h2>Contact Me</h2>
				<form>
					<input type="text" placeholder="Name" required />
					<input type="email" placeholder="Email" required />
					<textarea placeholder="Message" required></textarea>
					<button type="submit">Send</button>
				</form>
			</section>
		</main>

		<footer>
			<p>&copy; 2025 John Doe. All rights reserved.</p>
		</footer>
	</body>
</html>
```

---

## Summary

In this part, you learned:

✅ **Semantic HTML** - Elements with clear meaning and purpose  
✅ **Structural Elements** - header, nav, main, section, article, aside, footer  
✅ **Text Semantics** - strong, em, mark, time, code, abbr  
✅ **Div vs Span** - Block vs inline containers  
✅ **Navigation Bars** - Horizontal, dropdown, responsive menus  
✅ **Complete Layout** - Full semantic website structure  
✅ **Best Practices** - Accessibility, SEO, maintainability

---

## Practice Exercises

1. Create a complete university website using all semantic elements
2. Build a blog layout with header, navigation, articles, sidebar, and footer
3. Design a responsive navigation menu with dropdown submenus
4. Create a portfolio page using semantic HTML structure
5. Build a news website layout with proper semantic markup

---

## Module-I Complete Summary

You have now completed **Module-I: Basics of HTML** covering:

### Part 1: HTML Basics & Document Structure

- HTML introduction, syntax, and elements
- Document structure
- Basic tags (headings, paragraphs, lists, links, images, audio, video)

### Part 2: Advanced HTML - Tables

- Table structure and elements
- Cell spanning (colspan, rowspan)
- Table styling and responsiveness
- Practical timetables and data tables

### Part 3: Advanced HTML - Forms

- Form structure and attributes
- Input types (text, number, date, file, etc.)
- Other form elements (textarea, select, fieldset)
- Form validation
- Complete practical forms

### Part 4: Semantic Elements & Navigation

- Semantic HTML elements
- Page structure (header, nav, main, aside, footer)
- Text-level semantics
- Navigation bar creation
- Complete website layouts

---

**Congratulations! You are now ready to move to Module-II: CSS Styling and Bootstrap**

---

_Prepared by: Professor | Amity University Patna | CSIT256: Web Development Technology_
