@echo off

rem based on yandex.ban.xml

set fname=sarules.xml

echo ^<AppLockerPolicy Version="1"^> > %fname%
echo   ^<RuleCollection Type="Dll" EnforcementMode="NotConfigured" /^> >> %fname%
echo   ^<RuleCollection Type="Script" EnforcementMode="NotConfigured" /^> >> %fname%

echo   ^<RuleCollection Type="Appx" EnforcementMode="Enabled"^> >> %fname%
echo     ^<FilePathRule Id="0a233466-ebac-40c8-ab14-ff4756c58684" Name="Все" Description="" UserOrGroupSid="S-1-1-0" Action="Allow"^> >> %fname%
echo       ^<Conditions^> >> %fname%
echo         ^<FilePathCondition Path="*" /^> >> %fname%
echo       ^</Conditions^> >> %fname%
echo     ^</FilePathRule^> >> %fname%
echo   ^</RuleCollection^> >> %fname%

echo   ^<RuleCollection Type="Exe" EnforcementMode="Enabled"^> >> %fname%

rem --------------------------------------------------------------------------------------------------------

call :addrule "1853b5f1-f3b7-4b84-b59d-7d233cfcfc9b", "2GISTrayNotifier", "O=DOUBLEGIS, L=NOVOSIBIRSK, S=NOVOSIBIRSKAYA OBLAST', C=RU", "2ГИС", "2GISTRAYNOTIFIER.EXE"
call :addrule "b302bc38-50db-cd57-430a-05dd7b4a3a77", "AlterGeo", "O=WI2GEO LTD, L=MOSCOW, S=MOSCOW, C=RU"

call :addrule "2cbb5bea-2787-43ec-b5c3-d96b5bf3ba05", "AnVir", "O=ANVIR SOFTWARE, L=MOSCOW, S=MOSCOW, C=RU", "*", "*" ^
	, "ProductName=""ANVIR TASK MANAGER"" BinaryName=""ANVIR.EXE""", "LowSection=""6.7.0.0"" HighSection=""*""" ^
	, "ProductName=""ANVIR TASK MANAGER"" BinaryName=""ANVIR64.EXE""", "LowSection=""6.7.0.0"" HighSection=""*"""

