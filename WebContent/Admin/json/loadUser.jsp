<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="userList" value="${sessionScope.userList}"></c:set>
<c:set var="len" value="${function:length(userList)}"></c:set>

[<c:forEach items="${sessionScope.userList}" var="i" varStatus="j">{"email":"${i.email}","email":"${i.email}"}
<c:if test="${len ne j.count }">,</c:if></c:forEach>]
