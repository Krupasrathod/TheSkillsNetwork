<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="userList" value="${sessionScope.countrylist}"></c:set>
<c:set var="len" value="${function:length(countrylist)}"></c:set>

[<c:forEach items="${sessionScope.countrylist}" var="i" varStatus="j">{"countryName":"${i.countryName}","countryID":"${i.countryID}"}
<c:if test="${len ne j.count }">,</c:if></c:forEach>]
