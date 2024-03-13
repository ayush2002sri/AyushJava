<%
String message = (String) session.getAttribute("msg");
if (message != null) {
%>
<div class="alert alert-primary alert-dismissible fade show text-center"
	role="alert">
	<strong><%=message%></strong>
	<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
<%
session.removeAttribute("msg");
}
%>