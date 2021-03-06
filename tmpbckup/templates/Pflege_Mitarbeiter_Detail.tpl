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
      <span style="float:right;">Gruppe / Team angeben</span>
      Mitarbeiterqualifizierung
      <br>
      Version xx / xx.xx.xxxx
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
         <h1>Mitarbeiter:</h1>
         <h4>Name</h4>
         <p>${data_p[0]}</p>
         <h4>Vorname</h4>
         <p>${data_p[1]}</p>
         <h4>Akademischer Grad</h4>
         <p>${data_p[2]}</p>
         <h4>Beschaeftigung</h4>
         <p>${data_p[3]}</p>
         <table>
	    <h1> Teilnahmen</h1>
            
            % for x in data_o:
            
               <tr>
                  <td>
                     <h4>Weiterbildung</h4>
                  </td>
               
                  <td>
                     <h4>Status</h4>
                  </td>
               </tr>
               <tr>
                  <td>${x[0]}</td>
                  <td>${x[2]}</td>
                  

               </tr>
            
            % endfor
         </table>
         <table>
            <h1> Zertifikate</h1>
            % for x in data_c:
               <tr>
                  <td>
                     <h4>Weiterbildung</h4>
                  </td>
               </tr>
               <tr>
                  <td>${x}</td>
                  
               </tr>
            % endfor
         </table>
      </article>
   </section>
</body>
</html>
