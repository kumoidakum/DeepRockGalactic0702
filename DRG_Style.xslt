<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Character Stats</title>
                <style>
                  table {
                    border-collapse: collapse;
                    width: 60%;
                    margin: 20px auto;
                    color: white;
                    background-color: black;
                    position: relative;
                    top: 250px;
                    }
                    th, td {
                    border: 1px solid #ddd;
                    padding: 8px;
                    text-align: center;
                    
                    }
                    th {
                    background-color: black;
                    font-weight: bold;
                    color: green;
                    }
                    h1 {
                    text-align: center;
                    color: #FFA500;
                    }
                </style>
            </head>
            <body>
            
              <table border="1">
                <tr>
                  <th colspan="5" style="color: #FFA500;" >Statistiken per Charakter</th>
                </tr>
                <tr>
                        <th style="color: #FFA500;" >Beschreibung</th>
                        <th style="color: #FFA500;" >Scout</th>
                        <th style="color: #FFA500;" >Gunner</th>
                        <th style="color: #FFA500;" >Engineer</th>
                        <th style="color: #FFA500;" >Driller</th>
                    </tr>
                    <xsl:for-each select="characters/character">
                        <tr>
                            <td><xsl:value-of select="name"/></td>
                            <td><xsl:value-of select="scout"/></td>
                            <td><xsl:value-of select="gunner"/></td>
                            <td><xsl:value-of select="engineer"/></td>
                            <td><xsl:value-of select="driller"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
