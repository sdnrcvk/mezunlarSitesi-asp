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
    <link rel="icon" type="image/png" href="/img/icon.png">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.2/css/all.css" integrity="sha384-vSIIfh2YWi9wW0r9iZe7RJPrKwp6bG+s9QZMoITbCckVJqGCCRhc+ccxNcdpHuYu" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat&family=Roboto+Mono&display=swap" rel="stylesheet">
    
    <title>Mezunlar Sitesi || Kayıt </title>
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
                <li><a href="kayitol.asp"><i class="fas fa-user-plus"></i> Kayıt Ol</a></li>
                <li><a href="girisyap.asp"><i class="fas fa-sign-in-alt"></i> Giriş Yap</a></li>
            </ul>
        </aside>
        <section>
            <div class="form1">
                <div class="form1-alt">
                    <form action="kayit.asp" method="POST" class="kayit-border">
                        <table class="form1-table">
                            <tr>
                                <td width="180" >Adı * :</td>
                                <td width="500" ><input type="text" name="ad" placeholder="Adınızı yazınız..." required ></td>
                            </tr>
                            <tr>
                                <td>Soyadı * :</td>
                                <td><input type="text" name="soyad"  placeholder="Soyadınızı yazınız..." required></td>
                            </tr>
                            <tr>
                                <td>Meslek * :</td>
                                <td><input type="text" name="gorev" placeholder="Mesleğinizi yazınız..." required></td>
                            </tr>
                            <tr>
                                <td>Okul Numarası * :</td>
                                <td><input type="text" name="okulno" placeholder="Okul numaranızı yazınız..." required></td>
                            </tr>
                            <tr>
                                <td>Telefon * :</td>
                                <td><input type="text" name="telefon" placeholder="Telefon numaranızı yazınız..." required></td>
                            </tr>
                            <tr>
                                <td>Cinsiyet * :</td>
                                <td>
                                    <input type="radio" name="cinsiyet" value="Kadın" required>Kadın
                                    <input type="radio" name="cinsiyet" value="Erkek" required>Erkek
                                </td>
                            </tr>
                            <tr>
                                <td>Doğum Tarihi * :</td>
                                <td><input type="date" name="dogumtarihi" required></td>
                            </tr>
                            <tr>
                                <td>Hobiler :</td>
                                <td><input type="checkbox" name="hobiler" value="Kitap">Kitap
                                    <input type="checkbox" name="hobiler" value="Spor">Spor
                                    <input type="checkbox" name="hobiler" value="Fotoğraf">Fotoğrafçılık
                                    <input type="checkbox" name="hobiler" value="Tiyatro">Tiyatro
                                    <input type="checkbox" name="hobiler" value="Müzik">Müzik
                                </td>
                            </tr>
                            <tr>
                                <td><label for="sehir">Yaşadığınız Şehir * :</label></td>
                                <td> 
                                    <select name="sehir" required>
                                        <option value="">Bir Şehir Seçiniz...</option>
                                        <option value="Adana">Adana</option>
                                        <option value="Adıyaman">Adıyaman</option>
                                        <option value="Afyonkarahisar">Afyonkarahisar</option>
                                        <option value="Ağrı">Ağrı</option>
                                        <option value="Amasya">Amasya</option>
                                        <option value="Ankara">Ankara</option>
                                        <option value="Antalya">Antalya</option>
                                        <option value="Artvin">Artvin</option>
                                        <option value="Aydın">Aydın</option>
                                        <option value="Balıkesir">Balıkesir</option>
                                        <option value="Bilecik">Bilecik</option>
                                        <option value="Bingöl">Bingöl</option>
                                        <option value="Bitlis">Bitlis</option>
                                        <option value="Bolu">Bolu</option>
                                        <option value="Burdur">Burdur</option>
                                        <option value="Bursa">Bursa</option>
                                        <option value="Çanakkale">Çanakkale</option>
                                        <option value="Çankırı">Çankırı</option>
                                        <option value="Çorum">Çorum</option>
                                        <option value="Denizli">Denizli</option>
                                        <option value="Diyarbakır">Diyarbakır</option>
                                        <option value="Edirne">Edirne</option>
                                        <option value="Elazığ">Elazığ</option>
                                        <option value="Erzincan">Erzincan</option>
                                        <option value="Erzurum">Erzurum</option>
                                        <option value="Eskişehir">Eskişehir</option>
                                        <option value="Gaziantep">Gaziantep</option>
                                        <option value="Giresun">Giresun</option>
                                        <option value="Gümüşhane">Gümüşhane</option>
                                        <option value="Hakkâri">Hakkâri</option>
                                        <option value="Hatay">Hatay</option>
                                        <option value="Isparta">Isparta</option>
                                        <option value="Mersin">Mersin</option>
                                        <option value="İstanbul">İstanbul</option>
                                        <option value="İzmir">İzmir</option>
                                        <option value="Kars">Kars</option>
                                        <option value="Kastamonu">Kastamonu</option>
                                        <option value="Kayseri">Kayseri</option>
                                        <option value="Kırklareli">Kırklareli</option>
                                        <option value="Kırşehir">Kırşehir</option>
                                        <option value="Kocaeli">Kocaeli</option>
                                        <option value="Konya">Konya</option>
                                        <option value="Kütahya">Kütahya</option>
                                        <option value="Malatya">Malatya</option>
                                        <option value="Manisa">Manisa</option>
                                        <option value="Kahramanmaraş">Kahramanmaraş</option>
                                        <option value="Mardin">Mardin</option>
                                        <option value="Muğla">Muğla</option>
                                        <option value="Muş">Muş</option>
                                        <option value="Nevşehir">Nevşehir</option>
                                        <option value="Niğde">Niğde</option>
                                        <option value="Ordu">Ordu</option>
                                        <option value="Rize">Rize</option>
                                        <option value="Sakarya">Sakarya</option>
                                        <option value="Samsun">Samsun</option>
                                        <option value="Siirt">Siirt</option>
                                        <option value="Sinop">Sinop</option>
                                        <option value="Sivas">Sivas</option>
                                        <option value="Tekirdağ">Tekirdağ</option>
                                        <option value="Tokat">Tokat</option>
                                        <option value="Trabzon">Trabzon</option>
                                        <option value="Tunceli">Tunceli</option>
                                        <option value="Şanlıurfa">Şanlıurfa</option>
                                        <option value="Uşak">Uşak</option>
                                        <option value="Van">Van</option>
                                        <option value="Yozgat">Yozgat</option>
                                        <option value="Zonguldak">Zonguldak</option>
                                        <option value="Aksaray">Aksaray</option>
                                        <option value="Bayburt">Bayburt</option>
                                        <option value="Karaman">Karaman</option>
                                        <option value="Kırıkkale">Kırıkkale</option>
                                        <option value="Batman">Batman</option>
                                        <option value="Şırnak">Şırnak</option>
                                        <option value="Bartın">Bartın</option>
                                        <option value="Ardahan">Ardahan</option>
                                        <option value="Iğdır">Iğdır</option>
                                        <option value="Yalova">Yalova</option>
                                        <option value="Karabük">Karabük</option>
                                        <option value="Kilis">Kilis</option>
                                        <option value="Osmaniye">Osmaniye</option>
                                        <option value="Düzce">Düzce</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>Adres :</td>
                                <td><textarea name="adres" cols="30" rows="4"></textarea></td>
                            </tr>
                            <tr>
                                <td>E-mail * :</td>
                                <td><input type="email" name="mail" placeholder="E-mail adresinizi yazınız..." required></td>
                            </tr>
                            <tr>
                                <td>Şifre * :</td>
                                <td><input type="password" name="sifre" placeholder="Şifrenizi yazınız..." required></td>
                            </tr>
                            <tr>
                                <td>Website :</td>
                                <td><input type="text" name="websayfasi" class="form-control" placeholder="Varsa website adresinizi giriniz..."></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <input type="submit" value="Kayıt Ol" name="kayitol">
                                    <br>
                                    <input type="reset" name="mesajsil" value="Reset">
                                    <br>
                                    <span>Hesabınız varsa <a href="/girisyap.asp">giriş yapın!</a>
                                </td>
                            </tr>
                        </table>
                    </form>
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
</body>
</html>