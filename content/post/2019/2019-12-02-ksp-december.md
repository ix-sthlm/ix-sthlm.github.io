+++
authors = [ "etu" ]
categories = [ "Nyckelsignering", "GPG" ]
date = "2019-10-14T19:30:00+01:00"
title = "Nyckelsigneringsparty december 2019"
draft = true
+++
Hej och välkomna på vårt fjortonde nyckelsigneringsparty i Stockholm.

Den 2:a december klockan 19:00 så bjuder IX in till nyckelsigneringsparty i UFS lokaler vid Fridhemsplan, Stockholm. Adressen dit är [Polhemsgatan 38](/about/#besök-oss). De som vill ha nybörjarhjälp, har frågor eller bara vill umgås är välkomna från klockan 17:30. Vi kan även erbjuda hjälp med att printa lappar med information om din nyckel (se nedan).

#### Förberedelser för deltagande
För att deltaga så behöver du ha med dig papperslappar med din fingerprint samt din identitet på samma papper. Du bör även ha med dig en gilltig ID-handling så att andra deltagare kan verifiera din identitet.

Ett exempel på att ta fram detta är enligt följande:
```
$ gpg --fingerprint --keyid-format 0xlong "elis@hirwing.se"
```
Resultatet av ovanstående skriver du ut tillsammans med en länk var man hittar din nyckel inkl alla dess signaturer.
Exempel:
```
pub  rsa4096/0xD57EFA625C9A925F 2016-04-30 [SC] [expires: 2023-06-23]
     Key fingerprint = 67FE 98F2 8C44 CF22 1828  E12F D57E FA62 5C9A 925F
uid                  [ultimate] Elis Hirwing <elis@hirwing.se>
uid                  [ultimate] Elis Hirwing <etu@failar.nu>
uid                  [ultimate] Elis Hirwing <elis@failar.nu>
uid                  [ultimate] Elis Hirwing (SA0BSE) <s@0b.se>
uid                  [ultimate] Elis Hirwing (SA0BSE) <sa@0b.se>
sub  rsa4096/0xCC77E1CD861D1104 2016-04-30 [E] [expires: 2023-06-23]
sub  rsa4096/0xF141FC8514E6F255 2016-04-30 [A] [expires: 2023-06-23]

https://sa.0b.se/D57EFA625C9A925F.asc
```

Det underlättar om samtliga deltagare laddar upp sin nyckel på [IX Nyckelserver](#ix-nyckelserver) (som inte uppdateras från de traditionella nyckelservrarna för att minska risken för smittade nycklar):
```
$ gpg --keyserver keys.ix.ufs.se --send-keys <ditt fingeravtryck>
```

#### Förfarande för signeringar
Samtliga deltagare lägger en trave lappar på deltagarbordet. Sedan får samtliga deltagare hämta en av varje lapp av andra deltagares lappar.

Samtliga deltagare gör följande:

1. Slår sig ner vid ett bord med sina förberedda lappar samt ID-handling 
2. Skickar runt sin bunt med lappar tillsammans med ID-handling 
3. Tar lappar av de man inte signerat sedan tidigare samt markerar på lapparna man tar om man kontrollerat identiteten mot en giltig ID-handling man känner sig nöjd med

Efter denna procedur är klar så är det upp till var och en att genomföra en klassisk signerings-procedur som ser ut som följande:

1. Hämta nyckeln du ska signera från fil eller nyckelserver (keys.ix.ufs.se eller keys.openpgp.org) 
2. Verifiera att fingerprinten och identiteten stämmer mot lappen 
3. Signera nyckeln
4. Eposta den signerade nyckeln i ett krypterat mail till personen

När du tar emot mail från andra deltagare med din signerade nyckel så importerar du nyckeln och laddar upp din nyckel, nu med ytterligare en eller flera signaturer, till keys.ix.ufs.se och uppdaterar din nyckelfil (den fil du angett på lappen enligt ovan).

#### IX Nyckelserver
IX har en nyckelserver som inte är del av någon [serverpool](https://sks-keyservers.net/). Detta innebär att deltagare kan både ladda upp och ladda ner nycklar där vilket oftast är betydligt snabbare än att använda de stora delade servrarna.

IX Nyckelserver heter [keys.ix.ufs.se](https://keys.ix.ufs.se/).

För att använda denna nyckelserver med GPG så kan ni använda flaggan

```
--keyserver keys.ix.ufs.se
```
som första argument till alla gpg-kommandon ni kör som har något med att söka, skicka eller hämta nycklar att göra.

#### Flyer
Det finns en flyer att printa om du vill sätta upp någonstans (på jobb,
i skola eller var du nu känner för) så finns en flyer här:
![Flyer](/img/keysigning-flyer-2019.png)
