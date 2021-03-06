<%@page import ="com.travel.app.user.dao.UserInfoDAO" %>
<%@page import = "com.travel.app.user.dao.UserInfoDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
HttpSession ss = request.getSession();
String userid = (String) ss.getAttribute("id");
UserInfoDAO dao = new UserInfoDAO();
UserInfoDTO dto = dao.getByid(userid);
pageContext.setAttribute("dto", dto);
%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>mypage_user</title>

    <link rel="stylesheet" href="/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="/assets/css/templatemo.css">
    <link rel="stylesheet" href="/assets/css/custom.css">
    
     <!-- Bootstrap CSS -->
    <link rel="stylesheet" type="text/css" href="/assets/css/signupstyle.css">
    <link rel="apple-touch-icon" href="/assets/img/apple-icon.png">
    <link rel="shortcut icon" type="image/x-icon" href="/assets/img/favicon.ico">
    
    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="/assets/css/fontawesome.min.css">

        <style>
            body {
                min-height: 100vh;
            }
            .content-wrap {
              background-color: #69bb7e;
            
            }

            .input-form {
                max-width: 780px;
                margin-top: 80px;
                padding: 32px;
                background: #fff;
                -webkit-border-radius: 10px;
                -moz-border-radius: 10px;
                border-radius: 10px;
                -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
                -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
                box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
            }
        </style>
        <script src = "/assets/js/mypagemodify.js"></script>
        <script>
        //???????????? ??????
        function validatePwdCheck(el) {
            const _el = el ?? document.getElementById('user_pwcheck');
            if (!_el) {
                return false;
            }
            if (document.getElementById("user_pw").value !== document.getElementById("user_pwcheck").value) {
                _el.setCustomValidity('False');
                return false;
            }
            document
                .getElementById('user_pwcheck')
                .setCustomValidity('');
            return true;
        }
        
        function requestDelete(){
        	if(!confirm("????????? ?????????????????????????")) return;
        	alert("????????? ?????????????????? ???????????? ??? ??? ????????????");
        	window.location.replace('/user/delete.us');
        }
    </script>
    </head>
    <body>
    	<jsp:include page="/header.jsp"></jsp:include>
    	
    	<div class="content-wrap">
    	 <div class="container content">
            <div class="input-form-backgroud row">
                <div class="input-form col-md-12 mx-auto">
                    <h2 style="color: #68bb7d;" class="mb-3">??? ??????</h2>
                    <form class="validation-form" action="${pageContext.request.contextPath }/user/update.us" method="post">
                        <!-- ????????? -->
                        <div class="row">
                            <div class="col-md-12 mb-2">
                                <label for="user_id">????????? </label>
                                <input
                                    type="text"
                                    class="form-control"
                                    id="user_id"
                                    name="user_id"
                                    placeholder="?????????"
                                    value="${dto.user_id}"
                                    required="" readonly >
                                <div class="invalid-feedback">???????????? ??????????????????.</div>
                            </div>
                        </div>
                        <!-- ???????????? -->
                        <div class="mb-2">
                            <label for="user_pw">????????????</label>
                                <div class="row">
                            <div class="col-md-12 mb-2">                            
                                <input
                                    type="text"
                                    class="form-control"
                                    id="user_pw"
                                    name="user_pw"
                                    placeholder="????????????"
                                    max=""
                                    required="">
                            </div>
<!--                             <div class="col-md-3 mb-2"> -->
<!--                                 <button class="btn btn-primary btn-md btn-block" type="button">??????</button> -->
<!--                             </div> -->
                                
                            <div class="invalid-feedback">
                                ??????????????? ??????????????????
                            </div>
                        </div>
                        <!-- ???????????? ??????-->
                        <div class="mb-2">
                            <label for="user_pwcheck">??????????????????</label>
                            <input
                                type="text"
                                class="form-control"
                                id="user_pwcheck"
                                placeholder="??????????????????"
                                oninput="validatePwdCheck(this)"
                                required="">
                            <div class="invalid-feedback">
                                ??????????????? ??????????????????
                            </div>
                        </div>
                        <!-- ?????? -->
                        <div class="mb-2">
                            <label for="user_name">??????</label>
                            <div class="row">
                                <div class="col-md-12 mb-2">
                                    <input
                                        type="text"
                                        class="form-control"
                                        id="user_name"
                                        name="user_name"
                                        placeholder="??????"
                                        value="${dto.user_name}"
                                        max=""
                                        required="" readonly>
                                </div>
