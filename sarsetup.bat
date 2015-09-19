@chcp 65001 > nul & set sarsetup_args=%* & set sarsetup_self=%~f0& powershell -c "(gc \"%~f0\" -encoding UTF8) -replace '@chcp 65001.*','#' | Write-Host" | powershell -c - & goto :eof

# based on yandex.ban.xml

$fname= 'sarules.xml'

function DoRules {
  addrule "Exe"  "2GISTrayNotifier"  "O=DOUBLEGIS, L=NOVOSIBIRSK, S=NOVOSIBIRSKAYA OBLAST', C=RU"  "2ГИС"  "2GISTRAYNOTIFIER.EXE"

  addrules "AlterGeo"  "O=WI2GEO LTD, L=MOSCOW, S=MOSCOW, C=RU"

  addrules "AnVir"  "O=ANVIR SOFTWARE, L=MOSCOW, S=MOSCOW, C=RU"  "*"  "*" `
          "ProductName=""ANVIR TASK MANAGER"" BinaryName=""ANVIR.EXE"""  "LowSection=""6.7.0.0"" HighSection=""*""" `
          "ProductName=""ANVIR TASK MANAGER"" BinaryName=""ANVIR64.EXE"""  "LowSection=""6.7.0.0"" HighSection=""*""" `
          "ProductName=""ANVIR TASK MANAGER FREE"" BinaryName=""ANVIR.EXE"""  "LowSection=""7.5.2.0"" HighSection=""*"""

  addrules "AOL"  "O=AOL INC., L=DULLES, S=VIRGINIA, C=US"

  addrules "Подписано O=APP BUD, L=SANTA MONICA, S=CALIFORNIA, C=US"  "O=APP BUD, L=SANTA MONICA, S=CALIFORNIA, C=US"

  addrules "ASK"  "O=ASK.COM, L=OAKLAND, S=CALIFORNIA, C=US"
  addrules "ASK"  "O=ASK.COM, L=OAKLAND, S=CA, C=US"
  addrules "ASK network"  "O=APN LLC, L=OAKLAND, S=CALIFORNIA, C=US"
  addrules "Подписано O=BAIDU ONLINE NETWORK TECHNOLOGY (BEIJING)CO., LTD, L=BEIJING, S=BEIJING, C=CN"  "O=BAIDU ONLINE NETWORK TECHNOLOGY (BEIJING)CO., LTD, L=BEIJING, S=BEIJING, C=CN"
  addrules "Подписано O=BEIJING AMAZGAME AGE INTERNET TECHNOLOGY CO., LTD., L=BEIJING, S=BEIJING, C=CN"  "O=BEIJING AMAZGAME AGE INTERNET TECHNOLOGY CO., LTD., L=BEIJING, S=BEIJING, C=CN"
  addrules "BROWSEBIT malware"  "O=BROWSEBIT, L=SANTA MONICA, S=CALIFORNIA, C=US"
  addrules "Cart Crunch Israel LTD"  "O=CART CRUNCH ISRAEL LTD, L=GIVATAYIM, S=NA, C=IL"
  addrules "ClientConnect LTD"  "O=ClientConnect LTD, L=Ness Ziona, S=Israel', C=IL"
  addrules "CNET"  "O=CBS INTERACTIVE, L=SAN FRANCISCO, S=CALIFORNIA, C=US"
  addrules "Conduit LTD."  "O=CONDUIT LTD., L=NESS ZIONA, S=ISRAEL, C=IL"
  addrules "Daemon Tools"  "O=DT SOFT LTD, L=BELIZE CITY, S=BELIZE, C=BZ"
  addrules "Подписано O=DEAL KEEPER, L=SANTA MONICA, S=CALIFORNIA, C=US"  "O=DEAL KEEPER, L=SANTA MONICA, S=CALIFORNIA, C=US"
  addrules "Digital Pine"  "O=&quot;DIGITAL PINE, LLC - ООО `”ДИДЖИТАЛ ПАЙН`”&quot;, L=MOSCOW, S=MOSCOW CITY, C=RU"
  addrules "Digital Pine"  "O=&quot;DIGITAL PINE, LLC&quot;, L=MOSCOW, C=RU"
  addrules "Digital Pine"  "O=DIGITAL PINE LLC, L=MOSCOW, S=MOSCOW REGION, C=RU"
  addrules "EPICPLAY"  "O=EPICPLAY LLC, L=IRVINE, S=CALIFORNIA, C=US"
  addrules "EPICSCALE"  "O=EPIC SCALE, INC., L=OAKLAND, S=CALIFORNIA, C=US"
  addrules "Finedream Invest"  "O=FINEDREAM INVEST LTD, L=LONDON, S=HAMPSTEAD, C=GB"
  addrules "Foto-Tsentr"  "O=LLC ``FOTO-TSENTR ``, L=MYKOLAYIV, S=MYKOLAYIVSKA, C=UA"
  addrules "Giner (SearchProtect/XTAB)"  "O=GINER TECH INC, L=WILMINGTON, S=DELAWARE, C=US"
  addrules "Hamster"  "O=HAMSTER SOFT, L=MOSCOW, S=MOSCOW, C=RU"
  addrules "Hamster"  "O=LLC 'HAMSTERSOFT', L=MOSCOW, S=MOSCOW, C=RU"
  addrules "Hamster"  "O=HAMSTERSOFT LLC, L=MOSCOW, S=MOSCOW, C=RU"
  addrules "IAC"  "O=IAC SEARCH AND MEDIA, L=OAKLAND, S=CALIFORNIA, C=US"
  addrules "IAC"  "O=IAC, L=WHITE PLAINS, S=NEW YORK, C=US"
  addrules "ICQ"  "O=ICQ, L=TEL AVIV, S=ISRAEL, C=IL"
  addrules "ICQ"  "O=ICQ LTD, L=TEL AVIV, S=ALBERTA, C=IL"
  addrules "Подписано O=KOMETA LLC, L=MOSCOW, S=MOSCOW REGION, C=RU"  "O=KOMETA LLC, L=MOSCOW, S=MOSCOW REGION, C=RU"

  addrules "Mail"  "O=LLC MAIL.RU, L=MOSCOW, S=MOSCOW, C=RU"  "*"  "*" `
          "ProductName=""MAIL.RU АГЕНТ"" BinaryName=""MAGENT.EXE"""  "LowSection=""6.0.0.0"" HighSection=""*"""

  addrules "McAfee"  "O=MCAFEE, INC., L=SANTA CLARA, S=CALIFORNIA, C=US"
  addrules "MediaGet"  "O=&quot;MEDIA, LLC&quot;, L=ST. PETERSBURG, S=RUSSIAN FEDERATION, C=RU"
  addrules "MediaGet"  "O=BANNER LLC, L=ST.PETERSBURG, S=RUSSIA, C=RU"
  addrules "MediaGet"  "O=INBOX OOO, L=MOSCOW, S=MOSCOW, C=RU"
  addrules "MediaGet"  "O=OOO SOFT-MEDIA, L=IRKUTSK GOROD, S=MOSCOW, C=RU"
  addrules "MediaGet"  "O=MEDIA GET LLC, L=SAINT-PETERSBURG, S=RUSSIA, C=RU"
  addrules "Messenger Plus"  "O=YUNA SOFTWARE LIMITED, L=ST. HELIER, S=JERSEY, C=GB"
  addrules "Montiera Technologies"  "O=MONTIERA TECHNOLOGIES LTD, L=EVEN YEHUDA, S=HASHARON, C=IL"
  addrules "Подписано O=MINDSPARK INTERACTIVE NETWORK, L=WHITE PLAINS, S=NEWYORK, C=US"  "O=MINDSPARK INTERACTIVE NETWORK, L=WHITE PLAINS, S=NEWYORK, C=US"
  addrules "Obnovi Soft"  "O=KHEIFETS ILIYA MIKHAILOVICH IP, L=MOSCOW, S=MOSCOW, C=RU"
  addrules "PortRu"  "O=OOO PORT.RU, L=MOSCOW, S=MOSCOW, C=RU"
  addrules "PriceMeter"  "O=PRICEMETER, L=TEL AVIV, S=TEL AVIV, C=IL"
  addrules "QIP"  "O=OOO RUSSKIE INTERNET RESHENIJA, L=MOSCOW, S=MOSCOW, C=RU"
  addrules "QIP 2012"  "O=OOO MEDIA MIR, L=MOSCOW, S=RU, C=RU"
  addrules "RAMBLER"  "O=RAMBLER INTERNET HOLDINGS LLC, L=MOSCOW, S=RUSSIAN FEDERATION, C=RU"
  addrules "Rambler"  "O=RAMBLER INTERNET HOLDINGS, LLC, L=MOSCOW, S=MOSCOW, C=RU"
  addrules "Reg Organizer"  "O=KONSTANTIN POLYAKOV, L=EKATERINBURG, S=N/A, C=RU"
  addrules "SourceForge"  "O=IC FORGE, L=TEL AVIV, S=ISRAEL, C=IL"
  addrules "Подписано O=SKYMONK SOLUTIONS LIMITED, L=TORTOLA, S=TORTOLA, C=VG"  "O=SKYMONK SOLUTIONS LIMITED, L=TORTOLA, S=TORTOLA, C=VG"
  addrules "Softdeluxe"  "O=Softdeluxe Ltd., L=Dubna, S=Moscow region', C=RU"
  addrules "SPEEDUPMYPC"  "O=UNIBLUE SYSTEMS, L=BIRKIRKARA, S=BIRKIRKARA, C=MT"  "SPEEDUPMYPC"  "*"
  addrules "SUPERFISH"  "O=SUPERFISH INC., L=GRANDVILLE, S=MICHIGAN, C=US"
  addrules "SweetIM"  "O=SWEETIM TECHNOLOGIES LTD, L=RA'ANANA, S=ISRAEL, C=IL"
  addrules "Symantec"  "O=SYMANTEC CORPORATION, L=SANTA MONICA, S=CALIFORNIA, C=US"
  addrules "techgile"  "O=TECHGILE, L=SANTA MONICA, S=CALIFORNIA, C=US"
  addrules "Подписано O=TUTO4PC.COM, L=PARIS, S=ILE-DE-FRANCE, C=FR"  "O=TUTO4PC.COM, L=PARIS, S=ILE-DE-FRANCE, C=FR"
  addrules "Uniblue"  "O=UNIBLUE SYSTEMS, L=MSIDA, S=MSIDA, C=MT"
  addrules "Подписано O=UPDATESTAR GMBH, L=BERLIN, S=BERLIN, C=DE"  "O=UPDATESTAR GMBH, L=BERLIN, S=BERLIN, C=DE"
  addrules "Web Amplified"  "O=WEB AMPLIFIED, L=SAN DIEGO, S=CALIFORNIA, C=US"
  addrules "Webalta toolbar"  "O=INTERTECH LTD, L=ST. PETERSBURG, S=ST. PETERSBURG, C=RU"
  addrules "WINDOWS SYSTOOL  SERVICE"  "O=CHERISHED TECHNOLOGY LIMITED, L=香港, S=香港, C=HK"
  addrules "Woodtale Technology Inc"  "O=WOODTALE TECHNOLOGY INC, L=WILMINGTON, S=DELAWARE, C=US"
  addrules "Word Shark"  "O=WORD SHARK, L=SAN DIEGO, S=CALIFORNIA, C=US"
  addrules "Yahoo"  "O=YAHOO! INC., L=SANTA CLARA, S=CA, C=US"
  addrules "Yandex"  "O=OOO YANDEX, L=MOSCOW, S=MOSCOW, C=RU"

  addrules "Yandex"  "O=YANDEX LLC, L=MOSCOW, S=MOSCOW, C=RU"  "*"  "*" `
          "ProductName=""YANDEX"" BinaryName=""BROWSER.EXE"""  "LowSection=""*"" HighSection=""*""" `
          "ProductName=""YANDEX INSTALLER"" BinaryName=""YANDEX.EXE"""  "LowSection=""*"" HighSection=""*"""

  addrules "Zona"  "O=DESTINY MEDIA, L=MOSCOW, S=MOSCOW, C=RU"

  return
}

