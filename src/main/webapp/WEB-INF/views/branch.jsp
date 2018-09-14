<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<html>
 
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Employee Registration Form</title>
 
<style>
 
    .error {
        color: #ff0000;
    }
    tr:first-child{
            font-weight: bold;
            background-color: #C6C9C4;
        }
</style>
     
 	<!-- Bootstrap core CSS -->
    <link href="<c:url value='/static/css/bootstrap.min.css' />"  rel="stylesheet"></link>

    <!-- Custom styles for this template -->
    <link href="<c:url value='/static/css/small-business.css' />"  rel="stylesheet"></link>
    
</head>
 
<body>
 
   <!-- Navigation -->
		<%@include file="./shared/navbar.jsp"%>
		
    <h2>Branch Form</h2>
  
    <form:form method="POST" modelAttribute="branch">
        <form:input type="hidden" path="id" id="id"/>
        <table>
        	<tr><td>Create New Branch</td></tr>
            <tr>
                <td><label for="branchName">Branch Name: </label> </td>
                <td><form:input path="branchName" id="branchName"/></td>
                <td><form:errors path="branchName" cssClass="error"/></td>
            </tr>
         
            <tr>
                <td><label for="branchAddress">Branch Address: </label> </td>
                <td><form:input path="branchAddress" id="branchAddress"/></td>
                <td><form:errors path="branchAddress" cssClass="error"/></td>
            </tr>
            
            <tr>
                <td><label for="branchPhone">Branch Phone Number: </label> </td>
                <td><form:input path="branchPhone" id="branchPhone"/></td>
                <td><form:errors path="branchPhone" cssClass="error"/></td>
            </tr>
         
            <tr>
                <td><label for="branchOpenDate">Branch Opened Date: </label> </td>
                <td><form:input path="branchOpenDate" id="branchOpenDate"/></td>
                <td><form:errors path="branchOpenDate" cssClass="error"/></td>
            </tr>
     
            <tr>
                <td><label for="branchCode">Branch Code: </label> </td>
                <td><form:input path="branchCode" id="branchCode"/></td>
                <td><form:errors path="branchCode" cssClass="error"/></td>
            </tr>
     
            <tr>
                <td colspan="3">
                    <c:choose>
                        <c:when test="${editbranch}">
                            <input type="submit" value="Update"/>
                        </c:when>
                        <c:otherwise>
                            <input type="submit" value="Register"/>
                        </c:otherwise>
                    </c:choose>
                </td>
            </tr>
        </table>
    </form:form>
    <br/>
    <br/>
    <h2>List of All Branches</h2>  
    <table>
        <tr>
            <td>BRANCH NAME</td><td>Branch Address</td><td>Branch Phone</td><td>Opened Date</td><td>Branch Code</td><td></td>
        </tr>
        <c:forEach items="${branchs}" var="branch">
            <tr>
            <td>${branch.branchName}</td>
            <td>${branch.branchAddress}</td>
            <td>${branch.branchPhone}</td>
            <td>${branch.branchOpenDate}</td>
            <td><a href="<c:url value='/edit-${branch.branchCode}-branch' />">${branch.branchCode}</a></td>
            <td><a href="<c:url value='/delete-${branch.branchCode}-branch' />">delete</a></td>
            </tr>
        </c:forEach>
    </table>
    <br/>
    Go back to <a href="<c:url value='/' />">Go to Home</a>
        
    <!-- Bootstrap core JavaScript -->
	<script src="<c:url value='/static/jquery/jquery.min.js' />"></script>
	<script src="<c:url value='/static/js/bootstrap.bundle.min.js' />"></script>
	
</body>
</html>