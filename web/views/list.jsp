<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Users list</title>
    <link href="css/main.css" rel="stylesheet" type="text/css">
</head>
<body>
    <div>
        <h1>Users list:</h1>
    </div>
    <ul>
        <%
            List<String> names = (List<String>) request.getAttribute("userNames");

            if (names != null && !names.isEmpty()) {
                out.println("<ui>");
                for (String s : names) {
                    out.println("<li>" + s + "</li>");
                }
                out.println("</ui>");
            } else out.println("<p>There are no users yet!</p>");
        %>
    </ul>
    <div>
        <button onclick="location.href='/'">Back to main</button>
    </div>
</body>
</html>
