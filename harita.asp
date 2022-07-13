<link rel="icon" type="image/png" href="/img/icon.png">
<%
    If Session("UserLoggedIn") <>"" Then

    Response.Write "<p style='background-color:#e0e0e0;color:black;font-family:Verdana, Geneva, Tahoma, sans-serif';>Hoşgeldiniz <b>" & Session("UserLoggedIn") & "</b>!Oturumu kapatmak için çıkış yapınız...</p>" 

%>

<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-9">
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1254">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Karabük Üniversitesi bilgisayar mühendisliği mezunları topluluğudur.Eğer sizler de o mezunlardan biriyseniz ve 
    hatıralara ortak olmak isterseniz, sitemize kayıt olarak topluluğumuza katılabilir, içerikleri görebilirsiniz.">
    <meta name="keywords" content="mezun,karabük,kbü,bilgisayar mühendisliği,mühendislik,öğrenci">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.2/css/all.css" integrity="sha384-vSIIfh2YWi9wW0r9iZe7RJPrKwp6bG+s9QZMoITbCckVJqGCCRhc+ccxNcdpHuYu" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat&family=Roboto+Mono&display=swap" rel="stylesheet">
    
    <title>Mezunlar Sitesi || Harita </title>

<script>
    function imageZoom(imgID, resultID) {
    var img, lens, result, cx, cy;
    img = document.getElementById(imgID);
    result = document.getElementById(resultID);
    /*create lens:*/
    lens = document.createElement("DIV");
    lens.setAttribute("class", "img-zoom-lens");
    /*insert lens:*/
    img.parentElement.insertBefore(lens, img);
    /*calculate the ratio between result DIV and lens:*/
    cx = result.offsetWidth / lens.offsetWidth;
    cy = result.offsetHeight / lens.offsetHeight;
    /*set background properties for the result DIV:*/
    result.style.backgroundImage = "url('" + img.src + "')";
    result.style.backgroundSize = (img.width * cx) + "px " + (img.height * cy) + "px";
    /*execute a function when someone moves the cursor over the image, or the lens:*/
    lens.addEventListener("mousemove", moveLens);
    img.addEventListener("mousemove", moveLens);
    /*and also for touch screens:*/
    lens.addEventListener("touchmove", moveLens);
    img.addEventListener("touchmove", moveLens);
        function moveLens(e) {
            var pos, x, y;
            /*prevent any other actions that may occur when moving over the image:*/
            e.preventDefault();
            /*get the cursor's x and y positions:*/
            pos = getCursorPos(e);
            /*calculate the position of the lens:*/
            x = pos.x - (lens.offsetWidth / 2);
            y = pos.y - (lens.offsetHeight / 2);
            /*prevent the lens from being positioned outside the image:*/
            if (x > img.width - lens.offsetWidth) {x = img.width - lens.offsetWidth;}
            if (x < 0) {x = 0;}
            if (y > img.height - lens.offsetHeight) {y = img.height - lens.offsetHeight;}
            if (y < 0) {y = 0;}
            /*set the position of the lens:*/
            lens.style.left = x + "px";
            lens.style.top = y + "px";
            /*display what the lens "sees":*/
            result.style.backgroundPosition = "-" + (x * cx) + "px -" + (y * cy) + "px";
        }
        function getCursorPos(e) {
            var a, x = 0, y = 0;
            e = e || window.event;
            /*get the x and y positions of the image:*/
            a = img.getBoundingClientRect();
            /*calculate the cursor's x and y coordinates, relative to the image:*/
            x = e.pageX - a.left;
            y = e.pageY - a.top;
            /*consider any page scrolling:*/
            x = x - window.pageXOffset;
            y = y - window.pageYOffset;
            return {x : x, y : y};
        }
    }
