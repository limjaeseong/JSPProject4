<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>

<h1>Add New Post</h1>
<form action="add_ok.jsp" method="post" enctype="multipart/form-data">
    <table>
        <tr><td>User ID:</td><td><input type="text" name="userid"/></td></tr>
        <tr><td>User name:</td><td><input type="text" name="username"/></td></tr>
        <tr><td>Email address:</td><td><input type="text" name="email"/></td></tr>
        <tr><td>Photo:</td><td><input type="file" name="photo"/></td></tr>
        <tr><td>Detail:</td><td><textarea cols="50" rows="5" name="detail"></textarea></td></tr>
        <button type="button" onclick="location.href='list.jsp'">목록 보기</button>
        <button type="submit">추가하기</button>
    </table>
</form>

</body>
</html>