call :addrule "46914bbc-204f-300a-6035-90e81e4b6c44", "AOL", "O=AOL INC., L=DULLES, S=VIRGINIA, C=US"
call :addrule "005bc9ce-bf0b-4cd4-8f46-a02dd63579ce", "Подписано O=APP BUD, L=SANTA MONICA, S=CALIFORNIA, C=US", "O=APP BUD, L=SANTA MONICA, S=CALIFORNIA, C=US"
call :addrule "9428d01d-597b-d0f4-4467-1e853dd706f6", "ASK", "O=ASK.COM, L=OAKLAND, S=CALIFORNIA, C=US"
call :addrule "1f904f9b-728e-4240-8e6c-de6476ece7a7", "Подписано O=BAIDU ONLINE NETWORK TECHNOLOGY (BEIJING)CO., LTD, L=BEIJING, S=BEIJING, C=CN", "O=BAIDU ONLINE NETWORK TECHNOLOGY (BEIJING)CO., LTD, L=BEIJING, S=BEIJING, C=CN"
call :addrule "98cba2b6-f4f6-4d62-bb7e-f2d37c3b5264", "Подписано O=BEIJING AMAZGAME AGE INTERNET TECHNOLOGY CO., LTD., L=BEIJING, S=BEIJING, C=CN", "O=BEIJING AMAZGAME AGE INTERNET TECHNOLOGY CO., LTD., L=BEIJING, S=BEIJING, C=CN"
call :addrule "15c91ac2-877f-4fa3-beaa-1fe1f998cc13", "BROWSEBIT malware", "O=BROWSEBIT, L=SANTA MONICA, S=CALIFORNIA, C=US"
call :addrule "335af109-285f-4eba-8c30-3840fd7f0278", "Cart Crunch Israel LTD", "O=CART CRUNCH ISRAEL LTD, L=GIVATAYIM, S=NA, C=IL"
call :addrule "12014465-3e86-4504-a28d-6ed66f650633", "ClientConnect LTD", "O=ClientConnect LTD, L=Ness Ziona, S=Israel', C=IL"
call :addrule "19b6ae09-1a65-3707-cb5f-91e0af523108", "CNET", "O=CBS INTERACTIVE, L=SAN FRANCISCO, S=CALIFORNIA, C=US"
call :addrule "24f820e8-111b-4aa0-9d1b-2f9ed2ac9b68", "Conduit LTD.", "O=CONDUIT LTD., L=NESS ZIONA, S=ISRAEL, C=IL"
call :addrule "54dd3e7a-5988-60c0-1d31-bae986076a3a", "Daemon Tools", "O=DT SOFT LTD, L=BELIZE CITY, S=BELIZE, C=BZ"
call :addrule "bc2ae223-90ed-4c8a-814b-0894e9268de5", "Подписано O=DEAL KEEPER, L=SANTA MONICA, S=CALIFORNIA, C=US", "O=DEAL KEEPER, L=SANTA MONICA, S=CALIFORNIA, C=US"
call :addrule "083eb228-97fa-47c9-9fd8-005d61d68b16", "EPICPLAY", "O=EPICPLAY LLC, L=IRVINE, S=CALIFORNIA, C=US"
call :addrule "9347fac7-0f43-47ac-8231-2dc3d0df6f87", "EPICSCALE", "O=EPIC SCALE, INC., L=OAKLAND, S=CALIFORNIA, C=US"
call :addrule "2c683990-4f88-4cb8-8813-a5133e2ce4ec", "Finedream Invest", "O=FINEDREAM INVEST LTD, L=LONDON, S=HAMPSTEAD, C=GB"
call :addrule "3d78af8a-36a6-426e-9685-6c33abc36833", "Giner (SearchProtect/XTAB)", "O=GINER TECH INC, L=WILMINGTON, S=DELAWARE, C=US"
call :addrule "e7980077-85fa-5b81-f712-ee53b2f78986", "Hamster", "O=HAMSTER SOFT, L=MOSCOW, S=MOSCOW, C=RU"
call :addrule "b6ccaa1a-6dd7-4a36-b3c5-566fa85cc8e3", "Hamster", "O=LLC 'HAMSTERSOFT', L=MOSCOW, S=MOSCOW, C=RU"
call :addrule "0f734819-f8b5-4e33-b2ca-92cc164c9ba8", "Hamster", "O=HAMSTERSOFT LLC, L=MOSCOW, S=MOSCOW, C=RU"
call :addrule "1e416e55-2791-bb27-3f5d-caed11989d1d", "ICQ", "O=ICQ, L=TEL AVIV, S=ISRAEL, C=IL"
call :addrule "aa44a8aa-d36d-402f-af4d-a93c40739189", "ICQ", "O=ICQ LTD, L=TEL AVIV, S=ALBERTA, C=IL"
call :addrule "55acff86-e4fa-4d9f-9185-ec692b4309f0", "Подписано O=KOMETA LLC, L=MOSCOW, S=MOSCOW REGION, C=RU", "O=KOMETA LLC, L=MOSCOW, S=MOSCOW REGION, C=RU"

call :addrule "a3b33e8f-62de-0e8e-cc24-b8b16193adbc", "Mail", "O=LLC MAIL.RU, L=MOSCOW, S=MOSCOW, C=RU", "*", "*" ^
	, "ProductName=""MAIL.RU АГЕНТ"" BinaryName=""MAGENT.EXE""", "LowSection=""6.0.0.0"" HighSection=""*"""