</script>
</head>
<body>
    <header></header>
        <nav>
            <ul class="menu1" id="yukari">
                <li><a href="index.asp"><i class="fas fa-home"></i> Anasayfa</a></li>
                <li><a href="forum.asp"><i class="far fa-comments"></i> Forum</a></li>
                <li><a href="harita.asp"><i class="fas fa-map-marker-alt"></i> Harita</a></li>
            </ul>
        </nav>
        <aside>
            <ul class="menu2">
                <li><a href="kisiler.asp"><i class="fas fa-users"></i> Kişiler</a></li>
                <li><a href="fotograflar.asp"><i class="fas fa-images"></i> Fotoğraflar</a></li>
                <li><a href="videolar.asp"><i class="fas fa-film"></i> Videolar</a></li>
                <li><a href="listeleme.asp"><i class="far fa-list-alt"></i> Kim, Nerede, Ne Yapıyor?</a></li>
                <% response.Write " <li><a href='cikisyap.asp'><i class='fas fa-sign-out-alt'></i> Çıkış Yap</a></li> "%>
            </ul>
        </aside>
        <section>
            <table class="map">
                <form action="harita.asp" method=post>  
                <tr>
                    <td><input type="submit" value="<^" name="solüst" style="float: right; font-weight: bold"></td>
                    <td><input type="submit" value="^" name="üst" style="font-weight: bold;"></p></td>
                    <td><input type="submit" value="^>" name="sagüst" style="float: left; font-weight: bold"></td>
                    <td></td>
                </tr>
                <tr>
                    <td><input type="submit" value="<" name="sol" style="float: right; font-weight: bold"></td>
                    <td>
                        <div class="harita">
                            <div class="harita-img">
                                <img src="/img/harita.jpg" id="Harita">
                            </div>
                        </div>
                    </td>
                    <td><input type="submit" value=">" name="sag" style="font-weight: bold"></td>
                    <td style="padding-left: 20px;">
                        <input type="submit" value="Tümünü Göster" name="tumugoster" style="margin-bottom:7px;">
                        <input type="submit" value="Büyüt" name="buyult" style="margin-bottom:7px;">
                        <input type="submit" value="Küçült" name="kucult">
                    </td>
                </tr>
                <tr>
                    <td> <input type="submit" value="<v" name="solalt" style="float: right; font-weight: bold"></td>
                    <td><input type="submit" value="v" name="alt" style="font-weight: bold"></td>
                    <td><input type="submit" value="v>" name="sagalt" style="float: left; font-weight: bold"></td>
                    <td></td>
                </tr>
                </form>
            </table>
            <div id="google-map">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3001.51068238661!2d32.65690737546045!3d41.210640365614246!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x408354ac4492953f%3A0xab3b48ed0392a743!2sKarab%C3%BCk%20%C3%9Cniversitesi!5e0!3m2!1str!2str!4v1621197594713!5m2!1str!2str" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
            <div class="img-zoom-container">
                <img id="myimage" src="/img/harita.jpg" width="100%" height="450" alt="Türkiye Haritası">
                <div id="myresult" class="img-zoom-result"></div>
            </div>
        </section>
        <footer>
            <ul>
                <li>
                    <button class="btn btn-anahat btn-sosyalmedya">
                        <i class="fab fa-fw fa-instagram"></i>
                    </button>
                </li>
                <li>
                    <button class="btn btn-anahat btn-sosyalmedya">
                        <i class="fab fa-fw fa-youtube"></i>
                    </button>
                </li>
                <li>
                    <button class="btn btn-anahat btn-sosyalmedya">
                        <i class="fab fa-fw fa-twitter"></i>
                    </button>
                </li>
                <li>
                    <button class="btn btn-anahat btn-sosyalmedya">
                        <i class="fab fa-fw fa-linkedin-in"></i>
                    </button>
                </li>
                <li>
                    <a href="#yukari" title="Yukarı Git!" >
                        <button class="btn btn-anahat btn-sosyalmedya">
                            <i class="fas fa-chevron-up"></i>
                        </button>    
                    </a>
                </li>
            </ul>
            <div class="copyright">
                <small>
                 &copy; 2021 Sedanur Çevik | Tüm hakları saklıdır.
                </small>  
            </div>
        </footer>
<script>
imageZoom("myimage", "myresult");
</script>
</body>
</html>

<%
else 
response.redirect "girisyap.asp"
end if
%>