<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script>
    let cust_add = {
        init: function () {
            $('#register_btn').click(function () {
                cust_add.send();
            });
        },
        send: function () {
            $('#register_form').attr({
                method: 'post',
                action: '/cust/addimpl'
            });
            $('#register_form').submit();
        }
    };

    $(function () {
        cust_add.init();
    });
</script>

<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Cust Add</h1>

    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Cust Add</h6>
        </div>
        <div class="card-body">
            <div id="container">
                <form id="register_form" class="">
                    <div class="container">
                        <p>Please fill in this form to create an account.</p>
                        <hr>

                        <label for="id"><b>ID</b></label>
                        <input type="text" placeholder="Enter ID" name="id" id="id" required>

                        <div>
                            <span id="check_id" class="bg-danger"></span>
                        </div>

                        <label for="pwd"><b>Password</b></label>
                        <input type="password" placeholder="Enter Password" name="pwd" id="pwd" required>

                        <label for="name"><b>Name</b></label>
                        <input type="text" placeholder="Enter Name" name="name" id="name" required>
                        <hr>

                        <button id="register_btn" type="button" class="registerbtn">Register</button>
                    </div>
                </form>
            </div><!-- /.container-fluid -->
        </div>
    </div>
</div>

<style>
    * {
        box-sizing: border-box
    }

    /* Add padding to containers */
    .container {
        padding: 16px;
        width: 100%;
        height: 100%;
    }

    /* Full-width input fields */
    input[type=text], input[type=password] {
        width: 100%;
        padding: 15px;
        margin: 5px 0 22px 0;
        display: inline-block;
        border: none;
        background: #f1f1f1;
    }

    input[type=text]:focus, input[type=password]:focus {
        background-color: #ddd;
        outline: none;
    }

    /* Overwrite default styles of hr */
    hr {
        border: 1px solid #f1f1f1;
        margin-bottom: 25px;
    }

    /* Set a style for the submit/register button */
    .registerbtn {
        background-color: #04AA6D;
        color: white;
        padding: 16px 20px;
        margin: 8px 0;
        border: none;
        cursor: pointer;
        width: 100%;
        opacity: 0.9;
    }

    .registerbtn:hover {
        opacity: 1;
    }

</style>