call :addrule "4627afe3-3034-b375-a917-a86534fdd7ff", "McAfee", "O=MCAFEE, INC., L=SANTA CLARA, S=CALIFORNIA, C=US"
call :addrule "d1c7d78c-e1e0-44de-923e-8832a7353558", "MediaGet", "O=OOO SOFT-MEDIA, L=IRKUTSK GOROD, S=MOSCOW, C=RU"
call :addrule "fce59a6f-e89d-23f8-5286-f4999ef2e72b", "MediaGet", "O=MEDIA GET LLC, L=SAINT-PETERSBURG, S=RUSSIA, C=RU"
call :addrule "d6a01c41-0e6e-7c59-6e3a-5145139d1381", "Messenger Plus", "O=YUNA SOFTWARE LIMITED, L=ST. HELIER, S=JERSEY, C=GB"
call :addrule "e4799766-4794-4185-bfaa-82c0afb281fa", "Montiera Technologies", "O=MONTIERA TECHNOLOGIES LTD, L=EVEN YEHUDA, S=HASHARON, C=IL"
call :addrule "99e884bf-b5f3-430c-9238-40574721ad6e", "Подписано O=MINDSPARK INTERACTIVE NETWORK, L=WHITE PLAINS, S=NEWYORK, C=US", "O=MINDSPARK INTERACTIVE NETWORK, L=WHITE PLAINS, S=NEWYORK, C=US"
call :addrule "bdbb131e-b1d2-4704-ac90-cb4af6305af9", "PortRu", "O=OOO PORT.RU, L=MOSCOW, S=MOSCOW, C=RU"
call :addrule "984ab146-2b51-84db-9e73-f20d48cea7a8", "QIP", "O=OOO RUSSKIE INTERNET RESHENIJA, L=MOSCOW, S=MOSCOW, C=RU"
call :addrule "d1f0fabb-5b11-4b3f-850b-12bb91c5055d", "QIP 2012", "O=OOO MEDIA MIR, L=MOSCOW, S=RU, C=RU"
call :addrule "7c9616b5-96b2-4254-a2af-897f9b3a67d5", "RAMBLER", "O=RAMBLER INTERNET HOLDINGS LLC, L=MOSCOW, S=RUSSIAN FEDERATION, C=RU"
call :addrule "d7481c28-78e0-0865-9e32-7f64e8fdefb9", "Rambler", "O=RAMBLER INTERNET HOLDINGS, LLC, L=MOSCOW, S=MOSCOW, C=RU"
call :addrule "ff5c450e-44a7-4f31-ab14-093de96947bb", "Reg Organizer", "O=KONSTANTIN POLYAKOV, L=EKATERINBURG, S=N/A, C=RU"
call :addrule "b0d36960-9cbb-11e4-bd06-0800200c9a66", "SourceForge", "O=IC FORGE, L=TEL AVIV, S=ISRAEL, C=IL"
call :addrule "bda265ad-9eee-44e5-a482-ea3fc7a0e1e6", "Подписано O=SKYMONK SOLUTIONS LIMITED, L=TORTOLA, S=TORTOLA, C=VG", "O=SKYMONK SOLUTIONS LIMITED, L=TORTOLA, S=TORTOLA, C=VG"
call :addrule "12730333-d9c0-4ff9-80e7-df80a8952c1f", "Softdeluxe", "O=Softdeluxe Ltd., L=Dubna, S=Moscow region', C=RU"
call :addrule "aaa0272a-83f4-470d-a227-e5cae18d182a", "SPEEDUPMYPC", "O=UNIBLUE SYSTEMS, L=BIRKIRKARA, S=BIRKIRKARA, C=MT", "SPEEDUPMYPC", "*"
call :addrule "5b775b81-1d51-44f1-bbd9-f49db4e0b169", "SUPERFISH", "O=SUPERFISH INC., L=GRANDVILLE, S=MICHIGAN, C=US"
call :addrule "5633511a-d7f0-fc53-4efd-48bab71a5d7e", "SweetIM", "O=SWEETIM TECHNOLOGIES LTD, L=RA'ANANA, S=ISRAEL, C=IL"
call :addrule "bfd28866-3d3d-ae66-f120-2bb6211f41ba", "Symantec", "O=SYMANTEC CORPORATION, L=SANTA MONICA, S=CALIFORNIA, C=US"
call :addrule "df342268-9e99-468e-bcfc-828202e1412b", "techgile", "O=TECHGILE, L=SANTA MONICA, S=CALIFORNIA, C=US"
call :addrule "c8256597-c742-48d7-b8d7-c663579ed471", "Подписано O=TUTO4PC.COM, L=PARIS, S=ILE-DE-FRANCE, C=FR", "O=TUTO4PC.COM, L=PARIS, S=ILE-DE-FRANCE, C=FR"
call :addrule "63432a8b-bb11-cf87-d9e0-99f3c31519c6", "Uniblue", "O=UNIBLUE SYSTEMS, L=MSIDA, S=MSIDA, C=MT"
call :addrule "60585edf-6e18-42f9-b808-e4741f0768aa", "Подписано O=UPDATESTAR GMBH, L=BERLIN, S=BERLIN, C=DE", "O=UPDATESTAR GMBH, L=BERLIN, S=BERLIN, C=DE"
call :addrule "9503ca90-a0ef-4901-bf1f-e6369af328ef", "Webalta toolbar", "O=INTERTECH LTD, L=ST. PETERSBURG, S=ST. PETERSBURG, C=RU"
call :addrule "8b9f3c3c-dc5a-48c4-8ca5-b9f252bae2dd", "WINDOWS SYSTOOL  SERVICE", "O=CHERISHED TECHNOLOGY LIMITED, L=香港, S=香港, C=HK"
call :addrule "2f7e7563-fb06-498c-8a61-93271563a82c", "Woodtale Technology Inc", "O=WOODTALE TECHNOLOGY INC, L=WILMINGTON, S=DELAWARE, C=US"
call :addrule "b2578909-be98-29e2-8a6d-cdde96164240", "Yahoo", "O=YAHOO! INC., L=SANTA CLARA, S=CA, C=US"
call :addrule "3701715b-a211-ff1e-7668-129691f0f8a4", "Yandex", "O=OOO YANDEX, L=MOSCOW, S=MOSCOW, C=RU"

