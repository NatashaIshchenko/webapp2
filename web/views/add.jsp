<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add user</title>
    <link href="css/main.css" rel="stylesheet" type="text/css">
</head>
<body>
    <div>
    <%
        if (request.getAttribute("userName") != null) {
            out.println("<p>User '" + request.getAttribute("userName") + "' added!</p>");
        }
    %>
    </div>
    <div>
        <h1>Add new user:</h1>
    </div>
    <form method="post" action="add" >
        <label>Name:
            <input type="text" name="name"><br />
        </label>

        <label>Password:
            <input type="password" name="pass"><br />
        </label>
        <button type="submit">Submit</button>
    </form>

    <div>
        <button onclick="location.href='/'">Back to main</button>
    </div>

</body>
</html>
