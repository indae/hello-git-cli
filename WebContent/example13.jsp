<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>pageContext</title>
</head>
<body>
	<%! public void work(String p, PageContext pc) throws Exception{
			JspWriter out = pc.getOut();
			
			if (p.equals("incluse")){
				out.print("--include 전 -- <br>");
				pc.include("test.jsp");
				out.print("--include 후 -- <br>");
			} else if (p.equals("forward")){
				pc.forward("test.jsp");
				out.print("forward");
			}
			
		}
	%>
	<%
		String p = request.getParameter("p");
		this.work(p, pageContext);
	%>
</body>
</html>