call :addrule "f7b9ece6-6524-4151-9e5b-e8e39dc1332d", "Yandex", "O=YANDEX LLC, L=MOSCOW, S=MOSCOW, C=RU", "*", "*" ^
	, "ProductName=""YANDEX"" BinaryName=""BROWSER.EXE""", "LowSection=""*"" HighSection=""*""" ^
	, "ProductName=""YANDEX INSTALLER"" BinaryName=""YANDEX.EXE""", "LowSection=""*"" HighSection=""*"""

call :addrule "9a347e0b-cb71-40ff-aaa5-473fd8c78208", "Zona", "O=DESTINY MEDIA, L=MOSCOW, S=MOSCOW, C=RU"

rem --------------------------------------------------------------------------------------------------------

echo     ^<FilePathRule Id="5993d5ce-0ac1-4d76-bde7-cfa1f173cfbb" Name="Все" Description="" UserOrGroupSid="S-1-1-0" Action="Allow"^> >> %fname%
echo       ^<Conditions^> >> %fname%
echo         ^<FilePathCondition Path="*" /^> >> %fname%
echo       ^</Conditions^> >> %fname%
echo     ^</FilePathRule^> >> %fname%
echo   ^</RuleCollection^> >> %fname%
echo   ^<RuleCollection Type="Msi" EnforcementMode="Enabled"^> >> %fname%

rem --------------------------------------------------------------------------------------------------------

call :addrule "a02dea82-bbad-4e9c-ba18-034092826ff4", "AlterGeo", "O=WI2GEO LTD, L=MOSCOW, S=MOSCOW, C=RU"

call :addrule "444cbc79-3ee1-b0d2-db66-1e8e3be5651e", "AnVir", "O=ANVIR SOFTWARE, L=MOSCOW, S=MOSCOW, C=RU", "*", "*" ^
	, "ProductName=""ANVIR TASK MANAGER"" BinaryName=""ANVIR.EXE""", "LowSection=""6.7.0.0"" HighSection=""*"""

call :addrule "9a48cbbe-3b20-d59b-d87d-4dbbbbabcd2a", "AOL", "O=AOL INC., L=DULLES, S=VIRGINIA, C=US"
call :addrule "0447f5bd-8a5a-2d9f-ad19-574ca0739de8", "ASK", "O=ASK.COM, L=OAKLAND, S=CALIFORNIA, C=US"
call :addrule "f8fc23e6-14bf-404c-a848-2059fc1e7fbf", "Cart Crunch Israel LTD", "O=CART CRUNCH ISRAEL LTD, L=GIVATAYIM, S=NA, C=IL"
call :addrule "e3763c39-e775-0913-afe7-dc335aef7c76", "CNET", "O=CBS INTERACTIVE, L=SAN FRANCISCO, S=CALIFORNIA, C=US"
call :addrule "e8843182-3a37-4032-a4f1-009600d0a28f", "Conduit LTD.", "O=CONDUIT LTD., L=NESS ZIONA, S=ISRAEL, C=IL"
call :addrule "f6d4bc50-4b16-4bad-07c3-20ed38639644", "Daemon Tools", "O=DT SOFT LTD, L=BELIZE CITY, S=BELIZE, C=BZ"
call :addrule "144de70f-88be-4a24-9224-351e5d7563d5", "EPICPLAY", "O=EPICPLAY LLC, L=IRVINE, S=CALIFORNIA, C=US"
call :addrule "7888fbe4-fbea-45ca-aef0-37ebd39cce0a", "EPICSCALE", "O=EPIC SCALE, INC., L=OAKLAND, S=CALIFORNIA, C=US"
call :addrule "aa0686ae-8a56-4369-924c-19ae718bedc8", "Finedream Invest", "O=FINEDREAM INVEST LTD, L=LONDON, S=HAMPSTEAD, C=GB"
call :addrule "301bd7be-1e9e-477d-b88f-d909c9be444a", "Giner (SearchProtect/XTAB)", "O=GINER TECH INC, L=WILMINGTON, S=DELAWARE, C=US"
call :addrule "99703899-bcb7-2edc-2700-7f62bb6de87f", "Hamster", "O=HAMSTER SOFT, L=MOSCOW, S=MOSCOW, C=RU"
call :addrule "986b6393-99f4-432a-99d4-f3aebddd5b67", "Hamster", "O=LLC 'HAMSTERSOFT', L=MOSCOW, S=MOSCOW, C=RU"
call :addrule "5e12bdd3-ecb7-447c-b67b-17445f7f0616", "Hamster", "O=HAMSTERSOFT LLC, L=MOSCOW, S=MOSCOW, C=RU"
call :addrule "1e416e55-2791-bb27-3f5d-caed11989d1e", "ICQ", "O=ICQ LTD, L=TEL AVIV, S=ALBERTA, C=IL"
call :addrule "6f49c09b-b81c-0500-e5c7-a2d9a2562b04", "ICQ", "O=ICQ, L=TEL AVIV, S=ISRAEL, C=IL"

