<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script>
    let item_detail = {
        init: function () {
            $('#register_btn').click(function () {
                item_detail.send();
            });
            $('#delete_btn').click(function () {
                var c = confirm("정말로 삭제 하시겠습니까?");
                if (c == true) {
                    location.href = "/item/deleteimpl/?id=${gitem.id}";
                }
            });
        },
        send: function () {
            $('#register_form').attr({
                method: 'post',
                action: '/item/updateimpl',
                enctype: 'multipart/form-data'
            });
            $('#register_form').submit();
        }
    };

    $(function () {
        item_detail.init();
    });
</script>

<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Item Detail</h1>

    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">${gitem.id}</h6>
        </div>
        <div class="card-body">
            <div id="container">
                <form id="register_form" class="">
                    <div class="container">
                        <hr>
                        <input type="hidden" name="id" value="${gitem.id}">
                        <input type="hidden" name="imgname" value="${gitem.imgname}">

                        <div>
                            <img src="/uimg/${gitem.imgname}">
                        </div>

                        <label for="name"><b>Name</b></label>
                        <input type="text" value="${gitem.name}" name="name" id="name" required>

                        <label for="price"><b>Price</b></label>
                        <input type="number" value="${gitem.price}" name="price" id="price" required>

                        <label for="img"><b>Image</b></label>
                        <input type="file" placeholder="Input Image" name="img" id="img" required>

                        <hr>

                        <button id="register_btn" type="button" class="registerbtn">Update</button>
                        <button id="delete_btn" type="button" class="deletebtn">Delete</button>
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
    input[type=text], input[type=password], input[type=number], input[type=file] {
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

    .deletebtn {
        background-color: #fc5a5a;
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
