+++
authors = [ "etu" ]
categories = [ "Nyckelsignering", "GPG" ]
date = "2018-08-20T00:00:00+02:00"
title = "Nyckelsigneringsparty augusti 2018"
draft = true
+++
Hej och välkomna på vårt sjätte nyckelsigneringsparty i Stockholm.

Den 20:e augusti klockan 19:00 så bjuder IX in till nyckelsigneringsparty
i UFS lokaler vid Fridhemsplan, Stockholm. Adressen dit är
[Polhemsgatan 38](/about/). De som vill ha nybörjarhjälp eller har frågor
är välkomna från klockan 17:30 att ställa dessa. Vi kan även erbjuda hjälp
med att printa lappar (Mer info om lappar kommer).

#### Förberedelser för deltagande
För att deltaga så behöver du ha med dig papperslappar med din fingerprint
samt din identitet på samma papper. Du bör även ha med dig en gilltig
ID-handling så att andra deltagare kan verifiera din identitet.

Ett exempel på att ta fram detta är enligt följande:
```
$ gpg --fingerprint "Elis Hirwing"
pub   rsa4096 2016-04-30 [SC] [expires: 2022-10-13]
      67FE 98F2 8C44 CF22 1828  E12F D57E FA62 5C9A 925F
uid           [ultimate] Elis Hirwing <elis@hirwing.se>
sub   rsa4096 2016-04-30 [E]
sub   rsa4096 2016-04-30 [A]
```

#### Förfarande för signeringar
Samtliga deltagare lägger en trave lappar på deltagarbordet. Sedan får
samtliga deltagare hämta en av varje lapp av andra deltagares lappar.

Samtliga deltagare gör följande:

1. Lämnar en bunt med lappar på ett deltagarbord
2. Hämtar varsinn lapp från bordet av de andra deltagarnas lappar
3. Slär sig ner vid ett bord och skickar runt ID-handlingar
4. Markerar på lappar om identiteter är korrekta eller inte

Efter denna procedur är klar så är det upp till var och en att genomföra
en klassisk signerings-procedur som ser ut som följande:

1. Hämta nyckeln du ska signera från nyckelserver
2. Verifiera att fingerprinten och identiteten stämmer med lappen
3. Signera nyckeln
4. Eposta den signerade nyckeln i ett krypterat mail till personen

När du tar emot mail från andra deltagare med din signerade nyckel så
importerar du nyckeln och laddar upp den på en nyckelserver.

#### Flyer
Det finns en flyer att printa om du vill sätta upp någonstans (på jobb,
i skola eller var du nu känner för) så finns en flyer här:
![Flyer](/img/keysigningparty-2018-08-20-flyer.png)
