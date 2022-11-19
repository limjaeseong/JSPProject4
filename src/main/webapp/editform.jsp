<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="com.member.dao.MemberDAO, com.member.bean.MemberVO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Form</title>
</head>
<body>
<%
    MemberDAO memberDAO = new MemberDAO();
    String id=request.getParameter("id");
    MemberVO u=memberDAO.getOne(Integer.parseInt(id));
    request.setAttribute("vo",u);
%>

<h1>Edit Form</h1>
<form action="edit_ok.jsp" method="post" enctype="multipart/form-data">
    <input type="hidden" name="sid" value="${vo.getSid()}"/>
    <table>
        <tr>
            <td>User ID:</td><td><input type="text" name="userid" value="${vo.getUserid()}" disabled/></td>
        </tr>
        <tr>
            <td>Name:</td><td><input type="text" name="username" value="${vo.getUsername()}"/></td>
        </tr>
        <tr>
            <td>Photo:</td><td><input type="file" name="photo" value="${vo.getPhoto()}" />
            <c:if test="${vo.getPhoto() ne ''}"><br /><img src="${pageContext.request.contextPath}/upload/${vo.getPhoto()}" class="photo"></c:if></td>
        </tr>
        <tr>
            <td>Email:</td><td><input type="text" name="email" value="${vo.getEmail()}" /></td>
        </tr>
        <tr>
            <td>Detail:</td><td><textarea cols="50" rows="5" name="detail">${vo.getDetail()}</textarea></td>
        </tr>
        <button type="button" onclick="history.back()">뒤로 가기</button>
        <button type="submit">수정하기</button>
    </table>
</form>

</body>
</html>