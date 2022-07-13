<%
id=request.querystring("id")

Response.CharSet ="windows-1254" 
Set Baglantim = Server.CreateObject("ADODB.Connection")
Baglantim.Open("DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("Database1.mdb"))
Set Tablom = server. CreateObject("ADODB.Recordset")
Tablom.Open "fotoYorumlar", Baglantim,1,3

sat = split(time(),":",-1,1)
if right(time(),2)="PM" and sat(0)<>12 then
 sat(0) = sat(0) + 12
end if
sat(0) = sat(0) + 7
if sat(0)>=24 then 
sat(0)=sat(0)-24
end if
saat_tr = sat(0) & ":" & sat(1) & ":" & left(sat(2),2)


function GetDate2Digit(val)
GetDate2Digit= Right(String(2, "0") & val, 2)
end function

function GetDateCFM(dat)
GetDateCFM = GetDate2Digit(day(d)) & "." & GetDate2Digit(month(d)) & "." & year(d)
end function

d=CDate(date())

Tablom.AddNew 
'Tablodaki alanlara veri aktarma
Tablom("yorumSahibi") =Session("UserLoggedIn")
Tablom("yorum") =request("yorum")
Tablom("yorumTarihi") =GetDateCFM(d) & " " & saat_tr
Tablom("foto_id") =request("id")
'aktarma islemi birince tablonun guncellenmesi:
Tablom.Update

'tablonun kapatilmasi:
  Tablom.close
  set Tablom= Nothing
'baglantinin kesilmesi:
  Baglantim.close
  set Baglantim= Nothing


response.redirect "fotograf.asp?id="& id

%>