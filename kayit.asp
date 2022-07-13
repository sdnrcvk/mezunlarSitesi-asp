<%
Response.CharSet ="windows-1254" 
Set Baglantim = Server.CreateObject("ADODB.Connection")
Baglantim.Open("DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("Database1.mdb"))
Set Tablom = server. CreateObject("ADODB.Recordset")
Tablom.Open "kullanicilar", Baglantim,1,3

Tablom.AddNew 
'Tablodaki alanlara veri aktarma
Tablom("ad") =request("ad")
Tablom("soyad") =request("soyad")
Tablom("gorev") =request("gorev")
Tablom("okulno") =request("okulno")
Tablom("telefon") =request("telefon")
Tablom("cinsiyet") =request("cinsiyet")
Tablom("hobi")=request("hobiler")
Tablom("dogumyili") =request("dogumtarihi")
Tablom("yasadigisehir") =request("sehir")
Tablom("adres") =request("adres")
Tablom("email") =request("mail")
Tablom("sifre") =request("sifre")
Tablom("websayfasi") =request("websayfasi")

'aktarma islemi birince tablonun guncellenmesi:
Tablom.Update

'tablonun kapatilmasi:
  Tablom.close
  set Tablom= Nothing
'baglantinin kesilmesi:
  Baglantim.close
  set Baglantim= Nothing


response.redirect "girisyap.asp"

%>



