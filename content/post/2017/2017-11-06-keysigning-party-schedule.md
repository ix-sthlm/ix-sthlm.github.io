+++
authors = [ "etu" ]
categories = [ "Nyckelsignering", "GPG" ]
date = "2017-11-06T19:00:00+01:00"
title = "Schema för Nyckelsigneringsparty i Stockholm"
+++
Uppföljning av tidigare [bloggpost](/blog/2017/10/11/nyckelsigneringsparty-i-stockholm/).

#### Schema för kvällen
 - 17:00 - Vi satsar på att vara på plats för det fall någon är tidig
 - 17:30 - Öppnar för de som vill ha hjälp att installera GnuPG och eventuella tillägg för mejlklienter
 - 19:00 - Nyckelsignering
   - Signerade nycklar skickas till nyckelinnehavaren. Innehavaren får sedan (om man vill) skicka upp sin nyckel till en nyckelserver
   - Var och en bestämmer själv på vilket sätt man vill verifiera nyckelinnehavarens identitet (Debian förespråkar ID-handling)
 - 21:00 - Partyt avslutas i allmän förbrödring/försystring

#### Förslag på resurser för nybörjare
 - GnuPG: https://gnupg.org/download/index.html
 - Guide för GnuPG från IIS: https://www.iis.se/docs/Kom-igang-med-PGP.pdf
 - Enigmail-plugin för Thunderbird: https://www.enigmail.net/index.php/en/download/download-enigmail
 - Gpg4Win för Windows/Outlook: https://www.gpg4win.org/
 - PGPTools för macOS: https://gpgtools.org/

#### Tips till de som inte redan har en nyckel
 - Skapa så lång nyckel som möjligt (4096 bitars längd)
 - Skapa en nyckel med ett bäst före-datum (typ 5 år framåt i tiden)
 - Ladda upp din nyckel på en publik nyckelserver
 - Skriv ut papper med all info om din nyckel som man kan få ut från till exempel `gpg --list-keys`

Det ser ut i stil med följande:
```
pub   rsa4096 2016-04-30 [SC] [expires: 2022-10-13]
      67FE98F28C44CF221828E12FD57EFA625C9A925F
uid           [ultimate] Elis Hirwing <elis@hirwing.se>
sub   rsa4096 2016-04-30 [E]
sub   rsa4096 2016-04-30 [A]
```
