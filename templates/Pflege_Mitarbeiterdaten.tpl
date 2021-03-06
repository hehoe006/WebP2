##coding: utf-8
<!DOCTYPE html>
<head>
   <title>Mitarbeiterqualifizierung</title>
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="\hauptansicht.css"/>
</head>
<body>
   <header>
      <span style="float:right;">Nicholas Kroh | 1108804</span>
      <span style="float:left;">  Mitarbeiterqualifizierung</span>
      <br>
      <span style="float:right;">Leon Weinmann | 1288414</span>
      <span style="float:left;">  Version 1.0 / 17.12.2020</span>
      <br>
      <span style="float:right;">Hendrik Högden | 1308109</span>
      <br>
   </header>
   <section>
      <nav>
         <dl>
         <dt><a href="/?index=Startseite">Startseite</a></dt>
         <dl>
            <hr>
            <dt><a href="/?index=Pflege_Mitarbeiterdaten">Pflege Mitarbeiterdaten</a></dt>
            <dt><a href="/?index=Pflege_Weiterbildungen">Pflege Weiterbildungen</a></dt>
         </dl>
         <hr>
         <dl>
            <dt>Teilnahme</dt>
            <dd><a href="/?index=Sichtweise_Mitarbeiter">- Sichtweise Mitarbeiter</a></dd>
            <dd><a href="/?index=Sichtweise_Weiterbildungen">- Sichtweise Weiterbildungen</a></dd>
         </dl>
         <hr>
         <dl>
            <dt>Auswertung</dt>
            <dd><a href="/Mitarbeiter">- Mitarbeiter</a></dd>
            <dd><a href="/Weiterbildungen">- Weiterbildungen</a></dd>
            <dd><a href ="/Zertifikate">- Zertifikate</a></dd>
         </dl>
         <hr>
      </nav>
      <article>
         <h1>Test</h1>
         <table>
            <tr>
               <th>Name</th>
               <th>Vorname</th>
               <th>akademische Grade</th>
               <th>Tätigkeit</th>
            </tr>
            % for key_s in data_o:
            <tr>
               <td>${data_o[key_s][0]}</td>
               <td>${data_o[key_s][1]}</td>
               <td>${data_o[key_s][2]}</td>
               <td>${data_o[key_s][3]}</td>
               <td>
                  <a href="/edit/${key_s}?listform=${listform}">bearbeiten</a>
                  <a href="/delete/${key_s}?listform=${listform}" class="clDelete">Löschen</a>
                  <a href="/showdetailpflegeemploy/${key_s}" >Anzeigen</a>
               </td>
            </tr>
            % endfor
         </table>
         <div>
            <a href="/add">erfassen</a>
         </div>
      </article>
   </section>
</body>
</html>