#--------------------------------------------------------------

$rules = @{
"Exe" =
@"
<AppLockerPolicy Version="1">
  <RuleCollection Type="Dll" EnforcementMode="NotConfigured" />
  <RuleCollection Type="Script" EnforcementMode="NotConfigured" />
  <RuleCollection Type="Appx" EnforcementMode="Enabled">
    <FilePathRule Id="0a233466-ebac-40c8-ab14-ff4756c58684" Name="Все" Description="" UserOrGroupSid="S-1-1-0" Action="Allow">
      <Conditions>
        <FilePathCondition Path="*" />
      </Conditions>
    </FilePathRule>
  </RuleCollection>
  <RuleCollection Type="Exe" EnforcementMode="Enabled">`n
"@
"Msi" =
@"
    <FilePathRule Id="5993d5ce-0ac1-4d76-bde7-cfa1f173cfbb" Name="Все" Description="" UserOrGroupSid="S-1-1-0" Action="Allow">
      <Conditions>
        <FilePathCondition Path="*" />
      </Conditions>
    </FilePathRule>
  </RuleCollection>
  <RuleCollection Type="Msi" EnforcementMode="Enabled">`n
"@
"Footer" =
@"
     <FilePathRule Id="93534678-c068-4797-8b54-d0c349cef1cd" Name="Все" Description="" UserOrGroupSid="S-1-1-0" Action="Allow">
       <Conditions>
         <FilePathCondition Path="*" />
       </Conditions>
     </FilePathRule>
  </RuleCollection>
</AppLockerPolicy>
"@
}

