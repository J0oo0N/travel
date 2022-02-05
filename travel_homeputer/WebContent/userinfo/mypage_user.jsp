<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>mypage_user</title>

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" type="text/css" href="userinfo_assets/css/signupstyle.css">

        <style>
            body {
                min-height: 100vh;
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
        <script src = "userinfo_assets/js/mypagemodify.js"></script>
        <script>
        //비밀번호 확인
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
        </script>
    </head>
    <body>
        <div class="container">
            <div class="input-form-backgroud row">
                <div class="input-form col-md-12 mx-auto">
                    <h2 style="color: #68bb7d;" class="mb-3">내 정보</h2>
                    <form class="validation-form" novalidate="">
                        <!-- 아이디 -->
                        <div class="row">
                            <div class="col-md-12 mb-2">
                                <label for="user_id">아이디</label>
                                <input
                                    type="text"
                                    class="form-control"
                                    id="user_id"
                                    placeholder="아이디"
                                    value=""
                                    required="">
                                <div class="invalid-feedback">아이디를 입력해주세요.</div>
                            </div>
                        </div>
                        <!-- 비밀번호 -->
                        <div class="mb-2">
                            <label for="user_pw">비밀번호</label>
                                <div class="row">
                            <div class="col-md-9 mb-2">                            
                                <input
                                    type="text"
                                    class="form-control"
                                    id="user_pw"
                                    placeholder="비밀번호"
                                    max=""
                                    required="">
                            </div>
                            <div class="col-md-3 mb-2">
                                <button class="btn btn-primary btn-md btn-block" type="button">수정</button>
                            </div>
                                
                            <div class="invalid-feedback">
                                비밀번호를 확인해주세요
                            </div>
                        </div>
                        <!-- 비밀번호 확인-->
                        <div class="mb-2">
                            <label for="user_pwcheck">비밀번호확인</label>
                            <input
                                type="text"
                                class="form-control"
                                id="user_pwcheck"
                                placeholder="비밀번호확인"
                                oninput="validatePwdCheck(this)"
                                required="">
                            <div class="invalid-feedback">
                                비밀번호를 확인해주세요
                            </div>
                        </div>
                        <!-- 이름 -->
                        <div class="mb-2">
                            <label for="user_name">이름</label>
                            <div class="row">
                                <div class="col-md-9 mb-2">
                                    <input
                                        type="text"
                                        class="form-control"
                                        id="user_name"
                                        placeholder="이름"
                                        max=""
                                        required="">
                                </div>
                            <div class="col-md-3 mb-2">
                                <button class="btn btn-primary btn-md btn-block" type="button">수정</button>
                            </div>
                            <div class="invalid-feedback">
                                이름 입력해주세요
                            </div>                            
                        </div>
                        <!-- 달력 -->
                        <div class="mb-2">
                            <label for="user_birth">생년월일</label><br>
                            
                            <div class="row">
                                <div class="col-md-9 mb-2">
                                    <input
                                        type="date"
                                    class="form-control"
                                    id="user_birth"
                                    placeholder="이름"
                                    max=""
                                    required="">
                                </div>
                            <div class="col-md-3 mb-2">
                                <button class="btn btn-primary btn-md btn-block" type="button">수정</button>
                            </div>
                            <div class="invalid-feedback">
                                생년월일을 똑바로 입력해주세요
                            </div>
                        </div>
                        <!-- 핸드폰 번호 줄 맞추기용 -->
                        <div class="mb-2">
                            핸드폰번호
                        </div>
                        <!-- 핸드폰 번호 -->
                        <div class="row">
                            <div class="col-md-2 mb-2">
                                <select class="custom-select d-block w-100" id="carrier" required="">
                                    <option value=""></option>
                                    <option>SKT</option>
                                    <option>KT</option>
                                    <option>LG U+</option>
                                    <option>알뜰폰</option>
                                </select>
                                <div class="invalid-feedback">통신사를 선택해주세요</div>
                            </div>
                            <div class="col-md-7 mb-2">
                                <input
                                    type="text"
                                    class="form-control"
                                    id="user_tell"
                                    placeholder="-를 제외하고 입력해주세요"
                                    maxlength="13"
                                    required="">
                                <div class="invalid-feedback">휴대폰 번호를 입력해주세요</div>
                            </div>
                            <div class="col-md-3 mb-2">
                                <button class="btn btn-primary btn-md btn-block" type="button">인증번호 전송</button>
                            </div>
                        </div>
                        <!-- 인증번호 확인 -->
                        <div class="row">
                            <div class="col-md-9 mb-2">
                                <input
                                    type="text"
                                    class="form-control"
                                    id="check"
                                    placeholder="인증번호를 입력해주세요"
                                    maxlength="6"
                                    required="">
                            </div>
                            <div class="col-md-3 mb-2">
                                <button class="btn btn-primary btn-md btn-block" type="button">인증번호 확인</button>
                            </div>
                        </div>
                        <!-- 이메일 -->
                        <div class="mb-2">
                            <label for="user_email">이메일</label>
                     <div class="row">
                            <div class="col-md-9 mb-2">
                            
                                <input
                                    type="text"
                                    class="form-control"
                                    id="user_email"
                                    placeholder="you@example.com"
                                    max=""
                                    required="">
                            </div>
                            <div class="col-md-3 mb-2">
                                <button class="btn btn-primary btn-md btn-block" type="button">수정</button>
                            </div>   
                        </div>
                        <!-- 수정완료와 회원탈퇴 -->
                        <div class="row">
                            <div class="col-md-6 mb-4">
                                <button class="btn btn-primary btn-md btn-block" type="submit">수정완료</button>
                       		</div>
                           <div class="col-md-6 mb-4">
                                <button class="btn btn-primary btn-md btn-block" type="submit"></button>
                       		</div>
                        </div>
                    </form>
                </div>
            </div>
            <footer class="my-3 text-center text-small">
                <p class="mb-1">©mypage_user</p>
            </footer>
        </div>
    </body>
</html>