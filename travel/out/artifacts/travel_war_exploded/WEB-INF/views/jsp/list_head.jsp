<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<head>
    <title>Offers</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Travelix Project">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%--   <link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
       <link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
       <link rel="stylesheet" type="text/css" href="styles/offers_styles.css">
       <link rel="stylesheet" type="text/css" href="styles/offers_responsive.css">--%>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script>
    <script async="" src="https://www.googletagmanager.com/gtm.js?id=GTM-5RCMT44"></script>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/home/styles/bootstrap4/bootstrap.min.css"/>">
    <link href="<c:url value="/resources/home/plugins/font-awesome-4.7.0/css/font-awesome.min.css"/>" rel="stylesheet"
          type="text/css">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/home/styles/offers_styles.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/home/styles/blog_styles.css"/>">

    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/home/styles/offers_responsive.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/home/styles/blog_responsive.css"/>">
    <style>
        .slidershow{
            overflow: hidden;
        }
        .middle{
            position: absolute;
        }
        .navigation{
            position: absolute;
            bottom: 20px;
            left: 50%;
            transform: translateX(-50%);
            display: flex;
        }
        .bar{
            width: 50px;
            height: 10px;
            border: 2px solid #fff;
            margin: 6px;
            cursor: pointer;
            transition: 0.4s;
        }
        .bar:hover{
            background: #fff;
        }

        input[name="r"]{
            position: absolute;
            visibility: hidden;
        }

        .slides{
            width: 500%;
            height: 100%;
            display: flex;
        }

        .slide{
            width: 20%;
            transition: 0.6s;
        }
        .slide img{
            width: 100%;
            height: 100%;
        }

        #r1:checked ~ .s1{
            margin-left: 0;
        }
        #r2:checked ~ .s1{
            margin-left: -20%;
        }
        #r3:checked ~ .s1{
            margin-left: -40%;
        }
        #r4:checked ~ .s1{
            margin-left: -60%;
        }
        #r5:checked ~ .s1{
            margin-left: -80%;
        }



    </style>
</head>