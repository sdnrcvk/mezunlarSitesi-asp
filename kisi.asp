<link rel="icon" type="image/png" href="/img/icon.png">
<%
    If Session("UserLoggedIn") <>"" Then

    Response.Write "<p style='background-color:#e0e0e0;color:black;font-family:Verdana, Geneva, Tahoma, sans-serif';>Hoşgeldiniz <b>" & Session("UserLoggedIn") & "</b>!Oturumu kapatmak için çıkış yapınız...</p>" 

    id=request.querystring("id")

    Set Baglantim = Server.CreateObject("ADODB.Connection")
    Baglantim.Open("DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("Database1.mdb"))
    ssql="Select * from kisiler where id="& id &";"
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
    
    <title>Mezunlar Sitesi || Kişi </title>
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
            <%
            ssqlii="Select kullanicilar.ad,kullanicilar.soyad,kullanicilar.okulno from kisiler inner join kullanicilar on kisiler.kullanici_id=kullanicilar.id where kisiler.id="& id &";"
            Set srs = Baglantim.Execute(sSQLii)
            %>
            <div class="isimler">
                <%=srs("okulno")%>-<%=srs("ad")%>&nbsp<%=srs("soyad")%>
            </div>
            <div class="kisi-fotolar">
                <div class="kisi-foto">    
                    <div class="kisi-img">
                        <img src="<%=rs("foto_path")%>">
                    </div>
                    <div class="kisi-img">
                        <img src="<%=rs("foto_path1")%>">
                    </div>
                    <div class="kisi-img">
                        <img src="<%=rs("foto_path2")%>">
                    </div>
                </div>
            </div>
            <div class="form4">
                <form action="kisiyorumekle.asp?id=<%=id%>" method="POST">
                        <table class="form4-table">
                            <tr>
                                <td width="180">Yorum : </td>
                                <td width="500"><textarea name="yorum" cols="30" rows="4" required></textarea></td>
                                <td width="50"></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <input type="submit" value="Yorum Ekle" name="kisiyorumekle">
                                    <br>
                                    <input type="reset" value="Reset" name="kisiyorumsil">
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
                        ssqli="Select * from kisiYorumlar where kisi_id="& id &" order by id desc;"
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