<!--                             <div class="col-md-3 mb-2"> -->
<!--                                 <button class="btn btn-primary btn-md btn-block" type="button">??????</button> -->
<!--                             </div> -->
                            <div class="invalid-feedback">
                                ?????? ??????????????????
                            </div>                            
                        </div>
                        <!-- ?????? -->
                        <div class="col- md 12 mb-2">
                            <label for="user_birth">????????????</label><br>
                            
                            <div class="row">
                                <div class="col-md-12 mb-2">
                                    <input
                                        type="date"
                                    class="form-control"
                                    id="user_birth"
                                    name="user_birth"
                                    value="${dto.user_birth}"
                                    max=""
                                    required="" readonly>
                                </div>
<!--                             <div class="col-md-3 mb-2"> -->
<!--                                 <button class="btn btn-primary btn-md btn-block" type="button">??????</button> -->
<!--                             </div> -->
                            <div class="invalid-feedback">
                                ??????????????? ????????? ??????????????????
                            </div>
                        </div>
                        <!-- ????????? ?????? ??? ???????????? -->
                        <div class="mb-2">
                            ???????????????
                        </div>
                        <!-- ????????? ?????? -->
                        <div class="row">
<!--                             <div class="col-md-2 mb-2"> -->
<!--                                 <select class="custom-select d-block w-100" id="carrier" required=""> -->
<!--                                     <option value=""></option> -->
<!--                                     <option>SKT</option> -->
<!--                                     <option>KT</option> -->
<!--                                     <option>LG U+</option> -->
<!--                                     <option>?????????</option> -->
<!--                                 </select> -->
<!--                                 <div class="invalid-feedback">???????????? ??????????????????</div> -->
<!--                             </div> -->
                            <div class="col-md-9 mb-2">
                                <input
                                    type="text"
                                    class="form-control"
                                    id="user_tell"
                                    name="user_tell"
                                    placeholder="-??? ???????????? ??????????????????"
                                    value="${dto.user_tell}"
                                    maxlength="13"
                                    required="">
                                <div class="invalid-feedback">????????? ????????? ??????????????????</div>
                            </div>
                            <div class="col-md-3 mb-2">
                                <button class="btn btn-primary btn-md btn-block" type="button">???????????? ??????</button>
                            </div>
                        </div>
                        <!-- ???????????? ?????? -->
                        <div class="row">
                            <div class="col-md-9 mb-2">
                                <input
                                    type="text"
                                    class="form-control"
                                    id="check"
                                    placeholder="??????????????? ??????????????????"
                                    maxlength="6"
                                    required="">
                            </div>
                            <div class="col-md-3 mb-2">
                                <button class="btn btn-primary btn-md btn-block" type="button">???????????? ??????</button>
                            </div>
                        </div>
                        <!-- ????????? -->
                        <div class="mb-2">
                            <label for="user_email">?????????</label>
                     	<div class="row">
                            <div class="col-md-12 mb-2">
                                <input
                                    type="text"
                                    class="form-control"
                                    id="user_email"
                                    name="user_email"
                                    placeholder="you@example.com"
                                    value="${dto.user_email}"
                                    max=""
                                    required="">
                            </div>
<!--                             <div class="col-md-3 mb-2"> -->
<!--                                 <button class="btn btn-primary btn-md btn-block" type="button">??????</button> -->
<!--                             </div>    -->
                        </div>
                        <!-- ??????????????? ???????????? -->
                        <div class="row">
                            <div class="col-md-6 mb-4">
                                <button class="btn btn-primary btn-md btn-block" type="submit">????????????</button>
                       		</div>
                           <div class="col-md-6 mb-4">
                                <button class="btn btn-primary btn-md btn-block" type="button" onclick="requestDelete()">????????????</button>
                       		</div>
                        </div>
                    </form>
                </div>
            </div>
            <footer class="my-3 text-center text-small">
                <p class="mb-1">??mypage_user</p>
            </footer>
        </div>
    	</div>
       
    </body>
        <!-- Start Script -->
    <script src="/assets/js/jquery-1.11.0.min.js"></script>
    <script src="/assets/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="/assets/js/bootstrap.bundle.min.js"></script>
    <script src="/assets/js/templatemo.js"></script>
    <script src="/assets/js/custom.js"></script>
    <!-- End Script -->
</body>
</html>