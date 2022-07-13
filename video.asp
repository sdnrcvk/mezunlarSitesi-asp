<link rel="icon" type="image/png" href="/img/icon.png">
<%
    If Session("UserLoggedIn") <>"" Then

    Response.Write "<p style='background-color:#e0e0e0;color:black;font-family:Verdana, Geneva, Tahoma, sans-serif';>Hoşgeldiniz <b>" & Session("UserLoggedIn") & "</b>!Oturumu kapatmak için çıkış yapınız...</p>" 
   
    id=request.querystring("id")

    Set Baglantim = Server.CreateObject("ADODB.Connection")
    Baglantim.Open("DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("Database1.mdb"))
    ssql="Select * from videolar where id="& id &";"
    Set rs = Baglantim.Execute(sSQL)

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
    
    <title>Mezunlar Sitesi || Video </title>
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
        <div class="video">
            <div class="video-buyuk">
                <iframe width="100%" height="360" src="<%=rs("video_url")%>?autoplay=1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
        </div>
        <div class="form3">
            <form action="videoyorumekle.asp?id=<%=id%>" method="POST">
                    <table class="form3-table">
                        <tr>
                            <td width="180">Yorum : </td>
                            <td width="500"><textarea name="yorum" cols="30" rows="4" required></textarea></td>
                            <td width="50"></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <input type="submit" value="Yorum Ekle" name="videoyorumekle">
                                <br>
                                <input type="reset" value="Reset" name="videoyorumsil">
                            </td>
                            <td></td>
                        </tr>
                </table>
            </form>
        </div>
        <div class="yorumlar">
            <table class="yorum-table">
                <tr>
                    <th>Ne zaman? </th>
                    <th>Kim? </th>
                    <th>Ne yazmış? </th>        
                </tr>
                    <%
                    ssqli="Select * from videoYorumlar where video_id="& id &" order by id desc;"
                    Set sr = Baglantim.Execute(sSQLi)

                    Do While NOT sr.EOF
                        Response.write("<tr>")
                    %>
                       <td><%=sr("yorumTarihi")%></td>
                       <td><%=sr("yorumSahibi")%></td>
                       <td><%=sr("yorum")%></td>
                         <%  
                        Response.write("</tr>")
                        sr.movenext
                    Loop
                    %>
            </table>
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

Baglantim.Close
Set rs = Nothing
Set sr = Nothing
Set Baglantim = Nothing

else 
response.redirect "girisyap.asp"
end if

%>
</body>
</html>