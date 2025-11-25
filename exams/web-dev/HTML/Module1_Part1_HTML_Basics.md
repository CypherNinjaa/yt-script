# Module-I: Basics of HTML - Part 1

## HTML Basics & Document Structure

---

## Table of Contents

1. [Introduction to HTML](#introduction-to-html)
2. [HTML Syntax](#html-syntax)
3. [HTML Elements](#html-elements)
4. [HTML Document Structure](#html-document-structure)
5. [Basic Tags](#basic-tags)
   - Headings
   - Paragraphs
   - Lists
   - Links
   - Images
   - Audio
   - Video

---

## 1. Introduction to HTML

### What is HTML?

**HTML** stands for **HyperText Markup Language**. It is the standard markup language used to create and structure content on the World Wide Web.

- **HyperText**: Text that contains links to other texts
- **Markup Language**: A system for annotating text using tags to define structure and presentation

### Key Features of HTML:

- **Platform Independent**: Works on all operating systems
- **Easy to Learn**: Simple syntax and structure
- **Case Insensitive**: Tags can be written in uppercase or lowercase (though lowercase is preferred)
- **Foundation of Web**: All websites use HTML as their basic structure

### History of HTML:

- **1991**: HTML 1.0 - First version by Tim Berners-Lee
- **1995**: HTML 2.0 - Standard version
- **1997**: HTML 3.2 - Added tables, applets, text flow
- **1999**: HTML 4.01 - Added stylesheets (CSS)
- **2014**: HTML5 - Current standard with multimedia support

---

## 2. HTML Syntax

HTML uses **tags** to define elements. Tags are enclosed in angle brackets `< >`.

### Basic Syntax Rules:

```html
<tagname>Content goes here</tagname>
```

### Key Points:

1. **Opening Tag**: `<tagname>`
2. **Closing Tag**: `</tagname>`
3. **Content**: Text or other elements between tags
4. **Self-Closing Tags**: Some tags don't need closing tags (e.g., `<img />`, `<br />`)

### Example:

```html
<p>This is a paragraph.</p>
<h1>This is a heading</h1>
<br />
<!-- Self-closing tag -->
```

### Attributes:

Tags can have attributes that provide additional information:

```html
<tagname attribute="value">Content</tagname>
```

**Example:**

```html
<a href="https://www.example.com">Click Here</a>
<img src="image.jpg" alt="Description" />
```

---

## 3. HTML Elements

An HTML element consists of:

- **Start tag**
- **Content**
- **End tag**

### Types of Elements:

#### 1. **Block-Level Elements**

- Take up the full width available
- Always start on a new line
- Examples: `<div>`, `<p>`, `<h1>`, `<table>`, `<form>`

#### 2. **Inline Elements**

- Take only necessary width
- Don't start on a new line
- Examples: `<span>`, `<a>`, `<img>`, `<strong>`, `<em>`

#### 3. **Empty/Void Elements**

- Don't have closing tags
- Examples: `<br>`, `<hr>`, `<img>`, `<input>`, `<meta>`

### Nested Elements:

Elements can be nested inside other elements:

```html
<div>
	<h1>Main Heading</h1>
	<p>This is a <strong>paragraph</strong> with emphasis.</p>
</div>
```

---

## 4. HTML Document Structure

Every HTML document follows a standard structure:

```html
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<title>Document Title</title>
	</head>
	<body>
		<!-- Content goes here -->
	</body>
</html>
```

### Breakdown of Structure:

#### 1. **`<!DOCTYPE html>`**

- Declaration that defines document type
- Tells browser this is an HTML5 document
- Must be the first line

#### 2. **`<html>`**

- Root element of HTML page
- Contains all other elements
- `lang` attribute specifies language

#### 3. **`<head>`**

- Contains metadata about the document
- Not displayed on the page
- Includes title, character set, styles, scripts

#### 4. **`<meta>`**

- Provides metadata (character encoding, viewport settings)
- `charset="UTF-8"`: Supports all characters and symbols
- `viewport`: Makes page responsive on mobile devices

#### 5. **`<title>`**

- Defines title shown in browser tab
- Required in every HTML document

#### 6. **`<body>`**

- Contains all visible content
- Text, images, links, tables, forms, etc.

### Complete Example:

```html
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<title>My First Web Page</title>
	</head>
	<body>
		<h1>Welcome to My Website</h1>
		<p>This is my first HTML page.</p>
	</body>
</html>
```

---

## 5. Basic Tags

### 5.1 Headings

HTML provides six levels of headings, from `<h1>` to `<h6>`:

- `<h1>`: Most important (largest)
- `<h6>`: Least important (smallest)

**Syntax:**

```html
<h1>Heading 1</h1>
<h2>Heading 2</h2>
<h3>Heading 3</h3>
<h4>Heading 4</h4>
<h5>Heading 5</h5>
<h6>Heading 6</h6>
```

**Complete Example:**

```html
<!DOCTYPE html>
<html>
	<head>
		<title>Headings Example</title>
	</head>
	<body>
		<h1>Main Title - Heading 1</h1>
		<h2>Section Title - Heading 2</h2>
		<h3>Sub-section - Heading 3</h3>
		<h4>Minor Heading - Heading 4</h4>
		<h5>Small Heading - Heading 5</h5>
		<h6>Smallest Heading - Heading 6</h6>
	</body>
</html>
```

**Best Practices:**

- Use only one `<h1>` per page (for main title)
- Follow hierarchical order (don't skip levels)
- Use headings for structure, not just for styling

---

### 5.2 Paragraphs

The `<p>` tag defines a paragraph:

**Syntax:**

```html
<p>This is a paragraph.</p>
```

**Example:**

```html
<!DOCTYPE html>
<html>
	<head>
		<title>Paragraph Example</title>
	</head>
	<body>
		<h1>About HTML</h1>
		<p>HTML is the standard markup language for creating web pages.</p>
		<p>With HTML, you can create your own website.</p>
		<p>HTML is easy to learn and you will enjoy it!</p>
	</body>
</html>
```

**Additional Formatting Tags:**

```html
<p>This is a <strong>bold</strong> text.</p>
<p>This is an <em>italic</em> text.</p>
<p>This is <u>underlined</u> text.</p>
<p>This is <mark>highlighted</mark> text.</p>
<p>This is <small>smaller</small> text.</p>
<p>This is <del>deleted</del> text.</p>
<p>This is <ins>inserted</ins> text.</p>
<p>This is <sub>subscript</sub> and <sup>superscript</sup>.</p>
```

**Line Breaks and Horizontal Rules:**

```html
<p>First line.<br />Second line with line break.</p>
<hr />
<!-- Horizontal line -->
<p>Content after horizontal rule.</p>
```

---

### 5.3 Lists

HTML supports three types of lists:

#### 1. **Ordered List (`<ol>`)** - Numbered List

**Syntax:**

```html
<ol>
	<li>First item</li>
	<li>Second item</li>
	<li>Third item</li>
</ol>
```

**Example with Attributes:**

```html
<!DOCTYPE html>
<html>
	<head>
		<title>Ordered List Example</title>
	</head>
	<body>
		<h2>Top 5 Programming Languages</h2>
		<ol>
			<li>Python</li>
			<li>JavaScript</li>
			<li>Java</li>
			<li>C++</li>
			<li>C#</li>
		</ol>

		<h3>List with Custom Start</h3>
		<ol start="5">
			<li>Item 5</li>
			<li>Item 6</li>
		</ol>

		<h3>List with Roman Numerals</h3>
		<ol type="I">
			<li>Introduction</li>
			<li>Body</li>
			<li>Conclusion</li>
		</ol>

		<h3>List with Lowercase Letters</h3>
		<ol type="a">
			<li>Option A</li>
			<li>Option B</li>
			<li>Option C</li>
		</ol>
	</body>
</html>
```

**List Type Attributes:**

- `type="1"`: Numbers (default)
- `type="A"`: Uppercase letters
- `type="a"`: Lowercase letters
- `type="I"`: Uppercase Roman numerals
- `type="i"`: Lowercase Roman numerals

---

#### 2. **Unordered List (`<ul>`)** - Bulleted List

**Syntax:**

```html
<ul>
	<li>First item</li>
	<li>Second item</li>
	<li>Third item</li>
</ul>
```

**Example:**

```html
<!DOCTYPE html>
<html>
	<head>
		<title>Unordered List Example</title>
	</head>
	<body>
		<h2>My Hobbies</h2>
		<ul>
			<li>Reading</li>
			<li>Coding</li>
			<li>Gaming</li>
			<li>Traveling</li>
		</ul>

		<h3>Different Bullet Styles (using CSS)</h3>
		<ul style="list-style-type: circle;">
			<li>Circle bullet</li>
			<li>Circle bullet</li>
		</ul>

		<ul style="list-style-type: square;">
			<li>Square bullet</li>
			<li>Square bullet</li>
		</ul>

		<ul style="list-style-type: none;">
			<li>No bullet</li>
			<li>No bullet</li>
		</ul>
	</body>
</html>
```

---

#### 3. **Definition List (`<dl>`)** - Term and Definition

**Syntax:**

```html
<dl>
	<dt>Term</dt>
	<dd>Definition</dd>
</dl>
```

**Example:**

```html
<!DOCTYPE html>
<html>
	<head>
		<title>Definition List Example</title>
	</head>
	<body>
		<h2>Web Technology Terms</h2>
		<dl>
			<dt>HTML</dt>
			<dd>HyperText Markup Language - used for structuring web content</dd>

			<dt>CSS</dt>
			<dd>Cascading Style Sheets - used for styling web pages</dd>

			<dt>JavaScript</dt>
			<dd>Programming language used for interactive web content</dd>

			<dt>HTTP</dt>
			<dd>HyperText Transfer Protocol - protocol for transferring web data</dd>

			<dt>URL</dt>
			<dd>Uniform Resource Locator - web address</dd>
		</dl>
	</body>
</html>
```

---

#### **Nested Lists Example:**

```html
<!DOCTYPE html>
<html>
	<head>
		<title>Nested Lists</title>
	</head>
	<body>
		<h2>Web Development Course Structure</h2>
		<ol>
			<li>
				HTML Basics
				<ul>
					<li>Introduction</li>
					<li>Tags and Attributes</li>
					<li>Document Structure</li>
				</ul>
			</li>
			<li>
				CSS Styling
				<ul>
					<li>Selectors</li>
					<li>Box Model</li>
					<li>Responsive Design</li>
				</ul>
			</li>
			<li>
				JavaScript
				<ul>
					<li>Variables</li>
					<li>Functions</li>
					<li>DOM Manipulation</li>
				</ul>
			</li>
		</ol>
	</body>
</html>
```

---

### 5.4 Links (Hyperlinks)

The `<a>` (anchor) tag creates hyperlinks:

**Syntax:**

```html
<a href="URL">Link Text</a>
```

**Basic Example:**

```html
<!DOCTYPE html>
<html>
	<head>
		<title>Links Example</title>
	</head>
	<body>
		<h2>Different Types of Links</h2>

		<!-- External Link -->
		<p><a href="https://www.google.com">Visit Google</a></p>

		<!-- Link opens in new tab -->
		<p>
			<a href="https://www.github.com" target="_blank"
				>Visit GitHub (New Tab)</a
			>
		</p>

		<!-- Email Link -->
		<p><a href="mailto:example@email.com">Send Email</a></p>

		<!-- Phone Link -->
		<p><a href="tel:+911234567890">Call Us</a></p>

		<!-- Link to local file -->
		<p><a href="page2.html">Go to Page 2</a></p>

		<!-- Link to section on same page -->
		<p><a href="#section1">Jump to Section 1</a></p>

		<!-- Download Link -->
		<p><a href="document.pdf" download>Download PDF</a></p>
	</body>
</html>
```

**Link Attributes:**

| Attribute  | Description                                                |
| ---------- | ---------------------------------------------------------- |
| `href`     | Specifies the URL of the link                              |
| `target`   | Specifies where to open the link                           |
| `title`    | Shows tooltip on hover                                     |
| `download` | Downloads the file instead of navigating                   |
| `rel`      | Specifies relationship between current and linked document |

**Target Attribute Values:**

- `_blank`: Opens in new tab/window
- `_self`: Opens in same tab (default)
- `_parent`: Opens in parent frame
- `_top`: Opens in full window

**Advanced Example:**

```html
<!DOCTYPE html>
<html>
	<head>
		<title>Advanced Links</title>
	</head>
	<body>
		<h1>Navigation Menu</h1>
		<nav>
			<a href="#home">Home</a> | <a href="#about">About</a> |
			<a href="#services">Services</a> |
			<a href="#contact">Contact</a>
		</nav>

		<h2 id="home">Home Section</h2>
		<p>Welcome to our website.</p>

		<h2 id="about">About Section</h2>
		<p>Learn more about us.</p>

		<h2 id="services">Services Section</h2>
		<p>Check out our services.</p>

		<h2 id="contact">Contact Section</h2>
		<p>Get in touch with us.</p>

		<a href="#" title="Back to top">⬆ Back to Top</a>
	</body>
</html>
```

---

### 5.5 Images

The `<img>` tag embeds images in HTML:

**Syntax:**

```html
<img src="image-path" alt="description" />
```

**Basic Example:**

```html
<!DOCTYPE html>
<html>
	<head>
		<title>Images Example</title>
	</head>
	<body>
		<h2>Displaying Images</h2>

		<!-- Local Image -->
		<img src="logo.png" alt="Company Logo" />

		<!-- Image from URL -->
		<img src="https://www.example.com/image.jpg" alt="Sample Image" />

		<!-- Image with width and height -->
		<img src="photo.jpg" alt="Photo" width="300" height="200" />

		<!-- Responsive image (adjusts to screen size) -->
		<img src="banner.jpg" alt="Banner" style="width:100%; height:auto;" />
	</body>
</html>
```

**Image Attributes:**

| Attribute | Description                                        |
| --------- | -------------------------------------------------- |
| `src`     | Source path/URL of image (required)                |
| `alt`     | Alternative text if image fails to load (required) |
| `width`   | Width in pixels                                    |
| `height`  | Height in pixels                                   |
| `title`   | Tooltip text on hover                              |
| `loading` | Lazy loading (`lazy` or `eager`)                   |

**Advanced Example:**

```html
<!DOCTYPE html>
<html>
	<head>
		<title>Advanced Images</title>
	</head>
	<body>
		<h2>Image as a Link</h2>
		<a href="https://www.example.com">
			<img src="clickable-image.jpg" alt="Click here" width="200" />
		</a>

		<h2>Image with Border and Styling</h2>
		<img
			src="styled-image.jpg"
			alt="Styled"
			style="border: 5px solid blue; border-radius: 10px; width: 300px;"
		/>

		<h2>Responsive Image</h2>
		<picture>
			<source media="(min-width: 650px)" srcset="large-image.jpg" />
			<source media="(min-width: 465px)" srcset="medium-image.jpg" />
			<img src="small-image.jpg" alt="Responsive Image" />
		</picture>

		<h2>Image with Caption</h2>
		<figure>
			<img src="nature.jpg" alt="Nature" width="400" />
			<figcaption>Beautiful Nature Scene</figcaption>
		</figure>

		<h2>Lazy Loading Image</h2>
		<img src="large-photo.jpg" alt="Large Photo" loading="lazy" width="500" />
	</body>
</html>
```

**Image Formats:**

- **JPEG/JPG**: Photos, images with many colors
- **PNG**: Images with transparency
- **GIF**: Animated images
- **SVG**: Scalable vector graphics
- **WebP**: Modern format, smaller file size

---

### 5.6 Audio

The `<audio>` tag embeds audio content:

**Syntax:**

```html
<audio controls>
	<source src="audio-file.mp3" type="audio/mpeg" />
	Your browser does not support audio.
</audio>
```

**Basic Example:**

```html
<!DOCTYPE html>
<html>
	<head>
		<title>Audio Example</title>
	</head>
	<body>
		<h2>Audio Player</h2>

		<!-- Simple Audio -->
		<audio controls>
			<source src="song.mp3" type="audio/mpeg" />
			<source src="song.ogg" type="audio/ogg" />
			Your browser does not support the audio element.
		</audio>

		<h3>Audio with Autoplay</h3>
		<audio controls autoplay>
			<source src="background-music.mp3" type="audio/mpeg" />
		</audio>

		<h3>Audio with Loop</h3>
		<audio controls loop>
			<source src="loop-sound.mp3" type="audio/mpeg" />
		</audio>
	</body>
</html>
```

**Audio Attributes:**

| Attribute  | Description                                             |
| ---------- | ------------------------------------------------------- |
| `controls` | Shows play, pause, volume controls                      |
| `autoplay` | Starts playing automatically                            |
| `loop`     | Repeats audio continuously                              |
| `muted`    | Mutes audio by default                                  |
| `preload`  | How audio should be loaded (`auto`, `metadata`, `none`) |
| `src`      | Source of audio file                                    |

**Advanced Example:**

```html
<!DOCTYPE html>
<html>
	<head>
		<title>Advanced Audio</title>
	</head>
	<body>
		<h2>Multiple Audio Sources</h2>
		<audio controls preload="metadata">
			<source src="audio.mp3" type="audio/mpeg" />
			<source src="audio.wav" type="audio/wav" />
			<source src="audio.ogg" type="audio/ogg" />
			Your browser does not support the audio element.
		</audio>

		<h2>Audio with Custom Styling</h2>
		<audio controls style="width: 100%;">
			<source src="podcast.mp3" type="audio/mpeg" />
		</audio>

		<h2>Background Audio (Muted by Default)</h2>
		<audio controls muted>
			<source src="ambient.mp3" type="audio/mpeg" />
		</audio>
	</body>
</html>
```

**Supported Audio Formats:**

- **MP3**: Most widely supported
- **WAV**: High quality, larger files
- **OGG**: Open source format

---

### 5.7 Video

The `<video>` tag embeds video content:

**Syntax:**

```html
<video controls width="640" height="360">
	<source src="video-file.mp4" type="video/mp4" />
	Your browser does not support video.
</video>
```

**Basic Example:**

```html
<!DOCTYPE html>
<html>
	<head>
		<title>Video Example</title>
	</head>
	<body>
		<h2>Video Player</h2>

		<!-- Simple Video -->
		<video controls width="640" height="360">
			<source src="video.mp4" type="video/mp4" />
			<source src="video.webm" type="video/webm" />
			Your browser does not support the video tag.
		</video>

		<h3>Video with Poster Image</h3>
		<video controls width="640" height="360" poster="thumbnail.jpg">
			<source src="movie.mp4" type="video/mp4" />
		</video>

		<h3>Autoplay Video (Muted)</h3>
		<video controls autoplay muted width="640" height="360">
			<source src="intro.mp4" type="video/mp4" />
		</video>
	</body>
</html>
```

**Video Attributes:**

| Attribute  | Description                        |
| ---------- | ---------------------------------- |
| `controls` | Shows play, pause, volume controls |
| `width`    | Width in pixels                    |
| `height`   | Height in pixels                   |
| `autoplay` | Starts playing automatically       |
| `loop`     | Repeats video continuously         |
| `muted`    | Mutes video by default             |
| `poster`   | Image shown before video plays     |
| `preload`  | How video should be loaded         |

**Advanced Example:**

```html
<!DOCTYPE html>
<html>
	<head>
		<title>Advanced Video</title>
	</head>
	<body>
		<h2>Responsive Video</h2>
		<video controls style="width: 100%; height: auto;">
			<source src="responsive-video.mp4" type="video/mp4" />
			<source src="responsive-video.webm" type="video/webm" />
			<track
				src="subtitles-en.vtt"
				kind="subtitles"
				srclang="en"
				label="English"
			/>
			Your browser does not support the video tag.
		</video>

		<h2>Video with Multiple Subtitles</h2>
		<video controls width="800" height="450">
			<source src="movie.mp4" type="video/mp4" />
			<track
				src="subtitles-en.vtt"
				kind="subtitles"
				srclang="en"
				label="English"
				default
			/>
			<track
				src="subtitles-hi.vtt"
				kind="subtitles"
				srclang="hi"
				label="Hindi"
			/>
		</video>

		<h2>Picture-in-Picture Video</h2>
		<video controls width="640" height="360" controlslist="nodownload">
			<source src="video.mp4" type="video/mp4" />
		</video>

		<h2>Embedded YouTube Video</h2>
		<iframe
			width="640"
			height="360"
			src="https://www.youtube.com/embed/VIDEO_ID"
			frameborder="0"
			allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
			allowfullscreen
		>
		</iframe>
	</body>
</html>
```

**Supported Video Formats:**

- **MP4**: Most widely supported (H.264)
- **WebM**: Open source format
- **OGG**: Open source format

**Best Practices:**

- Always provide multiple formats for compatibility
- Include `controls` attribute for user control
- Set appropriate `width` and `height`
- Use `poster` for better user experience
- Add `muted` if using `autoplay`
- Consider file size and loading time

---

## Complete Practice Example

Here's a comprehensive example combining all basic tags:

```html
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<title>Complete HTML Basics Example</title>
	</head>
	<body>
		<!-- Headings -->
		<h1>Welcome to Web Development</h1>
		<h2>Module-I: HTML Basics</h2>

		<!-- Paragraphs -->
		<p>
			HTML is the foundation of web development. This page demonstrates all
			basic HTML tags covered in Module-I.
		</p>
		<p>
			By mastering these concepts, you'll be able to create well-structured web
			pages.
		</p>

		<hr />

		<!-- Lists -->
		<h3>Course Topics (Ordered List)</h3>
		<ol>
			<li>HTML Introduction</li>
			<li>Document Structure</li>
			<li>Basic Tags</li>
			<li>Forms and Tables</li>
			<li>Semantic Elements</li>
		</ol>

		<h3>Skills You'll Learn (Unordered List)</h3>
		<ul>
			<li>Creating web pages</li>
			<li>Structuring content</li>
			<li>Adding multimedia</li>
			<li>Building forms</li>
		</ul>

		<h3>Key Terms (Definition List)</h3>
		<dl>
			<dt>Tag</dt>
			<dd>An HTML element enclosed in angle brackets</dd>

			<dt>Attribute</dt>
			<dd>Additional information provided to HTML elements</dd>
		</dl>

		<hr />

		<!-- Links -->
		<h3>Useful Resources</h3>
		<p>
			<a href="https://www.w3schools.com" target="_blank">W3Schools</a> |
			<a href="https://developer.mozilla.org" target="_blank">MDN Web Docs</a> |
			<a href="mailto:professor@university.edu">Contact Professor</a>
		</p>

		<hr />

		<!-- Images -->
		<h3>University Logo</h3>
		<img src="amity-logo.png" alt="Amity University Logo" width="200" />

		<hr />

		<!-- Audio -->
		<h3>Course Introduction Audio</h3>
		<audio controls>
			<source src="introduction.mp3" type="audio/mpeg" />
			Your browser does not support audio playback.
		</audio>

		<hr />

		<!-- Video -->
		<h3>HTML Tutorial Video</h3>
		<video controls width="640" height="360" poster="video-thumbnail.jpg">
			<source src="html-tutorial.mp4" type="video/mp4" />
			Your browser does not support video playback.
		</video>

		<hr />

		<!-- Footer -->
		<p>
			<small>&copy; 2025 Amity University Patna. All rights reserved.</small>
		</p>
	</body>
</html>
```

---

## Summary

In this part, you learned:

✅ **Introduction to HTML** - Definition, features, and history  
✅ **HTML Syntax** - Tags, attributes, and elements  
✅ **HTML Elements** - Block-level, inline, and empty elements  
✅ **Document Structure** - DOCTYPE, html, head, and body  
✅ **Headings** - Six levels from h1 to h6  
✅ **Paragraphs** - Text formatting and line breaks  
✅ **Lists** - Ordered, unordered, and definition lists  
✅ **Links** - Hyperlinks with various attributes  
✅ **Images** - Embedding and styling images  
✅ **Audio** - Adding audio players  
✅ **Video** - Embedding video content

---

## Practice Exercises

1. Create an HTML page with your personal information including name, photo, and contact details
2. Build a page about your favorite hobby with headings, paragraphs, images, and lists
3. Create a navigation menu using lists and links
4. Design a multimedia page that includes images, audio, and video
5. Build a simple website structure with multiple linked pages

---

**Next:** Part 2 will cover Advanced HTML - Tables

---

_Prepared by: Professor | Amity University Patna | CSIT256: Web Development Technology_