$compatuuids = @{
  "Exe__O=ANVIR SOFTWARE, L=MOSCOW, S=MOSCOW, C=RU" = "2cbb5bea-2787-43ec-b5c3-d96b5bf3ba05"
  "Exe__O=AOL INC., L=DULLES, S=VIRGINIA, C=US" = "46914bbc-204f-300a-6035-90e81e4b6c44"
  "Exe__O=APP BUD, L=SANTA MONICA, S=CALIFORNIA, C=US" = "005bc9ce-bf0b-4cd4-8f46-a02dd63579ce"
  "Exe__O=ASK.COM, L=OAKLAND, S=CALIFORNIA, C=US" = "9428d01d-597b-d0f4-4467-1e853dd706f6"
  "Exe__O=BAIDU ONLINE NETWORK TECHNOLOGY (BEIJING)CO., LTD, L=BEIJING, S=BEIJING, C=CN" = "1f904f9b-728e-4240-8e6c-de6476ece7a7"
  "Exe__O=BEIJING AMAZGAME AGE INTERNET TECHNOLOGY CO., LTD., L=BEIJING, S=BEIJING, C=CN" = "98cba2b6-f4f6-4d62-bb7e-f2d37c3b5264"
  "Exe__O=BROWSEBIT, L=SANTA MONICA, S=CALIFORNIA, C=US" = "15c91ac2-877f-4fa3-beaa-1fe1f998cc13"
  "Exe__O=CART CRUNCH ISRAEL LTD, L=GIVATAYIM, S=NA, C=IL" = "335af109-285f-4eba-8c30-3840fd7f0278"
  "Exe__O=CBS INTERACTIVE, L=SAN FRANCISCO, S=CALIFORNIA, C=US" = "19b6ae09-1a65-3707-cb5f-91e0af523108"
  "Exe__O=CHERISHED TECHNOLOGY LIMITED, L=香港, S=香港, C=HK" = "8b9f3c3c-dc5a-48c4-8ca5-b9f252bae2dd"
  "Exe__O=ClientConnect LTD, L=Ness Ziona, S=Israel', C=IL" = "12014465-3e86-4504-a28d-6ed66f650633"
  "Exe__O=CONDUIT LTD., L=NESS ZIONA, S=ISRAEL, C=IL" = "24f820e8-111b-4aa0-9d1b-2f9ed2ac9b68"
  "Exe__O=DEAL KEEPER, L=SANTA MONICA, S=CALIFORNIA, C=US" = "bc2ae223-90ed-4c8a-814b-0894e9268de5"
  "Exe__O=DESTINY MEDIA, L=MOSCOW, S=MOSCOW, C=RU" = "9a347e0b-cb71-40ff-aaa5-473fd8c78208"
  "Exe__O=DOUBLEGIS, L=NOVOSIBIRSK, S=NOVOSIBIRSKAYA OBLAST', C=RU" = "1853b5f1-f3b7-4b84-b59d-7d233cfcfc9b"
  "Exe__O=DT SOFT LTD, L=BELIZE CITY, S=BELIZE, C=BZ" = "54dd3e7a-5988-60c0-1d31-bae986076a3a"
  "Exe__O=EPIC SCALE, INC., L=OAKLAND, S=CALIFORNIA, C=US" = "9347fac7-0f43-47ac-8231-2dc3d0df6f87"
  "Exe__O=EPICPLAY LLC, L=IRVINE, S=CALIFORNIA, C=US" = "083eb228-97fa-47c9-9fd8-005d61d68b16"
  "Exe__O=FINEDREAM INVEST LTD, L=LONDON, S=HAMPSTEAD, C=GB" = "2c683990-4f88-4cb8-8813-a5133e2ce4ec"
  "Exe__O=GINER TECH INC, L=WILMINGTON, S=DELAWARE, C=US" = "3d78af8a-36a6-426e-9685-6c33abc36833"
  "Exe__O=HAMSTER SOFT, L=MOSCOW, S=MOSCOW, C=RU" = "e7980077-85fa-5b81-f712-ee53b2f78986"
  "Exe__O=HAMSTERSOFT LLC, L=MOSCOW, S=MOSCOW, C=RU" = "0f734819-f8b5-4e33-b2ca-92cc164c9ba8"
  "Exe__O=IC FORGE, L=TEL AVIV, S=ISRAEL, C=IL" = "b0d36960-9cbb-11e4-bd06-0800200c9a66"
  "Exe__O=ICQ LTD, L=TEL AVIV, S=ALBERTA, C=IL" = "aa44a8aa-d36d-402f-af4d-a93c40739189"
  "Exe__O=ICQ, L=TEL AVIV, S=ISRAEL, C=IL" = "1e416e55-2791-bb27-3f5d-caed11989d1d"
  "Exe__O=INTERTECH LTD, L=ST. PETERSBURG, S=ST. PETERSBURG, C=RU" = "9503ca90-a0ef-4901-bf1f-e6369af328ef"
  "Exe__O=KOMETA LLC, L=MOSCOW, S=MOSCOW REGION, C=RU" = "55acff86-e4fa-4d9f-9185-ec692b4309f0"
  "Exe__O=KONSTANTIN POLYAKOV, L=EKATERINBURG, S=N/A, C=RU" = "ff5c450e-44a7-4f31-ab14-093de96947bb"
  "Exe__O=LLC 'HAMSTERSOFT', L=MOSCOW, S=MOSCOW, C=RU" = "b6ccaa1a-6dd7-4a36-b3c5-566fa85cc8e3"
  "Exe__O=LLC MAIL.RU, L=MOSCOW, S=MOSCOW, C=RU" = "a3b33e8f-62de-0e8e-cc24-b8b16193adbc"
  "Exe__O=MCAFEE, INC., L=SANTA CLARA, S=CALIFORNIA, C=US" = "4627afe3-3034-b375-a917-a86534fdd7ff"
  "Exe__O=MEDIA GET LLC, L=SAINT-PETERSBURG, S=RUSSIA, C=RU" = "fce59a6f-e89d-23f8-5286-f4999ef2e72b"
  "Exe__O=MINDSPARK INTERACTIVE NETWORK, L=WHITE PLAINS, S=NEWYORK, C=US" = "99e884bf-b5f3-430c-9238-40574721ad6e"
  "Exe__O=MONTIERA TECHNOLOGIES LTD, L=EVEN YEHUDA, S=HASHARON, C=IL" = "e4799766-4794-4185-bfaa-82c0afb281fa"
  "Exe__O=OOO MEDIA MIR, L=MOSCOW, S=RU, C=RU" = "d1f0fabb-5b11-4b3f-850b-12bb91c5055d"
  "Exe__O=OOO PORT.RU, L=MOSCOW, S=MOSCOW, C=RU" = "bdbb131e-b1d2-4704-ac90-cb4af6305af9"
  "Exe__O=OOO RUSSKIE INTERNET RESHENIJA, L=MOSCOW, S=MOSCOW, C=RU" = "984ab146-2b51-84db-9e73-f20d48cea7a8"
  "Exe__O=OOO SOFT-MEDIA, L=IRKUTSK GOROD, S=MOSCOW, C=RU" = "d1c7d78c-e1e0-44de-923e-8832a7353558"
  "Exe__O=OOO YANDEX, L=MOSCOW, S=MOSCOW, C=RU" = "3701715b-a211-ff1e-7668-129691f0f8a4"
  "Exe__O=RAMBLER INTERNET HOLDINGS LLC, L=MOSCOW, S=RUSSIAN FEDERATION, C=RU" = "7c9616b5-96b2-4254-a2af-897f9b3a67d5"
  "Exe__O=RAMBLER INTERNET HOLDINGS, LLC, L=MOSCOW, S=MOSCOW, C=RU" = "d7481c28-78e0-0865-9e32-7f64e8fdefb9"
  "Exe__O=SKYMONK SOLUTIONS LIMITED, L=TORTOLA, S=TORTOLA, C=VG" = "bda265ad-9eee-44e5-a482-ea3fc7a0e1e6"
  "Exe__O=Softdeluxe Ltd., L=Dubna, S=Moscow region', C=RU" = "12730333-d9c0-4ff9-80e7-df80a8952c1f"
  "Exe__O=SUPERFISH INC., L=GRANDVILLE, S=MICHIGAN, C=US" = "5b775b81-1d51-44f1-bbd9-f49db4e0b169"
  "Exe__O=SWEETIM TECHNOLOGIES LTD, L=RA'ANANA, S=ISRAEL, C=IL" = "5633511a-d7f0-fc53-4efd-48bab71a5d7e"
  "Exe__O=SYMANTEC CORPORATION, L=SANTA MONICA, S=CALIFORNIA, C=US" = "bfd28866-3d3d-ae66-f120-2bb6211f41ba"
  "Exe__O=TECHGILE, L=SANTA MONICA, S=CALIFORNIA, C=US" = "df342268-9e99-468e-bcfc-828202e1412b"
  "Exe__O=TUTO4PC.COM, L=PARIS, S=ILE-DE-FRANCE, C=FR" = "c8256597-c742-48d7-b8d7-c663579ed471"
  "Exe__O=UNIBLUE SYSTEMS, L=BIRKIRKARA, S=BIRKIRKARA, C=MT" = "aaa0272a-83f4-470d-a227-e5cae18d182a"
  "Exe__O=UNIBLUE SYSTEMS, L=MSIDA, S=MSIDA, C=MT" = "63432a8b-bb11-cf87-d9e0-99f3c31519c6"
  "Exe__O=UPDATESTAR GMBH, L=BERLIN, S=BERLIN, C=DE" = "60585edf-6e18-42f9-b808-e4741f0768aa"
  "Exe__O=WI2GEO LTD, L=MOSCOW, S=MOSCOW, C=RU" = "b302bc38-50db-cd57-430a-05dd7b4a3a77"
  "Exe__O=WOODTALE TECHNOLOGY INC, L=WILMINGTON, S=DELAWARE, C=US" = "2f7e7563-fb06-498c-8a61-93271563a82c"
  "Exe__O=WORD SHARK, L=SAN DIEGO, S=CALIFORNIA, C=US" = "3f046a74-8352-4803-a162-485b75391b99"
  "Exe__O=YAHOO! INC., L=SANTA CLARA, S=CA, C=US" = "b2578909-be98-29e2-8a6d-cdde96164240"
  "Exe__O=YANDEX LLC, L=MOSCOW, S=MOSCOW, C=RU" = "f7b9ece6-6524-4151-9e5b-e8e39dc1332d"
  "Exe__O=YUNA SOFTWARE LIMITED, L=ST. HELIER, S=JERSEY, C=GB" = "d6a01c41-0e6e-7c59-6e3a-5145139d1381"
  "Msi__O=ANVIR SOFTWARE, L=MOSCOW, S=MOSCOW, C=RU" = "444cbc79-3ee1-b0d2-db66-1e8e3be5651e"
  "Msi__O=AOL INC., L=DULLES, S=VIRGINIA, C=US" = "9a48cbbe-3b20-d59b-d87d-4dbbbbabcd2a"
  "Msi__O=ASK.COM, L=OAKLAND, S=CALIFORNIA, C=US" = "0447f5bd-8a5a-2d9f-ad19-574ca0739de8"
  "Msi__O=CART CRUNCH ISRAEL LTD, L=GIVATAYIM, S=NA, C=IL" = "f8fc23e6-14bf-404c-a848-2059fc1e7fbf"
  "Msi__O=CBS INTERACTIVE, L=SAN FRANCISCO, S=CALIFORNIA, C=US" = "e3763c39-e775-0913-afe7-dc335aef7c76"
  "Msi__O=CHERISHED TECHNOLOGY LIMITED, L=香港, S=香港, C=HK" = "f487ebbb-e5d4-42ea-a189-c22dd5bc06d5"
  "Msi__O=CONDUIT LTD., L=NESS ZIONA, S=ISRAEL, C=IL" = "e8843182-3a37-4032-a4f1-009600d0a28f"
  "Msi__O=DT SOFT LTD, L=BELIZE CITY, S=BELIZE, C=BZ" = "f6d4bc50-4b16-4bad-07c3-20ed38639644"
  "Msi__O=EPIC SCALE, INC., L=OAKLAND, S=CALIFORNIA, C=US" = "7888fbe4-fbea-45ca-aef0-37ebd39cce0a"
  "Msi__O=EPICPLAY LLC, L=IRVINE, S=CALIFORNIA, C=US" = "144de70f-88be-4a24-9224-351e5d7563d5"
  "Msi__O=FINEDREAM INVEST LTD, L=LONDON, S=HAMPSTEAD, C=GB" = "aa0686ae-8a56-4369-924c-19ae718bedc8"
  "Msi__O=GINER TECH INC, L=WILMINGTON, S=DELAWARE, C=US" = "301bd7be-1e9e-477d-b88f-d909c9be444a"
  "Msi__O=HAMSTER SOFT, L=MOSCOW, S=MOSCOW, C=RU" = "99703899-bcb7-2edc-2700-7f62bb6de87f"
  "Msi__O=HAMSTERSOFT LLC, L=MOSCOW, S=MOSCOW, C=RU" = "5e12bdd3-ecb7-447c-b67b-17445f7f0616"
  "Msi__O=ICQ LTD, L=TEL AVIV, S=ALBERTA, C=IL" = "1e416e55-2791-bb27-3f5d-caed11989d1e"
  "Msi__O=ICQ, L=TEL AVIV, S=ISRAEL, C=IL" = "6f49c09b-b81c-0500-e5c7-a2d9a2562b04"
  "Msi__O=KONSTANTIN POLYAKOV, L=EKATERINBURG, S=N/A, C=RU" = "643d7a07-5c3e-2434-7739-7ff3a1957475"
  "Msi__O=LLC 'HAMSTERSOFT', L=MOSCOW, S=MOSCOW, C=RU" = "986b6393-99f4-432a-99d4-f3aebddd5b67"
  "Msi__O=LLC MAIL.RU, L=MOSCOW, S=MOSCOW, C=RU" = "c697889b-cfc8-fcb5-ab47-ee39d445e52d"
  "Msi__O=MCAFEE, INC., L=SANTA CLARA, S=CALIFORNIA, C=US" = "c2a62dd9-e7de-338a-fb17-c4e96092284c"
  "Msi__O=MEDIA GET LLC, L=SAINT-PETERSBURG, S=RUSSIA, C=RU" = "1d0108dd-b76d-ee4c-d6e7-8196420a7da7"
  "Msi__O=MONTIERA TECHNOLOGIES LTD, L=EVEN YEHUDA, S=HASHARON, C=IL" = "9817197d-f8a7-49e1-bcc4-1fa35fd0f0f4"
  "Msi__O=OOO PORT.RU, L=MOSCOW, S=MOSCOW, C=RU" = "70b45e67-cea9-c02a-2aca-6c3a575ccee2"
  "Msi__O=OOO RUSSKIE INTERNET RESHENIJA, L=MOSCOW, S=MOSCOW, C=RU" = "147f1b7f-a302-6aab-6d6e-bb094354c769"
  "Msi__O=OOO SOFT-MEDIA, L=IRKUTSK GOROD, S=MOSCOW, C=RU" = "d1c7d78c-e1e0-44de-923e-8832a7353559"
  "Msi__O=OOO YANDEX, L=MOSCOW, S=MOSCOW, C=RU" = "361d7116-e31f-7225-c13b-bf8b5f875b3a"
  "Msi__O=RAMBLER INTERNET HOLDINGS LLC, L=MOSCOW, S=RUSSIAN FEDERATION, C=RU" = "7c9616b5-96b2-4254-a2af-897f9b3a67d6"
  "Msi__O=RAMBLER INTERNET HOLDINGS, LLC, L=MOSCOW, S=MOSCOW, C=RU" = "2b354789-147c-775e-9343-75941e2fe243"
  "Msi__O=SUPERFISH INC., L=GRANDVILLE, S=MICHIGAN, C=US" = "35c6a97f-95e4-40d4-baf7-1fe9b0247c50"
  "Msi__O=SWEETIM TECHNOLOGIES LTD, L=RA'ANANA, S=ISRAEL, C=IL" = "b755212e-78c1-3244-3d75-6dccc5692553"
  "Msi__O=SYMANTEC CORPORATION, L=SANTA MONICA, S=CALIFORNIA, C=US" = "ba4631cf-ab8a-7d3b-144e-6e923e5eaa89"
  "Msi__O=TECHGILE, L=SANTA MONICA, S=CALIFORNIA, C=US" = "87628193-2dc8-4165-9234-e8d2cddcf55b"
  "Msi__O=UNIBLUE SYSTEMS, L=BIRKIRKARA, S=BIRKIRKARA, C=MT" = "aaa0272a-83f4-470d-a227-e5cae18d182b"
  "Msi__O=UNIBLUE SYSTEMS, L=MSIDA, S=MSIDA, C=MT" = "eb83ea8e-cf5d-64e6-5dc9-da63a40534d7"
  "Msi__O=WI2GEO LTD, L=MOSCOW, S=MOSCOW, C=RU" = "a02dea82-bbad-4e9c-ba18-034092826ff4"
  "Msi__O=WOODTALE TECHNOLOGY INC, L=WILMINGTON, S=DELAWARE, C=US" = "c0f3c580-2875-44e4-8f18-f4751323e1aa"
  "Msi__O=WORD SHARK, L=SAN DIEGO, S=CALIFORNIA, C=US" = "825a421f-b4e9-4f10-bbf3-bced58f5226b"
  "Msi__O=YAHOO! INC., L=SANTA CLARA, S=CA, C=US" = "11cbc4c0-be77-8124-25a0-fea7d572a101"
  "Msi__O=YANDEX LLC, L=MOSCOW, S=MOSCOW, C=RU" = "cff3a39c-9d87-11e4-89d3-123b93f75cba"
  "Msi__O=YUNA SOFTWARE LIMITED, L=ST. HELIER, S=JERSEY, C=GB" = "c8a2d46f-0634-cdff-307e-2bc7a909a8e3"
}


