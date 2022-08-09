<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>Form Elements | Zircos - Responsive Bootstrap 4 Admin Dashboard</title>

        <jsp:include page="/WEB-INF/layout/meta_css.jsp"></jsp:include>

        <link href="/assets\libs\toastr\toastr.min.css" rel="stylesheet" type="text/css">

    </head>

    <body data-layout="horizontal">

        <!-- Begin page -->
        <div id="wrapper">

            <!-- Navigation Bar-->
            <jsp:include page="/WEB-INF/layout/top_nav.jsp"></jsp:include>
                <!-- End Navigation Bar-->

            <!-- ============================================================== -->
            <!-- Start Page Content here -->
            <!-- ============================================================== -->

            <div class="content-page">
                <div class="content">

                    <!-- Start Content-->
                    <div class="container-fluid">

                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box">
                                    <div class="page-title-right">
                                        <ol class="breadcrumb m-0">
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Zircos</a></li>
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Forms</a></li>
                                            <li class="breadcrumb-item active">Form elements</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Form elements</h4>
                                </div>
                            </div>
                        </div>
                        <!-- end page title -->

                        <div class="row">
                            <div class="col-sm-12">
                                <form class="form-horizontal" method="post">
                                    <c:if test="${requestScope.errors!=null}">
                                        <div class="alert alert-icon alert-danger alert-dismissible fade show mb-0" role="alert">
                                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                <span aria-hidden="true">×</span>
                                            </button>
                                            <c:forEach items="${requestScope.errors}" var="e">
<%--                                                <strong>${e.key}</strong> </br>--%>

                                                <strong>*Field: ${fn:toUpperCase(e.key)}</strong> </br>
                                                <c:forEach items="${e.value}" var="item">
                                                    <span>${item}</span> </br>
                                                </c:forEach>
                                            </c:forEach>

                                        </div>
                                    </c:if>

                                    <div class="form-group row">
                                        <label class="col-md-2 control-label">Name</label>
                                        <div class="col-md-10">
                                            <input type="text" name="name" class="form-control" value="${requestScope.user.getName()}" >
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-md-2 control-label" for="example-email">Email</label>
                                        <div class="col-md-10">
                                            <input type="email" id="example-email" name="email" value="${requestScope.user.getEmail()}" class="form-control" placeholder="Email">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-md-2 control-label">Password</label>
                                        <div class="col-md-10">
                                            <input type="password" name="password" class="form-control" value="${requestScope.user.getPassword()}">
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-md-2 control-label">Country</label>
                                        <div class="col-md-10">
                                            <select class="form-control" name="idCountry">
                                                <c:forEach var="country" items="${applicationScope.listCountry}">
                                                    <option value="${country.getId()}">${country.getName()}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </div>


                                    <div class="form-group row">
                                        <label class="col-md-2 control-label"></label>
                                        <div class="col-md-10">
                                            <button type="submit" class="btn btn-purple waves-effect waves-light">Submit</button>
                                        </div>
                                    </div>


                                </form>
                            </div>
                        </div>
                        <!-- end row -->

                    </div>
                    <!-- end container-fluid -->

                </div>
                <!-- end content -->

                

                <!-- Footer Start -->
                <footer class="footer">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                2018 - 2020 &copy; Zircos theme by <a href="">Coderthemes</a>
                            </div>
                        </div>
                    </div>
                </footer>
                <!-- end Footer -->

            </div>


            <!-- ============================================================== -->
            <!-- End Page content -->
            <!-- ============================================================== -->

        </div>
        <!-- END wrapper -->

        <!-- Right Sidebar -->
        <jsp:include page="/WEB-INF/layout/rightbar.jsp"></jsp:include>


        <jsp:include page="/WEB-INF/layout/footer_js.jsp">
            <jsp:param name="page" value="create"/>
        </jsp:include>
        <c:if test="${requestScope.success!=null}">
            <script>

                $( document ).ready(function() {

                    <% String success= (String) request.getAttribute("success"); %>

                    var js_Success="<%= success %>";

                    toastr.options = {
                        "closeButton": true,
                        "debug": false,
                        "newestOnTop": false,
                        "progressBar": false,
                        "positionClass": "toast-top-right",
                        "preventDuplicates": false,
                        "onclick": null,
                        "showDuration": "300",
                        "hideDuration": "1000",
                        "timeOut": "5000",
                        "extendedTimeOut": "1000",
                        "showEasing": "swing",
                        "hideEasing": "linear",
                        "showMethod": "fadeIn",
                        "hideMethod": "fadeOut"
                    }
                    toastr["success"](js_Success)
                });

            </script>
        </c:if>
    </body>

</html>