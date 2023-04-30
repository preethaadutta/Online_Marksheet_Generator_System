<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Show form Page</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" 
    integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" 
    crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
@import url('https://fonts.googleapis.com/css2?family=Lobster&family=Satisfy&display=swap');
#heading{
    font-family: 'Lobster', cursive;
    text-align: center;
    font-size: 36px;
    letter-spacing: 1px;
    /*for css text gradient*/
    background: linear-gradient(90deg,#2f1875 20%, #1bb886, #185a9d);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    padding: 30px;
} 
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
body{
    font-size: 14px;
    /*background-color: rgb(253, 234, 237);*/
}
body{
    background:linear-gradient(90deg, rgba(207, 243, 243, 0.311), rgba(57, 57, 238, 0.249)),
     url(school_building.jpg);
    background-size: cover;
    background-repeat: no-repeat;
    backdrop-filter: blur(2px);
    height: 100vh;
    width: 100vw;
    padding: 20px;
}
.container{
    background-color: white;
    width:500px;
    padding: 25px;
    margin: 50px auto 0;
    border-top: 5px solid rgb(0, 116, 139);
    box-shadow: 0 0 7px 5px rgba(0,0,0,0.5);
    border-radius: 5px;
    align-items: center;
    text-align: center;
}
.container h2{
    font-size: 24px;
    line-height: 24px;
    padding: 30px;
    padding: 25px;
    text-align: center;
    color: #185a9d;
}
.input-name{
    width: 90%;
    position: relative;
    margin: 20px auto;
}
.lock{
    padding: 8px 11px;
}
.name{
    width: 100%;
    padding: 8px 0 8px 40px;
}
.input-name span{
    margin-left: 35px;
}
.text-name{
    width: 100%;
    padding: 8px 0 8px 40px;
}
.input-name i{
    position: absolute;
    font-size: 18px;
    color: rgb(0, 116, 139);
    border-right: 1px solid #cccccc;
}
.text-name,.name{
    border: 1px solid #cccccc;
    outline: none;
    -webkit-transition: all 0.30s ease-in-out;
    -moz-transition: all 0.30s ease-in-out;
    -ms-transition: all 0.30s ease-in-out;
    transition: all 0.30s ease-in-out;
}
.text-name:hover,.name:hover{
    background-color: rgba(28, 179, 209, 0.311);
}
.text-name:focus,.name:focus{
    border: 1px solid rgb(0, 116, 139);
}
/*
.radio-button{
    margin-right: 4px;
    cursor: pointer;
}
.country{
    display: inline-block;
    width: 100%;
    height: 35px;
    padding: 0px 15px;
    cursor: pointer;
    border: 1px solid #cccccc;
    color: #7b7b7b;
    background-color: white;
    appearance: none;
    -webkit-appearance: none;
    -moz-appearance: none;
    transition: all 0.2s ease;
}
.country::ms-expand{
    display: none;
}
.country:hover,.country:focus{
    background-color: rgb(251, 201, 209);
    border: 1px solid rgb(0, 116, 139);
    color: rgb(0, 116, 139);
    outline: none;
}
.arrow{
    position: absolute;
    top:calc(50% - 4px);
    right: 15px;
    width: 0;
    height: 0;
    pointer-events: none;
    border-width: 8px 5px 0 5px;
    border-style: solid;
    border-color: #7b7b7b transparent transparent transparent;
}
.country:hover + .arrow, .country:focus +arrow{
     border-top-color: rgb(0, 116, 139);
}
.check{
    margin-right: 15px;
    position: relative;
}
.check::before{
    content: "";
    display: inline-block;
    width: 8px;
    height: 8px;
    margin-right: 8px;
    vertical-align: -2px;
    border: 2px solid #cccccc;
    padding: 2.5px;
    background-color: transparent;
    background-clip: content-box;
    transition: all 0.2s ease;
}
.check::after{
    border-right: 2px solid black;
    border-top: 2px solid black;
    content: "";
    height: 20px;
    left: 2px;
    position: absolute;
    top: 7px;
    transform: scaleX(-1) rotate(135deg);
    transform-origin: left top;
    width: 7px;
    display: none;
}
.check-button{
    border: 0;
    clip: rect(0 0 0 0);
    height: 1px;
    margin: -1px;
    overflow: hidden;
    padding: 0;
    position: absolute;
    width: 1px;
}
.check-button:hover +.check::before{
    border-color: rgb(0, 116, 139);

}
.check-button:checked +.check::before{
    border-color: green;
}
.check-button:checked +.check::after{
    -moz-animation: check 0.8s ease 0s running;
    -webkit-animation: check 0.8s ease 0s running;
    animation: check 0.8s ease 0s running;
    display: block;
    width: 7px;
    height: 20px;
    border-color: green;
}
@-webkit-keyframes check{
    0%{height: 0; width: 0;}
    25%{height: 0; width: 7px;}
    50%{height: 20px; width: 7px;}
}
*/
.button{
    background-color: rgb(0, 116, 139);
    color: #fff;
    height: 35px;
    line-height: 35px;
    width: 100%;
    border: none;
    outline: none;
    font-size: 18px;
    cursor: pointer;
    margin-bottom: 10px;
    letter-spacing: 0.5px;
}
.button:hover{
    background-color: #1bb886;
}
@media(max-width: 354px){
    #heading{
        font-size: 22px;
        padding: 16px;
    }
}
@media(max-width: 320px){
    html{
        padding: 5px;
    }
    #heading{
        font-size: 22px;
        padding: 15px;
    }
}
@media (max-width:557px){
    .container{
        margin: 0;
    }
}
/*@media (max-width:480px)*/
@media (max-width:538px){
    .container{
        width: 100%;
        padding: 5px;
    }
    .input-name{
        margin-bottom: -10px;
    }
    .name{
        width: 100%;
        padding: 8px 0 8px 40px;
        margin-bottom: 10px;
    }
    .input-name span{
        padding: 0;
        margin: 0;
    }
    .form-container{
        width: 100%;
    }
}
    </style>
</head>
<body>
    <body>
        <h2 id="heading">Knowledge Ocean High School</h2>
        <div class="container">
            <h2>Marksheet Generator</h2>
            <div class="form-container">
                <!--<//%=request.getContextPath()%> it returns the path of the root directory-->
                <form action="<%=request.getContextPath()%>/servlet" method="post">
                    <div class="input-name">
                        <i class="fa-solid fa-id-badge lock"></i>
                        <!--<i class="fa-solid fa-envelope lock"></i>-->
                        <input type="number" placeholder="Enter Roll No." class="text-name" 
                        name="roll" required>
                    </div>
                    <div class="input-name">
                        <i class="fa-solid fa-user-graduate lock"></i>
                        <input type="text" placeholder="Enter Name" class="name" 
                        name="name" required>
                    </div>
                    <div class="input-name">
                        <button type="submit" class="button">Check Marks</button>
                    </div>
                </form>
            </div>
        </div>
    </body>
</body>
</html>