function addrule {
param(
[string]$rulecollectiontype,
[string]$name,
[string]$publishername,
[string]$productname = "*",
[string]$binaryname = "*"
)
  if( @("Exe","Msi") -notcontains $rulecollectiontype) { Write-Error "wrong rule $rulecollectiontype $name $publishername"; exit }

  $keyname = $rulecollectiontype + "__" + $publishername
  if ($compatuuids.ContainsKey($keyname))
  {
    $id = $compatuuids[$keyname]
  }else
  {
    $id = ([guid] (new-object -TypeName System.Security.Cryptography.MD5CryptoServiceProvider).ComputeHash((new-object -TypeName System.Text.UTF8Encoding).GetBytes($keyname))).Guid
  }

  $ret = @"
    <FilePublisherRule Id="$id" Name="$name" Description="" UserOrGroupSid="S-1-1-0" Action="Deny">
      <Conditions>
        <FilePublisherCondition PublisherName="$publishername" ProductName="$productname" BinaryName="$binaryname">
          <BinaryVersionRange LowSection="*" HighSection="*" />
        </FilePublisherCondition>
      </Conditions>`n
"@

  #/conditions -------------------
  if(($args).Count) {
    $i=0

    $ret += "      <Exceptions>`n"
    while($i -lt ($args).Count)
    {
      $condition = $args[$i++];
      if(-not $condition) { break }
      if($condition -eq "addrule") { Write-Error "wrong rule $id $name"; exit }
      $version = $args[$i++]; if(-not $version) { $version = "LowSection=""*"" HighSection=""*""" }

      $ret += @"
        <FilePublisherCondition PublisherName="$publishername" $condition>
          <BinaryVersionRange $version />
        </FilePublisherCondition>`n
"@
    }
    $ret += "      </Exceptions>`n"
  }
  #\conditions -------------------

  $ret += "    </FilePublisherRule>`n"

  $rules[$rulecollectiontype] += $ret

  return
}

