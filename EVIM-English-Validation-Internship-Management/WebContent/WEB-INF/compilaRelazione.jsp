<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="navbarBlu.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="stiliCSS/stiliMenu.css">
<link rel="stylesheet" href="stiliCSS/stiliPropostaTirocinio.css">

<meta charset="ISO-8859-1">
<title>Relazione Tirocinio</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-lg-3">
				<jsp:include page="menu.jsp"></jsp:include>
			</div>

			<div class="col-lg-9"
				style="border: 1px solid #d7d7d7; background-color: white;">
				<p id="titolo" style="font-size: 30px; color: #595959;">Compila
					relazione di tirocinio</p>
				<hr>
				<h6>Clicca sul nome del Tirocinante per poter compilare la
					relazione di tirocinio</h6>
				<div id="accordion">

<c:set var="counter" value="${0}"></c:set>
					<!-- <div class="card">
						<div id="headingOne>" style="background-color: #2C5278"> -->


					<c:forEach items="${studenti}" var="studente">
					<c:set var="counter" value="${counter+1}"></c:set>
					<div id="collapseDiv${counter}" class="collapse-div" role="tablist">
						<div class="collapse-header" id="heading${counter}"
							style="background-color: #2C5278">
							<button data-toggle="collapse" data-target="#collapse${counter}"
								aria-expanded="true" aria-controls="collapse${counter}" id="nome-tutor">
								<c:out value="${studente.name} ${studente.surname}"></c:out></button>
						</div>

						<div id="collapse${counter}" class="collapse" role="tabpanel"
							aria-labelledby="heading${counter}">
							<div class="collapse-body">

								<form action="CreaRelazione">
								<div class="form-group">
									<input name="emailstudente" type="hidden" value="${studente.email}">
									<textarea name="descrizione" class="form-control" id="exampleFormControlTextarea${counter}"
										placeholder="Compila verbale tirocinio..." rows="3"></textarea>
										
								</div>

								<span class="text-right" style="margin-left: 350px;"><button
										type="submit" class="btn btn-primary" data-toggle="modal"
										data-target="#exampleModalCenter"
										style="background-color: #2C5278;">INVIA</button></span>

									</form>

								<div class="modal fade" id="exampleModalCenter" tabindex="-${counter}"
									role="dialog" aria-labelledby="exampleModalCenterTitle"
									aria-hidden="true">
									<div class="modal-dialog modal-dialog-centered" role="document">
										<div class="modal-content">
											<div class="modal-header">

												<button type="button" class="close" data-dismiss="modal"
													aria-label="Close">
													<span aria-hidden="true">&times;</span>
												</button>
											</div>
											<div class="modal-body">Compila relazione effettuata
												con successo!</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-secondary"
													data-dismiss="modal">Close</button>
											</div>
										</div>
									</div>
								</div>
								<hr>

							</div>
						</div>

					</div>


			</c:forEach>	</div> 
				
				
			</div>
		</div>

	</div>

	<br>
	<br>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>