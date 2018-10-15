<%@page pageEncoding="UTF-8" contentType="image/svg+xml;charset=UTF-8;"%><%
StringBuilder sb=new StringBuilder();
sb.append("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 100 100\"><style>@keyframes a{0%{transform:scale(2)}40%,100%{transform:scale(1)}}rect{animation:1s ease-in infinite a;width:20px;height:60px;x:-10px;y:-30px;fill:#");
String hex=request.getParameter("a");//.jsp?a=&b=&c=
if(hex==null||"".equals(hex)){
	sb.append("87a5de");
}else{
	sb.append(hex);
};
sb.append("}</style><g style=\"transform:translateY(50px)\"><g style=\"transform:translateX(25px)\"><rect/></g><g style=\"transform:translateX(50px)\"><rect style=\"fill:#");
hex=request.getParameter("b");
if(hex==null||"".equals(hex)){
	sb.append("5f87d3");
}else{
	sb.append(hex);
};
sb.append(";animation-delay:.1s\"/></g><g style=\"transform:translateX(75px)\"><rect style=\"fill:#");
hex=request.getParameter("c");
if(hex==null||"".equals(hex)){
	sb.append("3769c8");
}else{
	sb.append(hex);
};
sb.append(";animation-delay:.2s\"/></g></g></svg>");
out.clear();
out.print(sb.toString());
out.close();
sb.setLength(0);
%>