call :addrule "c697889b-cfc8-fcb5-ab47-ee39d445e52d", "Mail", "O=LLC MAIL.RU, L=MOSCOW, S=MOSCOW, C=RU", "*", "*" ^
	, "ProductName=""MAIL.RU АГЕНТ"" BinaryName=""MAGENT.EXE""", "LowSection=""6.0.0.0"" HighSection=""*"""

call :addrule "c2a62dd9-e7de-338a-fb17-c4e96092284c", "McAfee", "O=MCAFEE, INC., L=SANTA CLARA, S=CALIFORNIA, C=US"
call :addrule "1d0108dd-b76d-ee4c-d6e7-8196420a7da7", "MediaGet", "O=MEDIA GET LLC, L=SAINT-PETERSBURG, S=RUSSIA, C=RU"
call :addrule "d1c7d78c-e1e0-44de-923e-8832a7353559", "MediaGet", "O=OOO SOFT-MEDIA, L=IRKUTSK GOROD, S=MOSCOW, C=RU"
call :addrule "c8a2d46f-0634-cdff-307e-2bc7a909a8e3", "Messenger Plus", "O=YUNA SOFTWARE LIMITED, L=ST. HELIER, S=JERSEY, C=GB"
call :addrule "9817197d-f8a7-49e1-bcc4-1fa35fd0f0f4", "Montiera Technologies", "O=MONTIERA TECHNOLOGIES LTD, L=EVEN YEHUDA, S=HASHARON, C=IL"
call :addrule "70b45e67-cea9-c02a-2aca-6c3a575ccee2", "PortRu", "O=OOO PORT.RU, L=MOSCOW, S=MOSCOW, C=RU"
call :addrule "147f1b7f-a302-6aab-6d6e-bb094354c769", "QIP", "O=OOO RUSSKIE INTERNET RESHENIJA, L=MOSCOW, S=MOSCOW, C=RU"
call :addrule "2b354789-147c-775e-9343-75941e2fe243", "Rambler", "O=RAMBLER INTERNET HOLDINGS, LLC, L=MOSCOW, S=MOSCOW, C=RU"
call :addrule "7c9616b5-96b2-4254-a2af-897f9b3a67d6", "RAMBLER", "O=RAMBLER INTERNET HOLDINGS LLC, L=MOSCOW, S=RUSSIAN FEDERATION, C=RU"
call :addrule "643d7a07-5c3e-2434-7739-7ff3a1957475", "Reg Organizer", "O=KONSTANTIN POLYAKOV, L=EKATERINBURG, S=N/A, C=RU"
call :addrule "aaa0272a-83f4-470d-a227-e5cae18d182b", "SPEEDUPMYPC", "O=UNIBLUE SYSTEMS, L=BIRKIRKARA, S=BIRKIRKARA, C=MT", "SPEEDUPMYPC", "*"
call :addrule "35c6a97f-95e4-40d4-baf7-1fe9b0247c50", "SUPERFISH", "O=SUPERFISH INC., L=GRANDVILLE, S=MICHIGAN, C=US"
call :addrule "b755212e-78c1-3244-3d75-6dccc5692553", "SweetIM", "O=SWEETIM TECHNOLOGIES LTD, L=RA'ANANA, S=ISRAEL, C=IL"
call :addrule "ba4631cf-ab8a-7d3b-144e-6e923e5eaa89", "Symantec", "O=SYMANTEC CORPORATION, L=SANTA MONICA, S=CALIFORNIA, C=US"
call :addrule "87628193-2dc8-4165-9234-e8d2cddcf55b", "techgile", "O=TECHGILE, L=SANTA MONICA, S=CALIFORNIA, C=US"
call :addrule "eb83ea8e-cf5d-64e6-5dc9-da63a40534d7", "Uniblue", "O=UNIBLUE SYSTEMS, L=MSIDA, S=MSIDA, C=MT"
call :addrule "f487ebbb-e5d4-42ea-a189-c22dd5bc06d5", "WINDOWS SYSTOOL  SERVICE", "O=CHERISHED TECHNOLOGY LIMITED, L=香港, S=香港, C=HK"
call :addrule "c0f3c580-2875-44e4-8f18-f4751323e1aa", "Woodtale Technology Inc", "O=WOODTALE TECHNOLOGY INC, L=WILMINGTON, S=DELAWARE, C=US"
call :addrule "11cbc4c0-be77-8124-25a0-fea7d572a101", "Yahoo", "O=YAHOO! INC., L=SANTA CLARA, S=CA, C=US"
call :addrule "361d7116-e31f-7225-c13b-bf8b5f875b3a", "Yandex", "O=OOO YANDEX, L=MOSCOW, S=MOSCOW, C=RU"

