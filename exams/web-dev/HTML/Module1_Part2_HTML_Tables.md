# Module-I: Basics of HTML - Part 2

## Advanced HTML - Tables

---

## Table of Contents

1. [Introduction to HTML Tables](#introduction-to-html-tables)
2. [Basic Table Structure](#basic-table-structure)
3. [Table Elements](#table-elements)
4. [Table Attributes](#table-attributes)
5. [Styling Tables](#styling-tables)
6. [Advanced Table Features](#advanced-table-features)
7. [Practical Examples](#practical-examples)

---

## 1. Introduction to HTML Tables

### What are HTML Tables?

HTML tables are used to organize and display data in rows and columns. They are ideal for presenting structured information like:

- Timetables
- Price lists
- Student records
- Statistical data
- Comparison charts

### When to Use Tables:

✅ **Use tables for:**

- Tabular data (spreadsheet-like information)
- Data comparison
- Schedules and timetables
- Financial reports

❌ **Don't use tables for:**

- Page layout (use CSS flexbox/grid instead)
- Navigation menus
- General content positioning

---

## 2. Basic Table Structure

### Minimum Required Elements:

```html
<table>
	<tr>
		<td>Cell 1</td>
		<td>Cell 2</td>
	</tr>
</table>
```

### Basic Table Example:

```html
<!DOCTYPE html>
<html>
	<head>
		<title>Simple Table</title>
	</head>
	<body>
		<h2>Simple Table Example</h2>
		<table border="1">
			<tr>
				<td>Row 1, Cell 1</td>
				<td>Row 1, Cell 2</td>
				<td>Row 1, Cell 3</td>
			</tr>
			<tr>
				<td>Row 2, Cell 1</td>
				<td>Row 2, Cell 2</td>
				<td>Row 2, Cell 3</td>
			</tr>
		</table>
	</body>
</html>
```

**Output Structure:**

```
┌─────────────┬─────────────┬─────────────┐
│Row 1, Cell 1│Row 1, Cell 2│Row 1, Cell 3│
├─────────────┼─────────────┼─────────────┤
│Row 2, Cell 1│Row 2, Cell 2│Row 2, Cell 3│
└─────────────┴─────────────┴─────────────┘
```

---

## 3. Table Elements

### Core Table Tags:

| Tag          | Description                          |
| ------------ | ------------------------------------ |
| `<table>`    | Defines the table container          |
| `<tr>`       | Table Row - defines a row            |
| `<td>`       | Table Data - defines a cell          |
| `<th>`       | Table Header - defines a header cell |
| `<caption>`  | Table caption/title                  |
| `<thead>`    | Groups header content                |
| `<tbody>`    | Groups body content                  |
| `<tfoot>`    | Groups footer content                |
| `<col>`      | Defines column properties            |
| `<colgroup>` | Groups columns                       |

---

### 3.1 Table with Headers (`<th>`)

Headers are bold and centered by default:

```html
<!DOCTYPE html>
<html>
	<head>
		<title>Table with Headers</title>
		<style>
			table,
			th,
			td {
				border: 1px solid black;
				border-collapse: collapse;
				padding: 8px;
			}
		</style>
	</head>
	<body>
		<h2>Student Information</h2>
		<table>
			<tr>
				<th>Roll No</th>
				<th>Name</th>
				<th>Age</th>
				<th>Grade</th>
			</tr>
			<tr>
				<td>101</td>
				<td>Rahul Sharma</td>
				<td>20</td>
				<td>A</td>
			</tr>
			<tr>
				<td>102</td>
				<td>Priya Singh</td>
				<td>19</td>
				<td>A+</td>
			</tr>
			<tr>
				<td>103</td>
				<td>Amit Kumar</td>
				<td>21</td>
				<td>B+</td>
			</tr>
		</table>
	</body>
</html>
```

---

### 3.2 Table Caption (`<caption>`)

Adds a title to the table:

```html
<!DOCTYPE html>
<html>
	<head>
		<title>Table with Caption</title>
		<style>
			table,
			th,
			td {
				border: 1px solid black;
				border-collapse: collapse;
				padding: 10px;
			}
			caption {
				font-size: 1.5em;
				font-weight: bold;
				margin: 10px;
			}
		</style>
	</head>
	<body>
		<table>
			<caption>
				Monthly Expenses Report
			</caption>
			<tr>
				<th>Month</th>
				<th>Income</th>
				<th>Expenses</th>
				<th>Savings</th>
			</tr>
			<tr>
				<td>January</td>
				<td>₹50,000</td>
				<td>₹35,000</td>
				<td>₹15,000</td>
			</tr>
			<tr>
				<td>February</td>
				<td>₹55,000</td>
				<td>₹40,000</td>
				<td>₹15,000</td>
			</tr>
		</table>
	</body>
</html>
```

---

### 3.3 Table Sections (`<thead>`, `<tbody>`, `<tfoot>`)

Organize table into logical sections:

```html
<!DOCTYPE html>
<html>
	<head>
		<title>Table with Sections</title>
		<style>
			table {
				width: 100%;
				border-collapse: collapse;
			}
			th,
			td {
				border: 1px solid black;
				padding: 12px;
				text-align: left;
			}
			thead {
				background-color: #4caf50;
				color: white;
			}
			tbody tr:nth-child(even) {
				background-color: #f2f2f2;
			}
			tfoot {
				background-color: #333;
				color: white;
				font-weight: bold;
			}
		</style>
	</head>
	<body>
		<h2>Sales Report</h2>
		<table>
			<caption>
				Quarterly Sales - 2025
			</caption>

			<thead>
				<tr>
					<th>Product</th>
					<th>Q1</th>
					<th>Q2</th>
					<th>Q3</th>
					<th>Q4</th>
				</tr>
			</thead>

			<tbody>
				<tr>
					<td>Laptops</td>
					<td>150</td>
					<td>200</td>
					<td>180</td>
					<td>220</td>
				</tr>
				<tr>
					<td>Mobiles</td>
					<td>300</td>
					<td>350</td>
					<td>400</td>
					<td>450</td>
				</tr>
				<tr>
					<td>Tablets</td>
					<td>100</td>
					<td>120</td>
					<td>110</td>
					<td>130</td>
				</tr>
			</tbody>

			<tfoot>
				<tr>
					<td>Total</td>
					<td>550</td>
					<td>670</td>
					<td>690</td>
					<td>800</td>
				</tr>
			</tfoot>
		</table>
	</body>
</html>
```

---

## 4. Table Attributes

### 4.1 Cell Spanning

#### Colspan - Merge Columns

Spans a cell across multiple columns:

```html
<!DOCTYPE html>
<html>
	<head>
		<title>Colspan Example</title>
		<style>
			table,
			th,
			td {
				border: 1px solid black;
				border-collapse: collapse;
				padding: 10px;
				text-align: center;
			}
		</style>
	</head>
	<body>
		<h2>Colspan Example</h2>
		<table>
			<tr>
				<th colspan="3">Student Marks</th>
			</tr>
			<tr>
				<th>Name</th>
				<th>Math</th>
				<th>Science</th>
			</tr>
			<tr>
				<td>John</td>
				<td>85</td>
				<td>90</td>
			</tr>
			<tr>
				<td>Average</td>
				<td colspan="2">87.5</td>
			</tr>
		</table>
	</body>
</html>
```

#### Rowspan - Merge Rows

Spans a cell across multiple rows:

```html
<!DOCTYPE html>
<html>
	<head>
		<title>Rowspan Example</title>
		<style>
			table,
			th,
			td {
				border: 1px solid black;
				border-collapse: collapse;
				padding: 10px;
				text-align: center;
			}
		</style>
	</head>
	<body>
		<h2>Rowspan Example</h2>
		<table>
			<tr>
				<th>Day</th>
				<th>Subject</th>
				<th>Time</th>
			</tr>
			<tr>
				<td rowspan="3">Monday</td>
				<td>Math</td>
				<td>9:00 AM</td>
			</tr>
			<tr>
				<td>Physics</td>
				<td>10:00 AM</td>
			</tr>
			<tr>
				<td>Chemistry</td>
				<td>11:00 AM</td>
			</tr>
		</table>
	</body>
</html>
```

#### Combined Colspan and Rowspan:

```html
<!DOCTYPE html>
<html>
	<head>
		<title>Combined Span Example</title>
		<style>
			table,
			th,
			td {
				border: 1px solid black;
				border-collapse: collapse;
				padding: 10px;
				text-align: center;
			}
		</style>
	</head>
	<body>
		<h2>Complex Table with Spanning</h2>
		<table>
			<tr>
				<th colspan="4">Academic Performance</th>
			</tr>
			<tr>
				<th rowspan="2">Student</th>
				<th colspan="2">Semester 1</th>
				<th rowspan="2">Total</th>
			</tr>
			<tr>
				<th>Theory</th>
				<th>Practical</th>
			</tr>
			<tr>
				<td>Alice</td>
				<td>85</td>
				<td>90</td>
				<td>175</td>
			</tr>
			<tr>
				<td>Bob</td>
				<td>78</td>
				<td>82</td>
				<td>160</td>
			</tr>
		</table>
	</body>
</html>
```

---

### 4.2 Alignment Attributes

```html
<!DOCTYPE html>
<html>
	<head>
		<title>Alignment Example</title>
		<style>
			table {
				width: 100%;
				border-collapse: collapse;
			}
			th,
			td {
				border: 1px solid black;
				padding: 10px;
			}
		</style>
	</head>
	<body>
		<h2>Text Alignment in Tables</h2>
		<table>
			<tr>
				<th>Left Aligned</th>
				<th>Center Aligned</th>
				<th>Right Aligned</th>
			</tr>
			<tr>
				<td style="text-align: left;">Left Text</td>
				<td style="text-align: center;">Center Text</td>
				<td style="text-align: right;">Right Text</td>
			</tr>
			<tr>
				<td style="vertical-align: top; height: 60px;">Top</td>
				<td style="vertical-align: middle; height: 60px;">Middle</td>
				<td style="vertical-align: bottom; height: 60px;">Bottom</td>
			</tr>
		</table>
	</body>
</html>
```

---

## 5. Styling Tables

### 5.1 Border Styles

```html
<!DOCTYPE html>
<html>
	<head>
		<title>Border Styles</title>
		<style>
			/* Collapsed Borders */
			.table1 {
				border-collapse: collapse;
				width: 100%;
				margin-bottom: 20px;
			}
			.table1 th,
			.table1 td {
				border: 2px solid black;
				padding: 10px;
			}

			/* Separate Borders */
			.table2 {
				border-collapse: separate;
				border-spacing: 10px;
				width: 100%;
				margin-bottom: 20px;
			}
			.table2 th,
			.table2 td {
				border: 2px solid blue;
				padding: 10px;
			}

			/* Rounded Borders */
			.table3 {
				border-collapse: collapse;
				width: 100%;
				margin-bottom: 20px;
			}
			.table3 th,
			.table3 td {
				border: 1px solid green;
				padding: 10px;
			}
			.table3 th {
				border-radius: 10px 10px 0 0;
			}
		</style>
	</head>
	<body>
		<h2>Collapsed Borders</h2>
		<table class="table1">
			<tr>
				<th>Header 1</th>
				<th>Header 2</th>
			</tr>
			<tr>
				<td>Data 1</td>
				<td>Data 2</td>
			</tr>
		</table>

		<h2>Separate Borders with Spacing</h2>
		<table class="table2">
			<tr>
				<th>Header 1</th>
				<th>Header 2</th>
			</tr>
			<tr>
				<td>Data 1</td>
				<td>Data 2</td>
			</tr>
		</table>
	</body>
</html>
```

---

### 5.2 Zebra Striping (Alternate Row Colors)

```html
<!DOCTYPE html>
<html>
	<head>
		<title>Zebra Striping</title>
		<style>
			table {
				width: 100%;
				border-collapse: collapse;
			}
			th,
			td {
				border: 1px solid #ddd;
				padding: 12px;
				text-align: left;
			}
			th {
				background-color: #4caf50;
				color: white;
			}
			/* Zebra striping */
			tbody tr:nth-child(odd) {
				background-color: #f2f2f2;
			}
			tbody tr:nth-child(even) {
				background-color: #ffffff;
			}
			/* Hover effect */
			tbody tr:hover {
				background-color: #ddd;
			}
		</style>
	</head>
	<body>
		<h2>Styled Table with Hover Effect</h2>
		<table>
			<thead>
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Department</th>
					<th>Salary</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>John Doe</td>
					<td>IT</td>
					<td>₹50,000</td>
				</tr>
				<tr>
					<td>2</td>
					<td>Jane Smith</td>
					<td>HR</td>
					<td>₹45,000</td>
				</tr>
				<tr>
					<td>3</td>
					<td>Mike Johnson</td>
					<td>Finance</td>
					<td>₹55,000</td>
				</tr>
				<tr>
					<td>4</td>
					<td>Sarah Williams</td>
					<td>Marketing</td>
					<td>₹48,000</td>
				</tr>
				<tr>
					<td>5</td>
					<td>David Brown</td>
					<td>IT</td>
					<td>₹52,000</td>
				</tr>
			</tbody>
		</table>
	</body>
</html>
```

---

### 5.3 Responsive Tables

```html
<!DOCTYPE html>
<html>
	<head>
		<title>Responsive Table</title>
		<style>
			.table-container {
				overflow-x: auto;
			}
			table {
				width: 100%;
				border-collapse: collapse;
				min-width: 600px;
			}
			th,
			td {
				border: 1px solid #ddd;
				padding: 12px;
				text-align: left;
			}
			th {
				background-color: #007bff;
				color: white;
			}

			/* Mobile responsive */
			@media screen and (max-width: 600px) {
				table {
					font-size: 12px;
				}
				th,
				td {
					padding: 8px;
				}
			}
		</style>
	</head>
	<body>
		<h2>Responsive Table (Scroll on Mobile)</h2>
		<div class="table-container">
			<table>
				<thead>
					<tr>
						<th>Product ID</th>
						<th>Product Name</th>
						<th>Category</th>
						<th>Price</th>
						<th>Stock</th>
						<th>Supplier</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>P001</td>
						<td>Laptop</td>
						<td>Electronics</td>
						<td>₹45,000</td>
						<td>25</td>
						<td>Tech Suppliers</td>
					</tr>
					<tr>
						<td>P002</td>
						<td>Mouse</td>
						<td>Accessories</td>
						<td>₹500</td>
						<td>150</td>
						<td>Gadget World</td>
					</tr>
				</tbody>
			</table>
		</div>
	</body>
</html>
```

---

## 6. Advanced Table Features

### 6.1 Column Groups (`<colgroup>` and `<col>`)

Style entire columns:

```html
<!DOCTYPE html>
<html>
	<head>
		<title>Column Groups</title>
		<style>
			table {
				width: 100%;
				border-collapse: collapse;
			}
			th,
			td {
				border: 1px solid black;
				padding: 10px;
			}
			.col-highlight {
				background-color: #ffeb3b;
			}
			.col-secondary {
				background-color: #e0e0e0;
			}
		</style>
	</head>
	<body>
		<h2>Column Styling with Colgroup</h2>
		<table>
			<colgroup>
				<col />
				<col class="col-highlight" />
				<col class="col-secondary" />
				<col class="col-highlight" />
			</colgroup>
			<thead>
				<tr>
					<th>Name</th>
					<th>Math</th>
					<th>Science</th>
					<th>English</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>Alice</td>
					<td>95</td>
					<td>88</td>
					<td>92</td>
				</tr>
				<tr>
					<td>Bob</td>
					<td>87</td>
					<td>90</td>
					<td>85</td>
				</tr>
				<tr>
					<td>Charlie</td>
					<td>92</td>
					<td>85</td>
					<td>90</td>
				</tr>
			</tbody>
		</table>
	</body>
</html>
```

---

### 6.2 Nested Tables

Tables within tables:

```html
<!DOCTYPE html>
<html>
	<head>
		<title>Nested Tables</title>
		<style>
			table {
				border-collapse: collapse;
			}
			th,
			td {
				border: 1px solid black;
				padding: 10px;
			}
			.outer-table {
				width: 100%;
				background-color: #f0f0f0;
			}
			.inner-table {
				width: 100%;
				background-color: white;
			}
		</style>
	</head>
	<body>
		<h2>Nested Table Example</h2>
		<table class="outer-table">
			<tr>
				<th>Student</th>
				<th>Marks Details</th>
			</tr>
			<tr>
				<td>John Doe</td>
				<td>
					<!-- Nested Table -->
					<table class="inner-table">
						<tr>
							<th>Subject</th>
							<th>Marks</th>
						</tr>
						<tr>
							<td>Math</td>
							<td>85</td>
						</tr>
						<tr>
							<td>Science</td>
							<td>90</td>
						</tr>
						<tr>
							<td>English</td>
							<td>88</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>Jane Smith</td>
				<td>
					<!-- Nested Table -->
					<table class="inner-table">
						<tr>
							<th>Subject</th>
							<th>Marks</th>
						</tr>
						<tr>
							<td>Math</td>
							<td>92</td>
						</tr>
						<tr>
							<td>Science</td>
							<td>87</td>
						</tr>
						<tr>
							<td>English</td>
							<td>90</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</body>
</html>
```

---

## 7. Practical Examples

### 7.1 Class Timetable (Lab Problem)

```html
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<title>Class Timetable</title>
		<style>
			body {
				font-family: Arial, sans-serif;
				margin: 20px;
			}
			h1 {
				text-align: center;
				color: #333;
			}
			table {
				width: 100%;
				border-collapse: collapse;
				margin: 20px 0;
				box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
			}
			th,
			td {
				border: 2px solid #333;
				padding: 15px;
				text-align: center;
			}
			thead th {
				background-color: #2c3e50;
				color: white;
				font-size: 1.1em;
			}
			tbody th {
				background-color: #34495e;
				color: white;
				font-weight: bold;
			}
			tbody td {
				background-color: #ecf0f1;
			}
			.subject {
				font-weight: bold;
				color: #2980b9;
			}
			.teacher {
				font-size: 0.9em;
				color: #7f8c8d;
			}
			.break {
				background-color: #f39c12 !important;
				color: white;
				font-weight: bold;
			}
			.lab {
				background-color: #27ae60 !important;
				color: white;
			}
		</style>
	</head>
	<body>
		<h1>CSIT256: Web Development Technology</h1>
		<h2 style="text-align: center;">Class Timetable - Semester VI</h2>

		<table>
			<caption style="font-size: 1.2em; margin: 10px; font-weight: bold;">
				Amity University Patna - BTech CS
			</caption>

			<thead>
				<tr>
					<th>Time / Day</th>
					<th>Monday</th>
					<th>Tuesday</th>
					<th>Wednesday</th>
					<th>Thursday</th>
					<th>Friday</th>
					<th>Saturday</th>
				</tr>
			</thead>

			<tbody>
				<tr>
					<th>9:00 - 10:00 AM</th>
					<td>
						<div class="subject">Web Development</div>
						<div class="teacher">Prof. Kumar</div>
					</td>
					<td>
						<div class="subject">Data Structures</div>
						<div class="teacher">Prof. Sharma</div>
					</td>
					<td>
						<div class="subject">DBMS</div>
						<div class="teacher">Prof. Singh</div>
					</td>
					<td>
						<div class="subject">Web Development</div>
						<div class="teacher">Prof. Kumar</div>
					</td>
					<td>
						<div class="subject">Software Engg</div>
						<div class="teacher">Prof. Verma</div>
					</td>
					<td rowspan="3" class="lab">
						<div class="subject">Web Development Lab</div>
						<div class="teacher">Prof. Kumar</div>
						<div>(9:00 AM - 12:00 PM)</div>
					</td>
				</tr>

				<tr>
					<th>10:00 - 11:00 AM</th>
					<td>
						<div class="subject">DBMS</div>
						<div class="teacher">Prof. Singh</div>
					</td>
					<td>
						<div class="subject">Software Engg</div>
						<div class="teacher">Prof. Verma</div>
					</td>
					<td>
						<div class="subject">Data Structures</div>
						<div class="teacher">Prof. Sharma</div>
					</td>
					<td>
						<div class="subject">DBMS</div>
						<div class="teacher">Prof. Singh</div>
					</td>
					<td>
						<div class="subject">Web Development</div>
						<div class="teacher">Prof. Kumar</div>
					</td>
				</tr>

				<tr>
					<th>11:00 - 11:30 AM</th>
					<td colspan="5" class="break">BREAK</td>
				</tr>

				<tr>
					<th>11:30 - 12:30 PM</th>
					<td>
						<div class="subject">Data Structures</div>
						<div class="teacher">Prof. Sharma</div>
					</td>
					<td>
						<div class="subject">Web Development</div>
						<div class="teacher">Prof. Kumar</div>
					</td>
					<td>
						<div class="subject">Software Engg</div>
						<div class="teacher">Prof. Verma</div>
					</td>
					<td>
						<div class="subject">Data Structures</div>
						<div class="teacher">Prof. Sharma</div>
					</td>
					<td>
						<div class="subject">DBMS</div>
						<div class="teacher">Prof. Singh</div>
					</td>
					<td>
						<div class="subject">Tutorial</div>
						<div class="teacher">All Faculty</div>
					</td>
				</tr>

				<tr>
					<th>12:30 - 1:30 PM</th>
					<td colspan="6" class="break">LUNCH BREAK</td>
				</tr>

				<tr>
					<th>1:30 - 3:30 PM</th>
					<td rowspan="1" colspan="2" class="lab">
						<div class="subject">DBMS Lab</div>
						<div class="teacher">Prof. Singh</div>
					</td>
					<td rowspan="1" colspan="2" class="lab">
						<div class="subject">Data Structures Lab</div>
						<div class="teacher">Prof. Sharma</div>
					</td>
					<td colspan="2">
						<div class="subject">Seminar / Workshop</div>
					</td>
				</tr>
			</tbody>
		</table>

		<div style="margin-top: 20px;">
			<h3>Legend:</h3>
			<ul>
				<li>
					<span style="color: #2980b9; font-weight: bold;">Blue Text</span> -
					Subject Name
				</li>
				<li>
					<span style="background-color: #27ae60; color: white; padding: 5px;"
						>Green Background</span
					>
					- Laboratory Sessions
				</li>
				<li>
					<span style="background-color: #f39c12; color: white; padding: 5px;"
						>Orange Background</span
					>
					- Break Time
				</li>
			</ul>
		</div>
	</body>
</html>
```

---

### 7.2 Student Marks Sheet

```html
<!DOCTYPE html>
<html>
	<head>
		<title>Student Marks Sheet</title>
		<style>
			body {
				font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
				margin: 20px;
				background-color: #f5f5f5;
			}
			.container {
				max-width: 900px;
				margin: 0 auto;
				background-color: white;
				padding: 30px;
				box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
			}
			h1,
			h2 {
				text-align: center;
				color: #2c3e50;
			}
			table {
				width: 100%;
				border-collapse: collapse;
				margin: 20px 0;
			}
			th,
			td {
				border: 1px solid #ddd;
				padding: 12px;
				text-align: center;
			}
			thead th {
				background-color: #3498db;
				color: white;
				font-weight: bold;
			}
			tbody tr:nth-child(even) {
				background-color: #f9f9f9;
			}
			tbody tr:hover {
				background-color: #e8f4f8;
			}
			tfoot td {
				background-color: #2c3e50;
				color: white;
				font-weight: bold;
			}
			.pass {
				color: green;
				font-weight: bold;
			}
			.fail {
				color: red;
				font-weight: bold;
			}
			.grade-A {
				background-color: #2ecc71;
				color: white;
			}
			.grade-B {
				background-color: #3498db;
				color: white;
			}
			.grade-C {
				background-color: #f39c12;
				color: white;
			}
		</style>
	</head>
	<body>
		<div class="container">
			<h1>Amity University Patna</h1>
			<h2>Semester End Examination Results</h2>

			<table>
				<caption style="font-size: 1.1em; margin: 15px; font-weight: bold;">
					CSIT256 - Web Development Technology | Semester VI | 2025
				</caption>

				<thead>
					<tr>
						<th rowspan="2">Roll No</th>
						<th rowspan="2">Student Name</th>
						<th colspan="3">Internal Assessment (40%)</th>
						<th rowspan="2">End Term<br />(60%)</th>
						<th rowspan="2">Total<br />(100%)</th>
						<th rowspan="2">Grade</th>
						<th rowspan="2">Result</th>
					</tr>
					<tr>
						<th>Test<br />(20%)</th>
						<th>Assignment<br />(10%)</th>
						<th>Attendance<br />(10%)</th>
					</tr>
				</thead>

				<tbody>
					<tr>
						<td>A22101</td>
						<td>Rahul Kumar</td>
						<td>18</td>
						<td>9</td>
						<td>10</td>
						<td>52</td>
						<td>89</td>
						<td class="grade-A">A</td>
						<td class="pass">PASS</td>
					</tr>
					<tr>
						<td>A22102</td>
						<td>Priya Singh</td>
						<td>19</td>
						<td>10</td>
						<td>10</td>
						<td>56</td>
						<td>95</td>
						<td class="grade-A">A+</td>
						<td class="pass">PASS</td>
					</tr>
					<tr>
						<td>A22103</td>
						<td>Amit Sharma</td>
						<td>15</td>
						<td>8</td>
						<td>9</td>
						<td>42</td>
						<td>74</td>
						<td class="grade-B">B+</td>
						<td class="pass">PASS</td>
					</tr>
					<tr>
						<td>A22104</td>
						<td>Neha Gupta</td>
						<td>17</td>
						<td>9</td>
						<td>10</td>
						<td>48</td>
						<td>84</td>
						<td class="grade-A">A</td>
						<td class="pass">PASS</td>
					</tr>
					<tr>
						<td>A22105</td>
						<td>Vikash Kumar</td>
						<td>16</td>
						<td>9</td>
						<td>10</td>
						<td>45</td>
						<td>80</td>
						<td class="grade-A">A</td>
						<td class="pass">PASS</td>
					</tr>
					<tr>
						<td>A22106</td>
						<td>Anjali Verma</td>
						<td>14</td>
						<td>7</td>
						<td>8</td>
						<td>38</td>
						<td>67</td>
						<td class="grade-B">B</td>
						<td class="pass">PASS</td>
					</tr>
				</tbody>

				<tfoot>
					<tr>
						<td colspan="6">Class Average</td>
						<td>81.5</td>
						<td colspan="2">100% Pass Rate</td>
					</tr>
				</tfoot>
			</table>

			<h3>Grading System:</h3>
			<table style="width: 50%;">
				<tr>
					<th>Marks Range</th>
					<th>Grade</th>
				</tr>
				<tr>
					<td>90-100</td>
					<td>A+</td>
				</tr>
				<tr>
					<td>80-89</td>
					<td>A</td>
				</tr>
				<tr>
					<td>70-79</td>
					<td>B+</td>
				</tr>
				<tr>
					<td>60-69</td>
					<td>B</td>
				</tr>
				<tr>
					<td>50-59</td>
					<td>C</td>
				</tr>
				<tr>
					<td>Below 50</td>
					<td>F (Fail)</td>
				</tr>
			</table>
		</div>
	</body>
</html>
```

---

### 7.3 Product Comparison Table

```html
<!DOCTYPE html>
<html>
	<head>
		<title>Product Comparison</title>
		<style>
			table {
				width: 100%;
				border-collapse: collapse;
				margin: 20px 0;
			}
			th,
			td {
				border: 1px solid #ddd;
				padding: 15px;
				text-align: center;
			}
			thead th {
				background-color: #34495e;
				color: white;
			}
			tbody th {
				background-color: #95a5a6;
				text-align: left;
				font-weight: bold;
			}
			.highlight {
				background-color: #3498db;
				color: white;
				font-weight: bold;
			}
			.yes {
				color: green;
				font-weight: bold;
			}
			.no {
				color: red;
				font-weight: bold;
			}
		</style>
	</head>
	<body>
		<h1 style="text-align: center;">Laptop Comparison</h1>

		<table>
			<thead>
				<tr>
					<th>Features</th>
					<th>Basic Model</th>
					<th class="highlight">Pro Model</th>
					<th>Premium Model</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>Price</th>
					<td>₹35,000</td>
					<td>₹55,000</td>
					<td>₹85,000</td>
				</tr>
				<tr>
					<th>Processor</th>
					<td>Intel i3</td>
					<td>Intel i5</td>
					<td>Intel i7</td>
				</tr>
				<tr>
					<th>RAM</th>
					<td>8 GB</td>
					<td>16 GB</td>
					<td>32 GB</td>
				</tr>
				<tr>
					<th>Storage</th>
					<td>256 GB SSD</td>
					<td>512 GB SSD</td>
					<td>1 TB SSD</td>
				</tr>
				<tr>
					<th>Display</th>
					<td>14" HD</td>
					<td>15" Full HD</td>
					<td>16" 4K</td>
				</tr>
				<tr>
					<th>Graphics Card</th>
					<td>Integrated</td>
					<td>2GB Dedicated</td>
					<td>4GB Dedicated</td>
				</tr>
				<tr>
					<th>Battery Life</th>
					<td>6 hours</td>
					<td>8 hours</td>
					<td>10 hours</td>
				</tr>
				<tr>
					<th>Touchscreen</th>
					<td class="no">✗</td>
					<td class="yes">✓</td>
					<td class="yes">✓</td>
				</tr>
				<tr>
					<th>Fingerprint Sensor</th>
					<td class="no">✗</td>
					<td class="yes">✓</td>
					<td class="yes">✓</td>
				</tr>
				<tr>
					<th>Warranty</th>
					<td>1 Year</td>
					<td>2 Years</td>
					<td>3 Years</td>
				</tr>
			</tbody>
		</table>
	</body>
</html>
```

---

## Summary

In this part, you learned:

✅ **Table Basics** - Structure with `<table>`, `<tr>`, `<td>`, `<th>`  
✅ **Table Sections** - `<thead>`, `<tbody>`, `<tfoot>` for organization  
✅ **Cell Spanning** - `colspan` and `rowspan` for merging cells  
✅ **Table Styling** - Borders, colors, zebra striping, hover effects  
✅ **Column Groups** - Styling entire columns with `<colgroup>`  
✅ **Responsive Tables** - Making tables mobile-friendly  
✅ **Practical Applications** - Timetables, marks sheets, comparisons

---

## Practice Exercises

1. Create your own class timetable using all features learned
2. Build a marks sheet for 10 students with 5 subjects
3. Create a product comparison table for 3 mobile phones
4. Design a monthly expense tracker table
5. Build a responsive pricing table with different plans

---

**Next:** Part 3 will cover Advanced HTML - Forms and Form Elements

---

_Prepared by: Professor | Amity University Patna | CSIT256: Web Development Technology_
