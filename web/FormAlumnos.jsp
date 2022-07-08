<%-- 
    Document   : FormAlumnos
    Created on : 29/06/2022, 09:44:52 AM
    Author     : EliasSan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dato.Dato"%>
<!DOCTYPE html>
<%! 
    Dato dato[]=new Dato[10];
    int cont=0;
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <title>Formulario en JSP</title>
    </head>
    <body>
    
        <div class="container">
            <div class="row">
                <div class="col col-7">
                 <h1>Formulario en JSP</h1>
                 <form action="FormAlumnos.jsp" method="post">
                     <%
                        if (request.getParameter("btnRegistrar") != null) {
                                
                                dato[cont] = new Dato();
                               
                                dato[cont].setMatricula(request.getParameter("tfMatricula"));
                                dato[cont].setNombre(request.getParameter("tfNombre"));
                                dato[cont].setApellidos(request.getParameter("tfApellidos"));
                                dato[cont].setDdi(Integer.parseInt(request.getParameter("tfDdi")));
                                dato[cont].setDwi(Integer.parseInt(request.getParameter("tfDwi")));
                                dato[cont].setEcbd(Integer.parseInt(request.getParameter("tfEcbd")));
                                dato[cont].promediar();
                                cont++;
                                
                            }
                     %>
                     <div class="form-row">
                         <div class="form-group col-md-5">
                             <label for="inputMatri">Matricula</label>
                             <input type="text" class="form-control" name="tfMatricula" id="inputMatri" placeholder="Matricula">
                         </div>
                         <div class="form-group col-md-5">
                             <label for="inputName">Nombre del alumno</label>
                             <input type="text" class="form-control" name="tfNombre" id="inputName" placeholder="Nombre">
                         </div>
                     </div>
                     <div class="form-group col-md-5" >
                         <label for="inputApellidos">Apellidos</label>
                         <input type="text" class="form-control" name="tfApellidos" id="inputApellidos" placeholder="Apellidos">
                     </div>

                     <div class="form-row" id="Califs">
                         <div class="form-group col-md-2">
                             <label for="inputDdi">DDI</label>
                             <input type="number" class="form-control" name="tfDdi" id="inputDdi" min="7" max="10">
                         </div>
                         <div class="form-group col-md-2">
                             <label for="inputDwi">DWI</label>
                             <input type="number" class="form-control" name="tfDwi" id="inputDwi" min="7" max="10">
                         </div>

                         <div class="form-group col-md-2">
                             <label for="inputEcbd">ECBD</label>
                             <input type="number" class="form-control" name="tfEcbd" id="inputEcbd" min="7" max="10">
                         </div>

                         <button type="submit" class="btn btn-primary mt-3" name="btnRegistrar">Registrar</button>
                 </form>
                </div>
            </div>
                <div class="col col-5">
                        <div class="Col-auto mt-2">
                            <table class="table table-bordered table-hover table-dark">
                                <thead>
                                    <tr>
                                        <th>Matricula</th>
                                        <th>Alumno</th>
                                        <th>Apellidos</th>
                                        <th>DDI</th>
                                        <th>DWI</th>
                                        <th>ECBD</th>
                                        <th>Prom</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <% 
                                         
                                     for(int i=0;i<cont;i++)
                                     {
                                         
                                     
                                      
                                    %>
                                    <tr>
                                        <td><%=dato[i].getMatricula()%></td>
                                        <td><%=dato[i].getNombre()%></td>
                                        <td><%=dato[i].getApellidos()%></td>
                                        <td><%=dato[i].getDdi()%></td>
                                        <td><%=dato[i].getDwi()%></td>
                                        <td><%=dato[i].getEcbd()%></td>
                                        <td><%=dato[i].promediar()%></td>
                                    </tr> 
                       
                                    <% }%>
                                </tbody>
                                
                            </table>
                        </div>
                    </div>
                </div>
         </div>
    </body>
</html>
