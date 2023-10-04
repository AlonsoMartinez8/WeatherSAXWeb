<%@page import="model.Dia"%>
<%@page import="manejador.ManejadorWeb"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!doctype html>
<html lang="en">

<head>
    <title>OPEN WEATHER SAX WEB</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
        }
        body {
            min-height: 100vh;
            background: linear-gradient(90deg, #3d4355, #2344dd);
            padding: 40px;
        }
        h1 {
        	color: #f2f2f2;
        	margin-bottom: 40px;
        }
        .card {
            background: none;
            border: 1px solid #f2f2f2;
            color: #f2f2f2;
            transition: ease .3s;
            &:hover{
            	box-shadow: 0 0 20px #f2f2f2;
            	cursor: pointer;
            }
        }
    </style>
</head>

<body>
	<%
		ManejadorWeb manejador = new ManejadorWeb("http://api.openweathermap.org/data/2.5/forecast?q=Toledo,es&mode=xml&APPID=601c9db344b44f9774ef76a4c07979b1&lang=sp");
		ArrayList<Dia> dias = manejador.parsear();
	%>
	<h1 class="text-center">OPEN WEATHER SAX WEB</h1>
    <div class="container">
        <div class="row g-3">
        <%
                for (Dia dia : dias){
        %>
        	<div class="col-lg-3 col-md-4 col-md-6">
                <div class="card text-center">
                    <div class="card-header">
						<small> <%=dia.getFrom()%> <br> <%= dia.getTo() %>
						</small>
					</div>
                    <div class="card-body">
                        <img src="http://openweathermap.org/img/wn/<%= dia.getIcono() %>@2x.png" width="40" class="img"/>
                        <p class="card-text small"><%= dia.getProno() %></p>
                    </div>
                    <div class="card-footer text-start">
                        <p class="card-text">Max : <%= dia.getMax() %> ºC</p>
                        <p class="card-text">Min : <%= dia.getMin() %> ºC</p>
                        <p class="card-text">Precipitacion : <%= dia.getPreci() %> %</p>
                    </div>
                </div>
            </div>
        <%}
        %>
        </div>
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
        integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous">
        </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
        integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous">
        </script>
</body>

</html>