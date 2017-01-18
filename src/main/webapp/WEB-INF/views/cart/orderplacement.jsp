<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<title>SHipped</title>
<%@ include file="Header.jsp" %>
<!DOCTYPE html><br><br><br><br><br>

<h1 style="text-align:justify; color:#1E7145 ;"><b style="text-align: center;">Thank You!!!!!</b><br>Your order is placed :${order.userorderid}</h1>

<%@ include file="Footer.jsp" %>
