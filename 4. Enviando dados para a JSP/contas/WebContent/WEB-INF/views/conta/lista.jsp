<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri 		= "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri 		= "http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language 	= "java" contentType = "text/html; charset=UTF-8" pageEncoding = "UTF-8"%>

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<th>Código</th>
			<th>Descricao</th>
			<th>Valor</th>
			<th>Tipo</th>
			<th>Paga?</th>			
			<th>Data De Pagamento</th>							
		</tr>
		
		<c:forEach items = "${todasContas}" var = "conta">
			<tr>
				<td>${conta.id}</td>
				<td>${conta.descricao}</td>
				<td>${conta.valor}</td>
				<td>${conta.tipo}</td>
				<td>
					<c:if test="${conta.paga eq true}">
						Paga!				
					</c:if>
	
					<c:if test="${conta.paga eq false}">
						Nao Paga!				
					</c:if>
				</td>
		
				<td><fmt:formatDate value = "${conta.dataPagamento.time}" pattern = "dd/mm/aaa"/> </td>				
				<td>${conta.tipo}</td>																
			</tr>
		</c:forEach>		
	</table>
</body>
</html>