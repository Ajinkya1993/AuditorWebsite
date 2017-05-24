<jsp:include page="header.jsp" />
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<body>
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-9 col-sm-offset-3">
                <jsp:include page="message.jsp" />
                <h2 class="text-center">
                    Data
                </h2>
                <div class="row clearfix">
                    <div class="col-md-12 column">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th class="text-center">
                                        First Name
                                    </th>
                                    <th class="text-center">
                                        Last Name
                                    </th>
                                    <th class="text-right">
                                        Gender
                                    </th>
                                    <th class="text-right">
                                        Zip Code
                                    </th>
                                    <th class="text-right">
                                        State
                                    </th>
                                    <th>
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="fund" items="${customers}">
                                <tr>
                                    <td class="text-center">
                                        ${customers.firstname}
                                    </td>
                                    <td class="text-center">
                                        ${customers.lastname}
                                    </td>
                                    <td class="text-center">
                                    	${customers.gender}
                                    </td>
                                    <td class="text-right">
                                        ${customers.zip}
                                    </td>
                                    <td class="text-center">
                                    	${customers.state}
                                    </td>
                                   
                                </tr>
								</c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

	<jsp:include page="footer.jsp" />

</body>

</html>