function addrules {
  if( @("Exe","Msi") -contains $args[0]) { Write-Error "wrong rule $args"; exit }
  addrule  "Exe"  @args
  addrule  "Msi"  @args
}

function SaveFile {
  DoRules
  $rules["Exe"] + $rules["Msi"] + $rules["Footer"] | Out-File $fname -encoding utf8
}

function GetAdminRights {
  $Identity = [System.Security.Principal.WindowsIdentity]::GetCurrent()
  $Principal = New-Object System.Security.Principal.WindowsPrincipal($Identity)
  if (!($Principal.IsInRole([System.Security.Principal.WindowsBuiltInRole]::Administrator)))
  {
    if ((Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System).EnableLua -ne 0)
    {
      Start-Process "$env:ComSpec" -verb runas -argumentlist "/c ""$env:sarsetup_self"""
    }
    else
    {
      Write-Error "You must be administrator to run this script"
    }
    exit
  }
}

function CheckSysWow {
  if( ([IntPtr]::Size -eq 8) -ne ((gwmi Win32_OperatingSystem).OSArchitecture -match "64") )
  {
    Start-Process "$env:SystemRoot\sysnative\cmd.exe" -wait -NoNewWindow -argumentlist "/c ""$env:sarsetup_self"""
    exit
  }
}

#--------------------------------------------------------------


if($env:sarsetup_args -imatch "help|\?") { Write-Host "arguments: help | saveonly | merge"; exit }

if($env:sarsetup_args -imatch "saveonly") {
  SaveFile
  exit
}

CheckSysWow
GetAdminRights

try
{
  $dir=split-path $env:sarsetup_self -parent
  $fname = $dir + "\" + $fname
  SaveFile

  Import-Module AppLocker

  if( $env:sarsetup_args -imatch "merge" ) {
    Set-AppLockerPolicy -XMLPolicy $fname -Merge
  } else {
    Set-AppLockerPolicy -XMLPolicy $fname
  }

  set-service AppIDSvc -StartupType Automatic
  Restart-Service AppIDSvc

  Write-Host "OK"
}
catch
{
  $error[0]
}

Write-Host -NoNewLine "Press any key to continue..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
