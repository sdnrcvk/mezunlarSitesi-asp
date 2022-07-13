<%
Response.Buffer=True
Response.Expires = -100

Response.CharSet ="windows-1254" 
mail=request.form("mail")
sifre=request.form("sifre")

Set Baglantim = Server.CreateObject("ADODB.Connection")
Baglantim.Open("DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("Database1.mdb"))
ssql="Select * from kullanicilar where email='" & mail &"' and sifre='"& sifre &"';"
Set rs = Baglantim.Execute(sSQL)

		If rs.BOF And rs.EOF Then
		    Response.Write "Bilgiler onaylanmadi. Yanlis Kullanici Adi veya Sifre."
			Response.Write " <a href='girisyap.asp'>Giris sayfasina git.</a> "

		Else
		    user_name = rs("ad")
			user_surname=rs("soyad")
	        Session("UserLoggedIn") = user_name & " " & user_surname
	     	Response.Write "Bilgiler onaylandi."
	     	
	     	
 			response.redirect "index.asp"	
 		
 		End If
%>
