<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.show_form_details.MODEL.bean"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Student Marksheet</title>
	<!-- Font Awesome CDN Link for Icons -->
    <link rel="stylesheet" 
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
    <style>
@import url('https://fonts.googleapis.com/css2?family=Lobster&family=Satisfy&display=swap');
*{
    margin:0;
    padding:20px;
    font-family: 'Times New Roman', Times, serif;
    box-sizing: border-box;
    font-size: 18px;
}
body{
    background:linear-gradient(90deg, rgba(207, 243, 243, 0.311), rgba(57, 57, 238, 0.249)), url(school_building.jpg);
    background-size: cover;
    background-repeat: no-repeat;
    backdrop-filter: blur(2px);
    height: 100vh;
}
h2{
    font-family: 'Lobster', cursive;
    text-align: center;
    font-size: 36px;
    letter-spacing: 1px;
    /*for css text gradient*/
    background: linear-gradient(90deg,#2f1875 20%, #1bb886, #185a9d);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
}
.table{
    width: 100%;
    border-collapse: collapse;
}

.table td,.table th{
  padding:12px 15px;
  border:1px solid rgb(1, 62, 74);/*#ddd;*/
  text-align: center;
  font-size:16px;
}

.table th{
    background-color: rgb(0, 116, 139);
    color:#ffffff;
}
.table tbody tr:nth-child(odd){
    /*#f5f5f5*/
	background-color: rgba(106, 211, 232, 0.311);
}
.table tbody tr:nth-child(even){
    /*#f5f5f5*/
	background-color: rgba(28, 179, 209, 0.311);
}
@media(max-width: 354px){
    body{
        padding: 0px;
    }
    h2{
        font-size: 22px;
        padding: 16px;
    }
    h4{
        padding: 15px;
    }
}
@media(max-width: 320px){
    html{
        padding: 5px;
    }
    h2{
        font-size: 22px;
        padding: 15px;
    }
    h4{
        padding: 10px;
    }
}





#src-btn, .screenshot {
    position: fixed;
    left: 50%;
    transform: translate(-50%, -50%);
  }
  #src-btn {
    bottom: 15px;
    border: none;
    outline: none;
    color: #fff;
    cursor: pointer;
    font-size: 1rem;
    padding: 15px 25px;
    border-radius: 30px;
    background: rgb(0, 116, 139);
  }
  #src-btn:hover{
    background: #2f1875;
  }

  @media(max-width: 512px){
    #src-btn{
        bottom: 0;
        font-size: 0.7rem;
        padding: 10px 15px;
        border-radius: 20px;
    }
  }
  .src-preview {
    position: fixed;
    left: 0;
    top: 0;
    height: 100%;
    width: 100%;
    opacity: 0;
    pointer-events: none;
    background: rgba(0,0,0,0.65);
    transition: all 0.15s ease;
  }
  .src-preview.show {
    opacity: 1;
    pointer-events: auto;
  }
  .src-preview .screenshot {
    width: 70%;
    top: 50%;
    opacity: 0;
    pointer-events: none;
    aspect-ratio: 16 / 9;
    transition: transform 0.15s ease;
    transform: translate(-50%, -50%) scale(0.9);
  }
  .src-preview.show .screenshot{
    opacity: 1;
    pointer-events: auto;
    transform: translate(-50%, -50%) scale(1);
  }
  .screenshot #close-btn {
    position: absolute;
    right: -25px;
    color: #fff;
    cursor: pointer;
    font-size: 1.1rem;
  }
  .screenshot img {
    width: 100%;
  }
    </style>
</head>
<body>
    <h2>Knowledge Ocean High School</h2>
    <% bean b3=(bean)request.getAttribute("data1"); %>
    <h4>Name : <%=b3.getName()%> </h4>
    <h4>Roll Number : <%=b3.getRoll()%> </h4>
    <table class="table">
		<thead>
			<tr>
				<th>Subject Code</th>
     	        <th>Subject Name</th>
     	        <th>Marks</th>
     	    </tr>
        </thead>
        <tbody>
     	    <tr>
				<td data-label="Subject Code">Phy</td>
     	  	    <td data-label="Subject Name">Physics</td>
     	  	    <td data-label="Marks"><%=b3.getPhysics_marks()%></td>
     	    </tr>
     	    <tr>
				<td data-label="Subject Code">Che</td>
     	  	    <td data-label="Subject Name">Chemistry</td>
     	  	    <td data-label="Marks"><%=b3.getChemistry_marks()%></td>
     	    </tr>
     	    <tr>
				<td data-label="Subject Code">Math</td>
     	  	    <td data-label="Subject Name">Mathematics</td>
     	  	    <td data-label="Marks"><%=b3.getMaths_marks()%></td>
     	    </tr>
        </tbody>
    </table>
    <h4>Total Marks : <%=b3.getTotal_marks()%> </h4>
    <% 
            bean b=(bean)request.getAttribute("data1");
            double t_marks=b.getTotal_marks();
            /*double t_marks=Integer.parseInt(b.getTotal_marks());*/
            double full_marks=300.0;
            double percentage_marks;
            String st;
            percentage_marks=(t_marks/full_marks)*100;
            if(percentage_marks>=50.0)
            {
                st="Pass";
            }
            else
            {
                st="Fail";
            }
    %>
    <h4>Percentage Marks : <%= percentage_marks %>%</h4>
    <h4>Result : <%= st %></h4>



    <button id="src-btn">Capture Screenshot</button>
    <div class="src-preview">
      <div class="screenshot">
        <i id="close-btn" class="fa-solid fa-xmark"></i>
        <img src="" alt="screenshot">
      </div>
    </div>
    <script>
		const screenshotBtn = document.querySelector("#src-btn"),
screenshotPreview = document.querySelector(".src-preview"),
closeBtn = screenshotPreview.querySelector("#close-btn");

const captureScreen = async () => {
    try {
        // asking permission to use a media input to record current tab
        const stream = await navigator.mediaDevices.getDisplayMedia({ preferCurrentTab: true });
        const video = document.createElement("video");
        
        video.addEventListener("loadedmetadata", () => {
            const canvas = document.createElement("canvas");
            const ctx = canvas.getContext("2d");

            // passing video width & height as canvas width & height
            canvas.width = video.videoWidth;
            canvas.height = video.videoHeight;
            
            video.play(); // playing the video so the drawn image won't be black or blank
            // drawing an image of the captured video stream
            ctx.drawImage(video, 0, 0, canvas.width, canvas.height);
            stream.getVideoTracks()[0].stop(); // terminating first video track of the stream
            
            // passing canvas data url as screenshot preview src
            screenshotPreview.querySelector("img").src = canvas.toDataURL();
            screenshotPreview.classList.add("show");
        });
        video.srcObject = stream; // passing capture stream data as video source object
    } catch (error) { // if image couldn't capture by any reason, then alert the msg
        alert("Failed to capture screenshot!");
    }
}

closeBtn.addEventListener("click", () => screenshotPreview.classList.toggle("show"));
screenshotBtn.addEventListener("click", captureScreen);
	</script>

</body>
</html>
