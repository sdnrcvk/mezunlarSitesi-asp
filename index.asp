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
    
    <title>Mezunlar Sitesi || Anasayfa </title>
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
            <div class="bolum1">
                <p>
                    <i>"Bu günleri de görecek miydik? Artık biz de bilgisayar mühendisliği mezunuyuz...."</i>
                </p>
                <p>
                   Kimi zaman yeni arkadaşlıklar, yeni bir ortam ve yepyeni alışkanlıklar edindiğimiz için mutlu olduğumuz,
                kimi zamansa zorluğundan yakınıp, yorgun düştüğümüz günler...
                </p>
                <p>
                    Bitsin diye çok uğraştık, mezun olalım diye ne çok çaba verdik :)
                   Ama o günlere olan hasretimizi hiçbir türlü bitiremedik.
                </p>
                <div class="bolum1-img">
                    <img src="/img/6.jpg" alt="mezuniyet">
                </div>
                <p>
                    Bizlerde mademki o günler bir daha gelmeyecek, biz onlara gidelim diye düşündük.Ve o yıllara olan özlemimizi 
                    birazcık hafifletmek için geçmişten kalan hatıralarımızı paylaşmaya, eski arkadaşlıkları bir arada toplamaya karar verdik.
                </p>
                <p>
                    Sizlerden isteğimiz, arkadaşlarımıza tekrar ulaşmaya çalışalım. Böylece kalıcı bir ortam oluşturalım, 
                    hatıraları yadedelim, nostalji yapalım, dostlukları canlandıralım ve yeniden... Kaynatalım! :)
                </p>
                <p>
                    <b><i>Hatıralarımızı daima yaşatalım...</i></b>
                </p>
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
</body>
</html>

<%
else 
response.redirect "girisyap.asp"
end if
%>