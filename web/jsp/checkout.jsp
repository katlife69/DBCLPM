<%-- 
    Document   : payment
    Created on : Nov 13, 2021, 10:00:19 AM
    Author     : Admin
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "custom" uri = "../WEB-INF/custom-tag.tld"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Shopyy</title>
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link href="${pageContext.request.contextPath}/css/variables.css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/css/auth-modals.css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/css/header.css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/css/footer.css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/css/checkout.css" rel="stylesheet" />

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body class="bg-light">

        <!-- Nav -->
        <%@include file="/jsp/components/header.jsp" %>


        <!-- payment -->
        <div class="container my-5 p-3">
            <br>
            <div class="ps-3 text-capitalize">
                <h3>Thanh to??n</h3>
            </div>
            <hr>
            <div class="row row-cols-3 checkout-progress">
                <div class="col-3"></div>
                <div class="col-6">
                    <div class="position-relative">
                        <div class="progress" style="height: 2px;">
                            <div class="progress-bar progress-bar-animated" style="width: 66%; height: 2px;"></div>
                        </div>
                        <div class="position-absolute text-center align-content-center" style="left: 16%; bottom: -8px;">
                            <div><i class="bi-cart-fill me-1 text-primary"></i></div>
                            <div>
                                <p class="text-primary mb-2">Gi??? h??ng</p>
                            </div>
                            <div><span class="badge bg-primary text-white ms-1 rounded-pill my-0">1</span></div>
                        </div>
                        <div class="position-absolute text-center align-content-center" style="left: 45%; bottom: -8px;">
                            <div><i class="bi-currency-dollar me-1 text-primary"></i></div>
                            <div>
                                <p class="text-primary mb-1">Thanh to??n</p>
                            </div>
                            <div><span class="badge bg-primary text-white ms-1 rounded-pill my-0">2</span></div>
                        </div>
                        <div class="position-absolute text-center align-content-center" style="right: 16%; bottom: -8px;">
                            <div><i class="bi-check-circle me-1 text-secondary"></i></div>
                            <div>
                                <p class="text-secondary mb-1">Ho??n t???t</p>
                            </div>
                            <div><span class="badge bg-secondary text-white ms-1 rounded-pill my-0">3</span></div>
                        </div>
                    </div>
                </div>
                <div class="col-3"></div>
            </div>
            <div class="row row-cols-3 mt-5 mb-4 px-5">
                <div class="col-4 px-2">
                    <div class="border pb-2 shadow-sm bg-white rounded" style="height: 100%;">
                        <div class="px-2 py-2 mb-2" style="background-color: rgb(245, 245, 245);">
                            <h6 class="m-0">1. ?????A CH??? THANH TO??N V?? GIAO H??NG</h6>
                        </div>
                        <div class="py-1 px-3">
                            <div class="pb-1"><p>TH??NG TIN THANH TO??N</p></div>
                            <div id="lack-individual-info-msg" class="text-danger fs-7"></div>
                            <div class="shipment-info mt-0 row">
                                <div class="col my-auto">
                                    <label class="form-label mb-0">Ng?????i Nh???n:</label>
                                </div>
                                <div class="col">
                                    <input class="form-control-plaintext" readonly value="<c:out value="${user.fullName.toString()}" />" >
                                </div>
                            </div>
                            <div class="shipment-info d-flex row">
                                <div class="col  my-auto">
                                    <label class="form-label mb-0">S??? ??i???n tho???i:</label>
                                </div>
                                <div class="col">
                                    <input class="form-control-plaintext" readonly value="<c:out value="${user.phone}" />" >
                                </div>
                            </div>
                            <div class="shipment-info d-flex row">
                                <div class="col my-auto">
                                    <label class="form-label mb-0">?????a ch??? c??? th???:</label>
                                </div>
                                <div class="col">
                                    <input class="form-control-plaintext" readonly value="<c:out value="${user.address.addressDetail}" />" >
                                </div>
                            </div>
                            <div class="shipment-info d-flex row">
                                <div class="col my-auto">
                                    <label class="form-label mb-0 ">Qu???n/Huy???n:</label>
                                </div>
                                <div class="col">
                                    <input class="form-control-plaintext" readonly value="<c:out value="${user.address.district}" />" >
                                </div>
                            </div> 
                            <div class="shipment-info d-flex row">
                                <div class="col my-auto">
                                    <label class="form-label mb-0">Th??nh ph???:</label>
                                </div>
                                <div class="col">
                                    <input class="form-control-plaintext" readonly value="<c:out value="${user.address.city}" />" >
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-4 px-2">
                    <div class="border pb-2 shadow-sm bg-white rounded" style="height: 100%;">
                        <div class="px-2 py-2 mb-2" style="background-color: rgb(245, 245, 245);">
                            <h6 class="m-0">2. THANH TO??N V?? V???N CHUY???N</h6>
                        </div>
                        <div class="py-1 px-3">
                            <div class="shipment">
                                <div class="pb-1"><p>V???N CHUY???N</p></div>

                                <div class="shipment-type mb-3">
                                    <div class="form-group mb-2">
                                        <label class="fw-normal text-capitalize fs-6 mb-1" for="shipment-unit-select">????n v??? v???n chuy???n</label>
                                        <select class="form-select" id="shipment-unit-select" name="shipment-unit" disabled>
                                            <option value="">-- Ch???n ????n v??? v???n chuy???n --</option>
                                            <option value="ghn" selected>Giao h??ng nhanh</option>
                                        </select>
                                    </div>

                                    <div class="form-group">
                                        <label class="fw-normal text-capitalize fs-6 mb-1" for="shipment-type-select">H??nh th???c v???n chuy???n</label>
                                        <select class="form-select" id="shipment-type-select" name="shipment-type">
                                            <option value="" selected>-- Ch???n h??nh th???c v???n chuy???n --</option>
                                        </select>
                                    </div>

                                    <div class="shipment-type-msg text-danger fs-6 mt-1"></div>
                                </div>

                            </div>

                            <div class="payment">
                                <div class="payment-type mt-4">
                                    <div class="py-2"><p>PH????NG TH???C THANH TO??N</p></div>
                                    <div>
                                        <div class="form-group mb-2">
                                            <input type="radio" id="bank" name="payment-type" value="bank" class="me-2">
                                            <label for="bank">Thanh to??n qua ng??n h??ng</label>
                                        </div>

                                        <div class="form-group">
                                            <input type="radio" id="cod" name="payment-type" value="cod" class="me-2">
                                            <label for="cod">Thanh to??n khi nh???n h??ng</label>
                                        </div>

                                        <div class="payment-type-msg text-danger fs-6 mt-1"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-4 px-2">
                    <div class="border pb-2 shadow-sm bg-white rounded" style="height: 100%;">
                        <div class="px-2 py-2 mb-2" style="background-color: rgb(245, 245, 245);">
                            <h6 class="m-0">3. TH??NG TIN ????N H??NG</h6>
                        </div>
                        <div class="px-3">
                            <div id="order-item">
                                <ul class="list-unstyled">
                                </ul>
                            </div>
                            <hr>
                            <div class="d-flex my-0 align-items-center" style="justify-content: space-between;">
                                <h6>T???ng ti???n h??ng</h6>
                                <div id="item-total-price">0<sup>??</sup></div>
                            </div>
                            <hr>
                            <div class="d-flex my-0 align-items-center" style="justify-content: space-between;">
                                <h6>Ph?? v???n chuy???n</h6>
                                <div id="shipping-cost">0<sup>??</sup></div>  
                            </div>
                            <hr>
                            <div class="d-flex" style="justify-content: space-between;">
                                <h6>T???ng thanh to??n</h6>
                                <div id="total-bill">0<sup>??</sup></div>
                            </div>
                            <hr class="mb-5">
                            <div class="text-end">
                                <button class="btn btn-primary pay-btn" id="pay-btn">Thanh to??n</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="policy text-center text-muted">
                Nh???n "?????t h??ng" ?????ng ngh??a v???i vi???c b???n ?????ng ?? tu??n theo 
                <a href="${pageContext.request.contextPath}/policy" class="text-decoration-none">??i???u kho???n Shopyy</a>
            </div>
        </div>

        <!-- Footer -->
        <%@include file="/jsp/components/footer.jsp" %>


        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="${pageContext.request.contextPath}/js/fill-info.js"></script>

    </body>
</html>
