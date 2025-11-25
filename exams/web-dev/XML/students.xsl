<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Student List</title>
                <style>
            table{
                border-collapse: collapse; width:60%; margin: 20px auto;
            }
            th, td{
                border: 1px solid black; padding: 8px; text-align: center; 
            }
            th { background-color: lightgray; }
                </style>
            </head>
            <body>
                <h2 style="text-align:center;">Student Details</h2>
                <table>
                    <tr>
                        <th>Roll</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Mobile</th>
                    </tr>
                    <xsl:for-each select = "students/student">
                        <tr>
                            <td>
                                <xsl:value-of select="roll"/>
                            </td>
                            <td>
                                <xsl:value-of select="name"/>
                            </td>
                            <td>
                                <xsl:value-of select="email"/>
                            </td>
                            <td>
                                <xsl:value-of select="mobile"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>