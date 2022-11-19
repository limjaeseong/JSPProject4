<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.member.dao.MemberDAO"%>
<%@ page import="com.member.bean.MemberVO"%>
<%@ page import="com.member.common.FileUpload" %>
<%
    String sid = request.getParameter("id");
    if(sid != ""){
        int id = Integer.parseInt(sid);
        MemberDAO memberDAO = new MemberDAO();
        MemberVO u = new MemberVO();
        u.setSid(id);

        String filename = memberDAO.getPhotoFilename(id);
        if(filename != null)
            FileUpload.deleteFile(request, filename);

        memberDAO.deleteMember(u);
    }
    response.sendRedirect("list.jsp");
%>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
