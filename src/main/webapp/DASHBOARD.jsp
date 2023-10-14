<!DOCTYPE html>
<html>
<head>
    <title>Select Operation to Perform</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            text-align: center;
        }
        
        h1 {
            color: #333;
            margin-top: 50px;
        }
        
        h4 {
            margin-top: 20px;
        }
        
        a {
            color: #0066cc;
            text-decoration: none;
        }
        
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <h1>Select Operation to Perform: ${sessionScope.username}</h1>
    <h4><a href="addbook.jsp">Add Book</a></h4>
    <h4><a href="deletebook.jsp">Delete Book</a></h4>
    <h4><a href="Displaybookscr.jsp">Display All Books</a></h4>
    <h4><a href="Updatebookdetails.jsp">Update Book</a></h4>
    <h4><a href="Searchbook.jsp">Search Book</a></h4>
</body>
</html>
