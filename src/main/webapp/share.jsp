<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>share invite</title>
  <link rel="stylesheet" href="sharestyle.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
  <link rel="stylesheet" href="https://unicons.iconscout.com/release/v3.0.6/css/line.css">
</head>
<body>
  <button class="view-modal">Invite</button>
  <div class="popup">
    <header>
      <span>Invite</span>
      <div class="close"><i class="uil uil-times"></i></div>
    </header>
    <div class="content">
      <p>Share this link via</p>
      <ul class="icons">
        <a href="https://www.facebook.com/login/"><i class="fab fa-facebook-f"></i></a>
        <a href="https://twitter.com/i/flow/login"><i class="fab fa-twitter"></i></a>
        <a href="https://www.instagram.com/sem/campaign/emailsignup/?campaign_id=13530338610&extra_1=s|c|547419127652|e|instagram%20login|&placement=&creative=547419127652&keyword=instagram%20login&partner_id=googlesem&extra_2=campaignid%3D13530338610%26adgroupid%3D126262414054%26matchtype%3De%26network%3Dg%26source%3Dnotmobile%26search_or_content%3Ds%26device%3Dc%26devicemodel%3D%26adposition%3D%26target%3D%26targetid%3Dkwd-35100690670%26loc_physical_ms%3D9301900%26loc_interest_ms%3D%26feeditemid%3D%26param1%3D%26param2%3D&gclid=CjwKCAjwyryUBhBSEiwAGN5OCDfD-XNTsmP3p5RMBU8BVw2Hg13pyjQnwMoopTAJtNN_TmFJfj_BhhoCjv0QAvD_BwE"><i class="fab fa-instagram"></i></a>
        <a href="https://web.whatsapp.com/"><i class="fab fa-whatsapp"></i></a>
        <a href="https://web.telegram.org/k/"><i class="fab fa-telegram-plane"></i></a>
      </ul>
      <p>Or copy link</p>
      <div class="field">
        <i class="url-icon uil uil-link"></i>
        <input type="text" readonly value="http://localhost:8080/Music_web_player/">
        <button>Copy</button>
      </div>
    </div>
  </div>

  <script>
    const viewBtn = document.querySelector(".view-modal"),
    popup = document.querySelector(".popup"),
    close = popup.querySelector(".close"),
    field = popup.querySelector(".field"),
    input = field.querySelector("input"),
    copy = field.querySelector("button");

    viewBtn.onclick = ()=>{
      popup.classList.toggle("show");
    }
    close.onclick = ()=>{
      viewBtn.click();
    }

    copy.onclick = ()=>{
      input.select(); //select input value
      if(document.execCommand("copy")){ //if the selected text copy
        field.classList.add("active");
        copy.innerText = "Copied";
        setTimeout(()=>{
          window.getSelection().removeAllRanges(); //remove selection from document
          field.classList.remove("active");
          copy.innerText = "Copy";
        }, 3000);
      }
    }
  </script>

</body>
</html>
    