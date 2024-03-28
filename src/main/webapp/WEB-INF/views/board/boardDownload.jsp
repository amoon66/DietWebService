<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>download</title>
</head>
<body>
<%	//범용적인 코드임. 사용시 폴더명 "/boardUpload/" 만 바꿔주면됨
	request.setCharacterEncoding("UTF-8");
	
	String fileUrl = "";
	String path = request.getParameter("path");
	String saveFolder = "/boardUpload/" + path;

	fileUrl = request.getSession().getServletContext().getRealPath(saveFolder);
	System.out.println(fileUrl);

	response.setContentType("application/octet-stream;");
	response.setHeader("Content-Transfer-Encoding", "binary");
	response.setHeader("Cache-Control", "no-store, no-cache,must-revalidate");
	response.setHeader("Cache-Control", "post-check=0, pre-check=0");
	response.setHeader("Pragma", "no-cache");
	response.setHeader("Content-Disposition", "attachment; filename =\"" + request.getParameter("path") + "\"");
	
	out.clear();//아래에 스트림을 2개 열면 쫑이나기 때문에 하나를 닫아줌
	out = pageContext.pushBody();
	
	java.io.BufferedOutputStream outs
			= new java.io.BufferedOutputStream(response.getOutputStream());

	byte fileContens[] = new byte[8192];
	int read = 0;
	java.io.BufferedInputStream fin = null;
	try {
		fin = new java.io.BufferedInputStream(new java.io.FileInputStream(fileUrl));

		while ((read = fin.read(fileContens)) != -1) {
			outs.write(fileContens, 0, read);
			outs.flush();
		}
	} catch (Exception e) {
		;
	} finally {
		if (outs != null)
			outs.close();
		if (fin != null)
			fin.close();
	}
%>
</body>
</html>