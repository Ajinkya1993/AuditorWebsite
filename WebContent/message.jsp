<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:if test="${!empty errorList}">
    <div class="row">
        <div class="alert alert-danger">
            <c:forEach items="${errorList}" var="error">
                <p><c:out value="${error}"/></p>
            </c:forEach>
        </div>
    </div>
</c:if>

<c:if test="${!empty successMsg}">
    <div class="row">
        <div class="alert alert-success">
            <p><c:out value="${successMsg}"/></p>
        </div>
    </div>
</c:if>