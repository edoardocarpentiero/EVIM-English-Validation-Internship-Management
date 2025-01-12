<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:include page="navbarBlu.jsp"></jsp:include>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<!-- collegamenti esterni -->
<link rel="stylesheet" href="stiliCSS/stiliPropostaTirocinio.css">

<meta charset="ISO-8859-1">
<title>Proposta di tirocinio</title>
</head>

<body>

	<div class="container">
		<div class="row">
			<div class="col-lg-3">
				<jsp:include page="menu.jsp"></jsp:include>
			</div>

			<div class="col-lg-9"
				style="border: 1px solid #d7d7d7; background-color: white;">
				<p id="titolo" class="text-center">Proposta di tirocinio curriculare</p>
				<hr>
				
				<br>
				<form>
					<table class="table table-striped" id="tabella">

						<c:forEach items="${proposte}" var="proposta">
							<tbody>
								<tr id="numero">
									<td class="icon"><i class="fas fa-sort-amount-down"></i></td>
									<td class="">Numero proposta</td>
									<td><c:out value="${proposta.ID_Proposta}" /></td>
								</tr>
								<c:if test="${type eq 'azienda'}">
									<tr>
										<td class="icon"><i class="fas fa-building"></i></td>
										<td class="">Tutor Aziendale</td>
										<td><c:out value="${proposta.nomeTutorAziendale}" /> <c:out
												value="${proposta.cognomeTutorAziendale}" /></td>
									</tr>
								</c:if>
								<tr>
									<td class="icon"><i class="fas fa-info-circle"></i></td>
									<td class="">Obiettivi</td>
									<td><c:out value="${proposta.obiettivi}" /></td>
								</tr>
								<tr>
									<td class="icon"><i class="fas fa-building"></i></td>
									<td class="">Competenze</td>
									<td><c:out value="${proposta.competenze}" /></td>
								</tr>
								<tr>
									<td class="icon"><i class="fas fa-coins"></i></td>
									<td class="">Attivit�</td>
									<td><c:out value="${proposta.attivita}" /></td>
								</tr>
								<tr>
									<td class="icon"><i class="fas fa-box-open"></i></td>
									<td class="">Modalit�</td>
									<td><c:out value="${proposta.modalita}" /></td>
								</tr>

								<c:if test="${type ne 'tutoraziendale'}">
									<tr>
										<td></td>
										<td></td>
										<td style="text-align: right;"><a
											href="VisualizzaModificaProposta?idProposta=<c:out value="${proposta.ID_Proposta}"/>"
											role="button" class="btn btn-secondary"> Modifica </a> <a
											href="RimuoviProposta?idProposta=<c:out value="${proposta.ID_Proposta}"/>"
											role="button" class="btn btn-secondary"> Rimuovi </a></td>
									</tr>
								</c:if>
							</tbody>
						</c:forEach>

					</table>
				</form>
			</div>
		</div>
	</div>

	<br>
	<br>
	<jsp:include page="footer.jsp"></jsp:include>

</body>

<script>
/* da vedere
	$(document).ready(function(){
		$(".hrefTMP").click(function(){
			alert("ciao");
			var url=$(this).attr("href")
			var idProposta=$("#tutoraziendale").text();
			var tutorAziendale=$("#nomeCognomeTutor").text();
			alert("tutorAziendale-->"+tutorAziendale);
			if(tutorAziendale){
				alert(url+"&idProposta="+idProposta+"&tutorAziendale"+tutorAziendale);
				window.location.href=url+"&idProposta="+idProposta+"&tutorAziendale"+tutorAziendale;
		}
	});	
});*/
</script>
</html>
