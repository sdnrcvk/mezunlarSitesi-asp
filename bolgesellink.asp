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
    
    <title>Mezunlar Sitesi || Bölgesel Link</title>
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
        <div class="foto">
            <div class="foto-buyuk">
                <img src="/img/10.jpg" usemap="#image-map">

                <map name="image-map">
                    <area alt="Sedanur Çevik" title="Sedanur Çevik" href="kisi.asp?id=3" coords="215,204,368,355" shape="rect">
                    <area alt="Ervanur Gürler" title="Ervanur Gürler" href="kisi.asp?id=6" coords="58,253,212,423" shape="rect">
                    <area alt="Fatmanur Gebeşoğlu" title="Fatmanur Gebeşoğlu" href="kisi.asp?id=4" coords="769,274,73" shape="circle">
                    <area alt="Büşra Kartal" title="Büşra Kartal" href="kisi.asp?id=5" coords="840,203,975,190,976,363,818,363,844,286,838,228" shape="poly">
                </map>
            </div>
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
<%

else 
response.redirect "girisyap.asp"
end if

%>
</body>
</html>