call :addrule "cff3a39c-9d87-11e4-89d3-123b93f75cba", "Yandex", "O=YANDEX LLC, L=MOSCOW, S=MOSCOW, C=RU", "*", "*" ^
	, "ProductName=""YANDEX"" BinaryName=""BROWSER.EXE""", "LowSection=""*"" HighSection=""*""" ^
	, "ProductName=""YANDEX INSTALLER"" BinaryName=""YANDEX.EXE""", "LowSection=""*"" HighSection=""*"""

rem --------------------------------------------------------------------------------------------------------

echo      ^<FilePathRule Id="93534678-c068-4797-8b54-d0c349cef1cd" Name="Все" Description="" UserOrGroupSid="S-1-1-0" Action="Allow"^> >> %fname%
echo        ^<Conditions^> >> %fname%
echo          ^<FilePathCondition Path="*" /^> >> %fname%
echo        ^</Conditions^> >> %fname%
echo      ^</FilePathRule^> >> %fname%
echo   ^</RuleCollection^> >> %fname%
echo ^</AppLockerPolicy^> >> %fname%


goto :installyb


:addrule
set productname="*"
set binaryname="*"
if not a%4==a set productname="%~4"
if not a%5==a set binaryname="%~5"
set publishername="%~3"
echo     ^<FilePublisherRule Id=%1 Name=%2 Description="" UserOrGroupSid="S-1-1-0" Action="Deny"^> >> %fname%
echo       ^<Conditions^> >> %fname%
echo         ^<FilePublisherCondition PublisherName=%publishername% ProductName=%productname% BinaryName=%binaryname%^> >> %fname%
echo           ^<BinaryVersionRange LowSection="*" HighSection="*" /^> >> %fname%
echo         ^</FilePublisherCondition^> >> %fname%
echo       ^</Conditions^> >> %fname%
if a%6==a goto :noexception
rem if not a%6==a (
	echo       ^<Exceptions^> >> %fname%
	:repeatexception
	set econdition=%~6
	set econdition=%econdition:""="%
	set ever="LowSection=""*"" HighSection=""*"""
	if not a%7==a set ever=%~7
	set ever=%ever:""="%
	echo         ^<FilePublisherCondition PublisherName=%publishername% %econdition%^> >> %fname%
	echo           ^<BinaryVersionRange %ever% /^> >> %fname%
	echo         ^</FilePublisherCondition^> >> %fname%
	if not a%8==a (
		shift
		shift
		goto :repeatexception
	)
	echo       ^</Exceptions^> >> %fname%
rem )
:noexception
echo     ^</FilePublisherRule^> >> %fname%
exit /b


:installyb
powershell -Command " Import-Module AppLocker ; Set-AppLockerPolicy -XMLPolicy %fname% " 
sc config AppIDSvc start= auto
net stop AppIDSvc
net start AppIDSvc
