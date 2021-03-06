<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="template/header.jsp"/>
<body>
    <c:if test="${not empty person}">
        <c:import url="template/menu.jsp"/>
        <h4>Cambio Clave</h4>
        <form action="control.do" method="post">
            Clave Actual
            <input type="password" name="x1"/>
            Clave Nueva
            <input type="password" name="x2"/>
            Confirmar Clave Nueva
            <input type="password" name="x3"/>
            <button class="btn" name="bt" value="cambio">
            Cambiar
            </button>
     
        </form>
        <p class="blue-grey-text">${msg}
        </p>
    </c:if>

    <c:if test="${empty person}">
        <p> 
            Seras redireccionado en 5 segundos
            <meta http-equiv="refresh" content="5; url=inicio.jsp">
        </p>
    </c:if>
    <c:import url="template/footer.jsp"></c:import>

</body>
</html>