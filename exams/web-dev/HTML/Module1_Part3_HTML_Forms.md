# Module-I: Basics of HTML - Part 3

## Advanced HTML - Forms and Form Elements

---

## Table of Contents

1. [Introduction to HTML Forms](#introduction-to-html-forms)
2. [Form Structure](#form-structure)
3. [Input Elements](#input-elements)
4. [Other Form Elements](#other-form-elements)
5. [Form Attributes](#form-attributes)
6. [Form Validation](#form-validation)
7. [Practical Examples](#practical-examples)

---

## 1. Introduction to HTML Forms

### What are HTML Forms?

HTML forms are used to collect user input and send data to a server for processing. Forms are essential for:

- User registration and login
- Search functionality
- Surveys and feedback
- E-commerce checkout
- File uploads
- Contact forms

### How Forms Work:

1. User fills out the form
2. User submits the form (clicks submit button)
3. Data is sent to server (specified in `action` attribute)
4. Server processes the data
5. Server sends response back to browser

---

## 2. Form Structure

### Basic Form Syntax:

```html
<form action="server-script.php" method="POST">
	<!-- Form elements go here -->
	<input type="text" name="username" />
	<input type="submit" value="Submit" />
</form>
```

### Essential Form Attributes:

| Attribute      | Description                                       |
| -------------- | ------------------------------------------------- |
| `action`       | URL where form data is sent                       |
| `method`       | HTTP method (GET or POST)                         |
| `name`         | Name of the form                                  |
| `target`       | Where to display response (\_blank, \_self, etc.) |
| `enctype`      | How form data should be encoded                   |
| `autocomplete` | Enable/disable autocomplete (on/off)              |
| `novalidate`   | Disable HTML5 validation                          |

### Simple Form Example:

```html
<!DOCTYPE html>
<html>
	<head>
		<title>Simple Form</title>
	</head>
	<body>
		<h2>Contact Form</h2>
		<form action="submit.php" method="POST">
			<label for="name">Name:</label>
			<input type="text" id="name" name="name" /><br /><br />

			<label for="email">Email:</label>
			<input type="email" id="email" name="email" /><br /><br />

			<input type="submit" value="Submit" />
		</form>
	</body>
</html>
```

---

## 3. Input Elements

The `<input>` element is the most versatile form element with many types.

### 3.1 Text Input Types

#### Text Input

```html
<label for="username">Username:</label>
<input type="text" id="username" name="username" placeholder="Enter username" />
```

#### Password Input

```html
<label for="password">Password:</label>
<input
	type="password"
	id="password"
	name="password"
	placeholder="Enter password"
/>
```

#### Email Input

```html
<label for="email">Email:</label>
<input type="email" id="email" name="email" placeholder="user@example.com" />
```

#### URL Input

```html
<label for="website">Website:</label>
<input
	type="url"
	id="website"
	name="website"
	placeholder="https://example.com"
/>
```

#### Tel (Phone) Input

```html
<label for="phone">Phone:</label>
<input type="tel" id="phone" name="phone" placeholder="+91-9999999999" />
```

#### Search Input

```html
<label for="search">Search:</label>
<input type="search" id="search" name="search" placeholder="Search here..." />
```

### Complete Text Input Example:

```html
<!DOCTYPE html>
<html>
	<head>
		<title>Text Input Types</title>
		<style>
			form {
				width: 400px;
				margin: 20px;
				padding: 20px;
				border: 1px solid #ccc;
			}
			label {
				display: inline-block;
				width: 120px;
				margin: 10px 0;
			}
			input {
				padding: 8px;
				width: 250px;
				border: 1px solid #ddd;
				border-radius: 4px;
			}
		</style>
	</head>
	<body>
		<h2>Registration Form - Text Inputs</h2>
		<form>
			<label for="fname">First Name:</label>
			<input type="text" id="fname" name="fname" placeholder="John" /><br />

			<label for="lname">Last Name:</label>
			<input type="text" id="lname" name="lname" placeholder="Doe" /><br />

			<label for="email">Email:</label>
			<input
				type="email"
				id="email"
				name="email"
				placeholder="john@example.com"
			/><br />

			<label for="password">Password:</label>
			<input
				type="password"
				id="password"
				name="password"
				placeholder="********"
			/><br />

			<label for="phone">Phone:</label>
			<input
				type="tel"
				id="phone"
				name="phone"
				placeholder="+91-9999999999"
			/><br />

			<label for="website">Website:</label>
			<input
				type="url"
				id="website"
				name="website"
				placeholder="https://yoursite.com"
			/><br />

			<input type="submit" value="Register" />
		</form>
	</body>
</html>
```

---

### 3.2 Number and Range Inputs

#### Number Input

```html
<label for="age">Age:</label>
<input
	type="number"
	id="age"
	name="age"
	min="18"
	max="100"
	step="1"
	value="25"
/>
```

#### Range (Slider) Input

```html
<label for="volume">Volume:</label>
<input type="range" id="volume" name="volume" min="0" max="100" value="50" />
<span id="volumeValue">50</span>
```

#### Example with JavaScript:

```html
<!DOCTYPE html>
<html>
	<head>
		<title>Number and Range Inputs</title>
		<style>
			.form-group {
				margin: 15px 0;
			}
			label {
				display: block;
				margin-bottom: 5px;
				font-weight: bold;
			}
			input[type="range"] {
				width: 300px;
			}
		</style>
	</head>
	<body>
		<h2>Number and Range Examples</h2>
		<form>
			<div class="form-group">
				<label for="age">Age (18-100):</label>
				<input
					type="number"
					id="age"
					name="age"
					min="18"
					max="100"
					value="25"
				/>
			</div>

			<div class="form-group">
				<label for="quantity">Quantity (1-10):</label>
				<input
					type="number"
					id="quantity"
					name="quantity"
					min="1"
					max="10"
					step="1"
					value="1"
				/>
			</div>

			<div class="form-group">
				<label for="price">Price (₹):</label>
				<input
					type="number"
					id="price"
					name="price"
					min="0"
					step="0.01"
					value="100.00"
				/>
			</div>

			<div class="form-group">
				<label for="brightness"
					>Brightness: <span id="brightValue">50</span>%</label
				>
				<input
					type="range"
					id="brightness"
					name="brightness"
					min="0"
					max="100"
					value="50"
					oninput="document.getElementById('brightValue').textContent = this.value"
				/>
			</div>

			<div class="form-group">
				<label for="volume">Volume: <span id="volValue">70</span></label>
				<input
					type="range"
					id="volume"
					name="volume"
					min="0"
					max="100"
					value="70"
					oninput="document.getElementById('volValue').textContent = this.value"
				/>
			</div>
		</form>
	</body>
</html>
```

---

### 3.3 Date and Time Inputs

```html
<!-- Date -->
<label for="birthday">Birthday:</label>
<input type="date" id="birthday" name="birthday" />

<!-- Time -->
<label for="meeting">Meeting Time:</label>
<input type="time" id="meeting" name="meeting" />

<!-- Date and Time -->
<label for="appointment">Appointment:</label>
<input type="datetime-local" id="appointment" name="appointment" />

<!-- Month -->
<label for="month">Month:</label>
<input type="month" id="month" name="month" />

<!-- Week -->
<label for="week">Week:</label>
<input type="week" id="week" name="week" />
```

#### Complete Date/Time Example:

```html
<!DOCTYPE html>
<html>
	<head>
		<title>Date and Time Inputs</title>
		<style>
			form {
				width: 500px;
				margin: 20px;
				padding: 20px;
				background-color: #f9f9f9;
				border-radius: 8px;
			}
			.form-row {
				margin: 15px 0;
			}
			label {
				display: inline-block;
				width: 180px;
				font-weight: bold;
			}
			input {
				padding: 8px;
				border: 1px solid #ddd;
				border-radius: 4px;
			}
		</style>
	</head>
	<body>
		<h2>Event Registration Form</h2>
		<form>
			<div class="form-row">
				<label for="eventDate">Event Date:</label>
				<input
					type="date"
					id="eventDate"
					name="eventDate"
					min="2025-01-01"
					max="2025-12-31"
				/>
			</div>

			<div class="form-row">
				<label for="eventTime">Event Time:</label>
				<input type="time" id="eventTime" name="eventTime" />
			</div>

			<div class="form-row">
				<label for="appointment">Appointment:</label>
				<input type="datetime-local" id="appointment" name="appointment" />
			</div>

			<div class="form-row">
				<label for="birthMonth">Birth Month:</label>
				<input type="month" id="birthMonth" name="birthMonth" />
			</div>

			<div class="form-row">
				<label for="availWeek">Available Week:</label>
				<input type="week" id="availWeek" name="availWeek" />
			</div>

			<div class="form-row">
				<input type="submit" value="Register for Event" />
			</div>
		</form>
	</body>
</html>
```

---

### 3.4 Choice Inputs (Radio, Checkbox)

#### Radio Buttons (Single Selection)

```html
<fieldset>
	<legend>Gender:</legend>
	<input type="radio" id="male" name="gender" value="male" />
	<label for="male">Male</label><br />

	<input type="radio" id="female" name="gender" value="female" />
	<label for="female">Female</label><br />

	<input type="radio" id="other" name="gender" value="other" />
	<label for="other">Other</label>
</fieldset>
```

#### Checkboxes (Multiple Selection)

```html
<fieldset>
	<legend>Hobbies:</legend>
	<input type="checkbox" id="reading" name="hobbies" value="reading" />
	<label for="reading">Reading</label><br />

	<input type="checkbox" id="sports" name="hobbies" value="sports" />
	<label for="sports">Sports</label><br />

	<input type="checkbox" id="music" name="hobbies" value="music" />
	<label for="music">Music</label><br />

	<input type="checkbox" id="coding" name="hobbies" value="coding" />
	<label for="coding">Coding</label>
</fieldset>
```

#### Complete Example:

```html
<!DOCTYPE html>
<html>
	<head>
		<title>Radio and Checkbox</title>
		<style>
			fieldset {
				margin: 20px 0;
				padding: 15px;
				border: 2px solid #4caf50;
				border-radius: 8px;
			}
			legend {
				font-weight: bold;
				color: #4caf50;
				padding: 0 10px;
			}
			label {
				margin-left: 5px;
			}
		</style>
	</head>
	<body>
		<h2>Survey Form</h2>
		<form>
			<!-- Radio Buttons -->
			<fieldset>
				<legend>Education Level:</legend>
				<input type="radio" id="school" name="education" value="school" />
				<label for="school">School</label><br />

				<input type="radio" id="undergrad" name="education" value="undergrad" />
				<label for="undergrad">Undergraduate</label><br />

				<input type="radio" id="postgrad" name="education" value="postgrad" />
				<label for="postgrad">Postgraduate</label><br />

				<input type="radio" id="phd" name="education" value="phd" />
				<label for="phd">PhD</label>
			</fieldset>

			<!-- Checkboxes -->
			<fieldset>
				<legend>Programming Languages (Select all that apply):</legend>
				<input type="checkbox" id="python" name="languages" value="python" />
				<label for="python">Python</label><br />

				<input
					type="checkbox"
					id="javascript"
					name="languages"
					value="javascript"
				/>
				<label for="javascript">JavaScript</label><br />

				<input type="checkbox" id="java" name="languages" value="java" />
				<label for="java">Java</label><br />

				<input type="checkbox" id="cpp" name="languages" value="cpp" />
				<label for="cpp">C++</label><br />

				<input type="checkbox" id="php" name="languages" value="php" />
				<label for="php">PHP</label>
			</fieldset>

			<!-- Newsletter Subscription -->
			<fieldset>
				<legend>Preferences:</legend>
				<input
					type="checkbox"
					id="newsletter"
					name="newsletter"
					value="yes"
					checked
				/>
				<label for="newsletter">Subscribe to newsletter</label><br />

				<input
					type="checkbox"
					id="terms"
					name="terms"
					value="accepted"
					required
				/>
				<label for="terms">I accept terms and conditions *</label>
			</fieldset>

			<input type="submit" value="Submit Survey" />
		</form>
	</body>
</html>
```

---

### 3.5 File, Color, and Hidden Inputs

#### File Input

```html
<label for="resume">Upload Resume:</label>
<input type="file" id="resume" name="resume" accept=".pdf,.doc,.docx" />

<!-- Multiple files -->
<label for="photos">Upload Photos:</label>
<input type="file" id="photos" name="photos" accept="image/*" multiple />
```

#### Color Input

```html
<label for="favColor">Favorite Color:</label>
<input type="color" id="favColor" name="favColor" value="#ff0000" />
```

#### Hidden Input

```html
<input type="hidden" name="userId" value="12345" />
<input type="hidden" name="timestamp" value="2025-11-15" />
```

#### Complete Example:

```html
<!DOCTYPE html>
<html>
	<head>
		<title>File, Color, Hidden Inputs</title>
		<style>
			.form-section {
				margin: 20px 0;
				padding: 15px;
				background-color: #f5f5f5;
				border-radius: 5px;
			}
			label {
				display: block;
				margin: 10px 0 5px 0;
				font-weight: bold;
			}
			input[type="file"] {
				margin: 5px 0;
			}
		</style>
	</head>
	<body>
		<h2>Job Application Form</h2>
		<form action="upload.php" method="POST" enctype="multipart/form-data">
			<!-- Hidden Fields -->
			<input type="hidden" name="jobId" value="WD2025" />
			<input type="hidden" name="department" value="IT" />

			<div class="form-section">
				<label for="fullname">Full Name:</label>
				<input type="text" id="fullname" name="fullname" required />

				<label for="email">Email:</label>
				<input type="email" id="email" name="email" required />
			</div>

			<div class="form-section">
				<label for="resume">Upload Resume (PDF/DOC):</label>
				<input
					type="file"
					id="resume"
					name="resume"
					accept=".pdf,.doc,.docx"
					required
				/>

				<label for="portfolio">Upload Portfolio Documents (Multiple):</label>
				<input type="file" id="portfolio" name="portfolio[]" multiple />

				<label for="photo">Upload Photo (JPG/PNG):</label>
				<input
					type="file"
					id="photo"
					name="photo"
					accept="image/jpeg,image/png"
				/>
			</div>

			<div class="form-section">
				<label for="brandColor">Preferred Brand Color:</label>
				<input type="color" id="brandColor" name="brandColor" value="#3498db" />
			</div>

			<input type="submit" value="Submit Application" />
		</form>
	</body>
</html>
```

---

### 3.6 Button Types

```html
<!-- Submit Button -->
<input type="submit" value="Submit Form" />
<button type="submit">Submit Form</button>

<!-- Reset Button -->
<input type="reset" value="Reset Form" />
<button type="reset">Reset</button>

<!-- Regular Button -->
<input type="button" value="Click Me" onclick="alert('Clicked!')" />
<button type="button" onclick="alert('Clicked!')">Click Me</button>

<!-- Image Button -->
<input type="image" src="submit-icon.png" alt="Submit" width="48" height="48" />
```

---

## 4. Other Form Elements

### 4.1 Textarea

Multi-line text input:

```html
<label for="message">Message:</label>
<textarea
	id="message"
	name="message"
	rows="5"
	cols="40"
	placeholder="Enter your message here..."
></textarea>
```

#### Textarea Example:

```html
<!DOCTYPE html>
<html>
	<head>
		<title>Textarea Example</title>
		<style>
			textarea {
				width: 100%;
				padding: 10px;
				border: 2px solid #ddd;
				border-radius: 4px;
				font-family: Arial, sans-serif;
				resize: vertical;
			}
		</style>
	</head>
	<body>
		<h2>Feedback Form</h2>
		<form>
			<label for="name">Name:</label>
			<input
				type="text"
				id="name"
				name="name"
				style="width: 100%; padding: 8px;"
			/><br /><br />

			<label for="comments">Comments:</label>
			<textarea
				id="comments"
				name="comments"
				rows="6"
				placeholder="Share your thoughts..."
				required
			></textarea
			><br /><br />

			<label for="suggestions">Suggestions:</label>
			<textarea
				id="suggestions"
				name="suggestions"
				rows="4"
				maxlength="500"
			></textarea>
			<p><small>Maximum 500 characters</small></p>

			<input type="submit" value="Submit Feedback" />
		</form>
	</body>
</html>
```

---

### 4.2 Select (Dropdown)

#### Basic Select:

```html
<label for="country">Country:</label>
<select id="country" name="country">
	<option value="">-- Select Country --</option>
	<option value="india">India</option>
	<option value="usa">USA</option>
	<option value="uk">UK</option>
	<option value="canada">Canada</option>
</select>
```

#### Select with Groups (optgroup):

```html
<label for="course">Select Course:</label>
<select id="course" name="course">
	<optgroup label="Engineering">
		<option value="cs">Computer Science</option>
		<option value="me">Mechanical Engineering</option>
		<option value="ee">Electrical Engineering</option>
	</optgroup>
	<optgroup label="Management">
		<option value="mba">MBA</option>
		<option value="bba">BBA</option>
	</optgroup>
</select>
```

#### Multiple Selection:

```html
<label for="subjects">Select Subjects (Hold Ctrl for multiple):</label>
<select id="subjects" name="subjects" multiple size="5">
	<option value="math">Mathematics</option>
	<option value="physics">Physics</option>
	<option value="chemistry">Chemistry</option>
	<option value="biology">Biology</option>
	<option value="english">English</option>
</select>
```

#### Complete Select Example:

```html
<!DOCTYPE html>
<html>
	<head>
		<title>Select Dropdown Examples</title>
		<style>
			.form-group {
				margin: 20px 0;
			}
			label {
				display: block;
				margin-bottom: 5px;
				font-weight: bold;
			}
			select {
				padding: 8px;
				width: 300px;
				border: 1px solid #ddd;
				border-radius: 4px;
			}
		</style>
	</head>
	<body>
		<h2>Student Registration</h2>
		<form>
			<div class="form-group">
				<label for="program">Select Program:</label>
				<select id="program" name="program" required>
					<option value="">-- Choose Program --</option>
					<option value="btech">B.Tech</option>
					<option value="mtech">M.Tech</option>
					<option value="bca">BCA</option>
					<option value="mca">MCA</option>
				</select>
			</div>

			<div class="form-group">
				<label for="branch">Select Branch:</label>
				<select id="branch" name="branch">
					<optgroup label="Engineering">
						<option value="cse">Computer Science & Engineering</option>
						<option value="it">Information Technology</option>
						<option value="ece">Electronics & Communication</option>
						<option value="me">Mechanical Engineering</option>
					</optgroup>
					<optgroup label="Other">
						<option value="bba">Business Administration</option>
						<option value="law">Law</option>
					</optgroup>
				</select>
			</div>

			<div class="form-group">
				<label for="semester">Semester:</label>
				<select id="semester" name="semester">
					<option value="1">1st Semester</option>
					<option value="2">2nd Semester</option>
					<option value="3">3rd Semester</option>
					<option value="4">4th Semester</option>
					<option value="5">5th Semester</option>
					<option value="6">6th Semester</option>
					<option value="7">7th Semester</option>
					<option value="8">8th Semester</option>
				</select>
			</div>

			<div class="form-group">
				<label for="electives">Choose Elective Subjects (Multiple):</label>
				<select id="electives" name="electives" multiple size="6">
					<option value="web">Web Development</option>
					<option value="ml">Machine Learning</option>
					<option value="ai">Artificial Intelligence</option>
					<option value="cyber">Cyber Security</option>
					<option value="mobile">Mobile App Development</option>
					<option value="cloud">Cloud Computing</option>
				</select>
				<small>Hold Ctrl (Windows) or Command (Mac) to select multiple</small>
			</div>

			<input type="submit" value="Register" />
		</form>
	</body>
</html>
```

---

### 4.3 Fieldset and Legend

Group related form elements:

```html
<form>
	<fieldset>
		<legend>Personal Information</legend>
		<label for="fname">First Name:</label>
		<input type="text" id="fname" name="fname" /><br />

		<label for="lname">Last Name:</label>
		<input type="text" id="lname" name="lname" /><br />
	</fieldset>

	<fieldset>
		<legend>Contact Information</legend>
		<label for="email">Email:</label>
		<input type="email" id="email" name="email" /><br />

		<label for="phone">Phone:</label>
		<input type="tel" id="phone" name="phone" /><br />
	</fieldset>
</form>
```

---

### 4.4 Datalist (Autocomplete)

Provides autocomplete suggestions:

```html
<label for="browser">Choose Browser:</label>
<input list="browsers" id="browser" name="browser" />
<datalist id="browsers">
	<option value="Chrome"></option>
	<option value="Firefox"></option>
	<option value="Safari"></option>
	<option value="Edge"></option>
	<option value="Opera"></option>
</datalist>
```

#### Datalist Example:

```html
<!DOCTYPE html>
<html>
	<head>
		<title>Datalist Example</title>
	</head>
	<body>
		<h2>Search Form with Autocomplete</h2>
		<form>
			<label for="city">Select City:</label>
			<input
				list="cities"
				id="city"
				name="city"
				placeholder="Type to search..."
			/>
			<datalist id="cities">
				<option value="Mumbai"></option>
				<option value="Delhi"></option>
				<option value="Bangalore"></option>
				<option value="Kolkata"></option>
				<option value="Chennai"></option>
				<option value="Hyderabad"></option>
				<option value="Pune"></option>
				<option value="Ahmedabad"></option></datalist

			><br /><br />

			<label for="language">Programming Language:</label>
			<input list="languages" id="language" name="language" />
			<datalist id="languages">
				<option value="Python"></option>
				<option value="JavaScript"></option>
				<option value="Java"></option>
				<option value="C++"></option>
				<option value="PHP"></option>
				<option value="Ruby"></option>
				<option value="Go"></option></datalist

			><br /><br />

			<input type="submit" value="Submit" />
		</form>
	</body>
</html>
```

---

## 5. Form Attributes

### Input Attributes:

| Attribute      | Description                        |
| -------------- | ---------------------------------- |
| `value`        | Default/initial value              |
| `placeholder`  | Hint text shown in empty field     |
| `required`     | Field must be filled               |
| `readonly`     | Cannot be modified                 |
| `disabled`     | Field is disabled                  |
| `maxlength`    | Maximum character length           |
| `minlength`    | Minimum character length           |
| `size`         | Width of input field               |
| `pattern`      | Regular expression for validation  |
| `autofocus`    | Automatically focuses on page load |
| `autocomplete` | Enable/disable autocomplete        |

### Example:

```html
<!DOCTYPE html>
<html>
	<head>
		<title>Input Attributes</title>
	</head>
	<body>
		<h2>Form with Various Attributes</h2>
		<form>
			<!-- Required Field -->
			<label for="username">Username (Required):</label>
			<input type="text" id="username" name="username" required /><br /><br />

			<!-- Placeholder -->
			<label for="email">Email:</label>
			<input
				type="email"
				id="email"
				name="email"
				placeholder="user@example.com"
			/><br /><br />

			<!-- Readonly -->
			<label for="userid">User ID (Readonly):</label>
			<input
				type="text"
				id="userid"
				name="userid"
				value="12345"
				readonly
			/><br /><br />

			<!-- Disabled -->
			<label for="status">Status (Disabled):</label>
			<input
				type="text"
				id="status"
				name="status"
				value="Active"
				disabled
			/><br /><br />

			<!-- Maxlength & Minlength -->
			<label for="pincode">Pincode (6 digits):</label>
			<input
				type="text"
				id="pincode"
				name="pincode"
				maxlength="6"
				minlength="6"
				pattern="[0-9]{6}"
			/><br /><br />

			<!-- Autofocus -->
			<label for="search">Search (Autofocus):</label>
			<input type="text" id="search" name="search" autofocus /><br /><br />

			<!-- Pattern -->
			<label for="mobile">Mobile (10 digits):</label>
			<input
				type="tel"
				id="mobile"
				name="mobile"
				pattern="[0-9]{10}"
				title="Enter 10-digit mobile number"
			/><br /><br />

			<input type="submit" value="Submit" />
		</form>
	</body>
</html>
```

---

## 6. Form Validation

### HTML5 Built-in Validation:

#### Required Fields:

```html
<input type="text" name="username" required />
```

#### Email Validation:

```html
<input type="email" name="email" required />
```

#### Pattern Matching:

```html
<!-- Only letters -->
<input
	type="text"
	name="name"
	pattern="[A-Za-z]+"
	title="Only letters allowed"
/>

<!-- Phone number (10 digits) -->
<input
	type="tel"
	name="phone"
	pattern="[0-9]{10}"
	title="10-digit phone number"
/>

<!-- Alphanumeric -->
<input
	type="text"
	name="code"
	pattern="[A-Za-z0-9]+"
	title="Alphanumeric only"
/>
```

#### Min/Max Validation:

```html
<input type="number" name="age" min="18" max="100" />
<input type="date" name="date" min="2025-01-01" max="2025-12-31" />
```

### Complete Validation Example:

```html
<!DOCTYPE html>
<html>
	<head>
		<title>Form Validation</title>
		<style>
			form {
				width: 500px;
				margin: 20px auto;
				padding: 20px;
				border: 2px solid #4caf50;
				border-radius: 8px;
			}
			.form-group {
				margin: 15px 0;
			}
			label {
				display: block;
				margin-bottom: 5px;
				font-weight: bold;
			}
			input,
			textarea,
			select {
				width: 100%;
				padding: 10px;
				border: 1px solid #ddd;
				border-radius: 4px;
				box-sizing: border-box;
			}
			input:invalid {
				border-color: red;
			}
			input:valid {
				border-color: green;
			}
			.error-msg {
				color: red;
				font-size: 0.9em;
			}
			button {
				background-color: #4caf50;
				color: white;
				padding: 12px 30px;
				border: none;
				border-radius: 4px;
				cursor: pointer;
				font-size: 16px;
			}
			button:hover {
				background-color: #45a049;
			}
		</style>
	</head>
	<body>
		<h2 style="text-align: center;">Registration Form with Validation</h2>
		<form>
			<div class="form-group">
				<label for="fullname">Full Name: *</label>
				<input
					type="text"
					id="fullname"
					name="fullname"
					pattern="[A-Za-z\s]{3,50}"
					title="Only letters and spaces, 3-50 characters"
					required
				/>
				<small class="error-msg">Enter valid name (only letters)</small>
			</div>

			<div class="form-group">
				<label for="email">Email: *</label>
				<input
					type="email"
					id="email"
					name="email"
					placeholder="user@example.com"
					required
				/>
			</div>

			<div class="form-group">
				<label for="password">Password: *</label>
				<input
					type="password"
					id="password"
					name="password"
					minlength="8"
					pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
					title="Must contain at least one number, one uppercase and lowercase letter, and at least 8 characters"
					required
				/>
				<small>Min 8 characters with uppercase, lowercase, and number</small>
			</div>

			<div class="form-group">
				<label for="mobile">Mobile Number: *</label>
				<input
					type="tel"
					id="mobile"
					name="mobile"
					pattern="[0-9]{10}"
					title="Enter 10-digit mobile number"
					placeholder="9999999999"
					required
				/>
			</div>

			<div class="form-group">
				<label for="age">Age: *</label>
				<input type="number" id="age" name="age" min="18" max="100" required />
				<small>Must be between 18 and 100</small>
			</div>

			<div class="form-group">
				<label for="dob">Date of Birth: *</label>
				<input
					type="date"
					id="dob"
					name="dob"
					min="1925-01-01"
					max="2007-12-31"
					required
				/>
			</div>

			<div class="form-group">
				<label for="website">Website URL:</label>
				<input
					type="url"
					id="website"
					name="website"
					placeholder="https://example.com"
				/>
			</div>

			<div class="form-group">
				<label for="pincode">Pincode: *</label>
				<input
					type="text"
					id="pincode"
					name="pincode"
					pattern="[0-9]{6}"
					title="Enter 6-digit pincode"
					maxlength="6"
					required
				/>
			</div>

			<div class="form-group">
				<label for="terms">
					<input type="checkbox" id="terms" name="terms" required />
					I accept terms and conditions *
				</label>
			</div>

			<button type="submit">Register</button>
			<button type="reset">Clear Form</button>
		</form>
	</body>
</html>
```

---

## 7. Practical Examples

### 7.1 Complete Login Form

```html
<!DOCTYPE html>
<html>
	<head>
		<title>Login Page</title>
		<style>
			body {
				font-family: Arial, sans-serif;
				background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
				display: flex;
				justify-content: center;
				align-items: center;
				height: 100vh;
				margin: 0;
			}
			.login-container {
				background-color: white;
				padding: 40px;
				border-radius: 10px;
				box-shadow: 0 4px 20px rgba(0, 0, 0, 0.3);
				width: 350px;
			}
			h2 {
				text-align: center;
				color: #333;
				margin-bottom: 30px;
			}
			.form-group {
				margin-bottom: 20px;
			}
			label {
				display: block;
				margin-bottom: 5px;
				color: #555;
				font-weight: bold;
			}
			input[type="text"],
			input[type="password"] {
				width: 100%;
				padding: 12px;
				border: 1px solid #ddd;
				border-radius: 5px;
				box-sizing: border-box;
				font-size: 14px;
			}
			input[type="text"]:focus,
			input[type="password"]:focus {
				outline: none;
				border-color: #667eea;
			}
			.remember {
				display: flex;
				align-items: center;
				margin: 15px 0;
			}
			.remember input {
				margin-right: 8px;
			}
			button {
				width: 100%;
				padding: 12px;
				background-color: #667eea;
				color: white;
				border: none;
				border-radius: 5px;
				font-size: 16px;
				font-weight: bold;
				cursor: pointer;
				transition: background-color 0.3s;
			}
			button:hover {
				background-color: #764ba2;
			}
			.links {
				text-align: center;
				margin-top: 20px;
			}
			.links a {
				color: #667eea;
				text-decoration: none;
			}
			.links a:hover {
				text-decoration: underline;
			}
		</style>
	</head>
	<body>
		<div class="login-container">
			<h2>Login to Your Account</h2>
			<form action="login.php" method="POST">
				<div class="form-group">
					<label for="username">Username or Email</label>
					<input
						type="text"
						id="username"
						name="username"
						placeholder="Enter username or email"
						required
						autofocus
					/>
				</div>

				<div class="form-group">
					<label for="password">Password</label>
					<input
						type="password"
						id="password"
						name="password"
						placeholder="Enter password"
						required
						minlength="6"
					/>
				</div>

				<div class="remember">
					<input type="checkbox" id="remember" name="remember" />
					<label for="remember" style="margin: 0; font-weight: normal;"
						>Remember me</label
					>
				</div>

				<button type="submit">Login</button>

				<div class="links">
					<a href="#">Forgot Password?</a><br />
					<span>Don't have an account? <a href="#">Sign Up</a></span>
				</div>
			</form>
		</div>
	</body>
</html>
```

---

### 7.2 Complete Contact Form (Lab Problem)

```html
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<title>Contact Us</title>
		<style>
			* {
				margin: 0;
				padding: 0;
				box-sizing: border-box;
			}
			body {
				font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
				background-color: #f0f2f5;
				padding: 20px;
			}
			.container {
				max-width: 800px;
				margin: 0 auto;
				background-color: white;
				padding: 40px;
				border-radius: 10px;
				box-shadow: 0 2px 15px rgba(0, 0, 0, 0.1);
			}
			h1 {
				text-align: center;
				color: #2c3e50;
				margin-bottom: 10px;
			}
			.subtitle {
				text-align: center;
				color: #7f8c8d;
				margin-bottom: 30px;
			}
			.form-row {
				display: flex;
				gap: 20px;
				margin-bottom: 20px;
			}
			.form-group {
				flex: 1;
				margin-bottom: 20px;
			}
			label {
				display: block;
				margin-bottom: 8px;
				color: #34495e;
				font-weight: 600;
			}
			input[type="text"],
			input[type="email"],
			input[type="tel"],
			input[type="url"],
			select,
			textarea {
				width: 100%;
				padding: 12px;
				border: 2px solid #e0e0e0;
				border-radius: 6px;
				font-size: 14px;
				transition: border-color 0.3s;
			}
			input:focus,
			select:focus,
			textarea:focus {
				outline: none;
				border-color: #3498db;
			}
			textarea {
				resize: vertical;
				font-family: inherit;
			}
			.required {
				color: red;
			}
			button {
				width: 100%;
				padding: 15px;
				background-color: #3498db;
				color: white;
				border: none;
				border-radius: 6px;
				font-size: 16px;
				font-weight: bold;
				cursor: pointer;
				transition: background-color 0.3s;
			}
			button:hover {
				background-color: #2980b9;
			}
			button[type="reset"] {
				background-color: #95a5a6;
				margin-top: 10px;
			}
			button[type="reset"]:hover {
				background-color: #7f8c8d;
			}
		</style>
	</head>
	<body>
		<div class="container">
			<h1>Contact Us</h1>
			<p class="subtitle">
				We'd love to hear from you. Please fill out the form below.
			</p>

			<form action="contact.php" method="POST">
				<div class="form-row">
					<div class="form-group">
						<label for="fname"
							>First Name <span class="required">*</span></label
						>
						<input
							type="text"
							id="fname"
							name="fname"
							placeholder="John"
							required
						/>
					</div>

					<div class="form-group">
						<label for="lname">Last Name <span class="required">*</span></label>
						<input
							type="text"
							id="lname"
							name="lname"
							placeholder="Doe"
							required
						/>
					</div>
				</div>

				<div class="form-row">
					<div class="form-group">
						<label for="email">Email <span class="required">*</span></label>
						<input
							type="email"
							id="email"
							name="email"
							placeholder="john.doe@example.com"
							required
						/>
					</div>

					<div class="form-group">
						<label for="phone">Phone Number</label>
						<input
							type="tel"
							id="phone"
							name="phone"
							placeholder="+91-9999999999"
							pattern="[0-9]{10}"
						/>
					</div>
				</div>

				<div class="form-group">
					<label for="subject">Subject <span class="required">*</span></label>
					<select id="subject" name="subject" required>
						<option value="">-- Select Subject --</option>
						<option value="general">General Inquiry</option>
						<option value="support">Technical Support</option>
						<option value="feedback">Feedback</option>
						<option value="admission">Admission Query</option>
						<option value="complaint">Complaint</option>
						<option value="other">Other</option>
					</select>
				</div>

				<div class="form-group">
					<label for="website">Website (if any)</label>
					<input
						type="url"
						id="website"
						name="website"
						placeholder="https://example.com"
					/>
				</div>

				<div class="form-group">
					<label for="message">Message <span class="required">*</span></label>
					<textarea
						id="message"
						name="message"
						rows="6"
						placeholder="Type your message here..."
						required
						minlength="20"
					></textarea>
					<small style="color: #7f8c8d;">Minimum 20 characters</small>
				</div>

				<button type="submit">Send Message</button>
				<button type="reset">Clear Form</button>
			</form>
		</div>
	</body>
</html>
```

---

## Summary

In this part, you learned:

✅ **Form Structure** - `<form>` element with action and method  
✅ **Text Inputs** - text, password, email, URL, tel, search  
✅ **Number Inputs** - number and range (slider)  
✅ **Date/Time Inputs** - date, time, datetime-local, month, week  
✅ **Choice Inputs** - radio buttons and checkboxes  
✅ **File & Color** - file upload and color picker  
✅ **Textarea** - Multi-line text input  
✅ **Select** - Dropdown menus with options and optgroups  
✅ **Fieldset** - Grouping related form elements  
✅ **Datalist** - Autocomplete suggestions  
✅ **Validation** - HTML5 built-in validation attributes  
✅ **Practical Forms** - Login, contact, and registration forms

---

## Practice Exercises

1. Create a user registration form with validation (name, email, password, age, terms)
2. Build a login page with username/email and password fields
3. Design a job application form with file upload for resume
4. Create a survey form using radio buttons and checkboxes
5. Build a complete contact form with all learned form elements

---

**Next:** Part 4 will cover Semantic Elements and Navigation Bar Creation

---

_Prepared by: Professor | Amity University Patna | CSIT256: Web Development Technology_
