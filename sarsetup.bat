@echo off

rem based on yandex.ban.xml

set fname=sarules.xml

echo ^<AppLockerPolicy Version="1"^> > %fname%
echo   ^<RuleCollection Type="Dll" EnforcementMode="NotConfigured" /^> >> %fname%
echo   ^<RuleCollection Type="Script" EnforcementMode="NotConfigured" /^> >> %fname%

echo   ^<RuleCollection Type="Exe" EnforcementMode="Enabled"^> >> %fname%

rem --------------------------------------------------------------------------------------------------------

call :addrule "1853b5f1-f3b7-4b84-b59d-7d233cfcfc9b", "2GISTrayNotifier", "O=DOUBLEGIS, L=NOVOSIBIRSK, S=NOVOSIBIRSKAYA OBLAST', C=RU", "2ГИС", "2GISTRAYNOTIFIER.EXE"

call :addrule "2cbb5bea-2787-43ec-b5c3-d96b5bf3ba05", "AnVir", "O=ANVIR SOFTWARE, L=MOSCOW, S=MOSCOW, C=RU", "*", "*" ^
	, "ProductName=""ANVIR TASK MANAGER"" BinaryName=""ANVIR.EXE""", "LowSection=""6.7.0.0"" HighSection=""*"""

call :addrule "b302bc38-50db-cd57-430a-05dd7b4a3a77", "AlterGeo", "O=WI2GEO LTD, L=MOSCOW, S=MOSCOW, C=RU"
call :addrule "46914bbc-204f-300a-6035-90e81e4b6c44", "AOL", "O=AOL INC., L=DULLES, S=VIRGINIA, C=US"
call :addrule "9428d01d-597b-d0f4-4467-1e853dd706f6", "ASK", "O=ASK.COM, L=OAKLAND, S=CALIFORNIA, C=US"
call :addrule "19b6ae09-1a65-3707-cb5f-91e0af523108", "CNET", "O=CBS INTERACTIVE, L=SAN FRANCISCO, S=CALIFORNIA, C=US"
call :addrule "54dd3e7a-5988-60c0-1d31-bae986076a3a", "Daemon Tools", "O=DT SOFT LTD, L=BELIZE CITY, S=BELIZE, C=BZ"
call :addrule "e7980077-85fa-5b81-f712-ee53b2f78986", "Hamster", "O=HAMSTER SOFT, L=MOSCOW, S=MOSCOW, C=RU"
call :addrule "1e416e55-2791-bb27-3f5d-caed11989d1d", "ICQ", "O=ICQ, L=TEL AVIV, S=ISRAEL, C=IL"

call :addrule "a3b33e8f-62de-0e8e-cc24-b8b16193adbc", "Mail", "O=LLC MAIL.RU, L=MOSCOW, S=MOSCOW, C=RU", "*", "*" ^
	, "ProductName=""MAIL.RU АГЕНТ"" BinaryName=""MAGENT.EXE""", "LowSection=""6.0.0.0"" HighSection=""*"""

call :addrule "4627afe3-3034-b375-a917-a86534fdd7ff", "McAfee", "O=MCAFEE, INC., L=SANTA CLARA, S=CALIFORNIA, C=US"
call :addrule "fce59a6f-e89d-23f8-5286-f4999ef2e72b", "MediaGet", "O=MEDIA GET LLC, L=SAINT-PETERSBURG, S=RUSSIA, C=RU"
call :addrule "d6a01c41-0e6e-7c59-6e3a-5145139d1381", "Messenger Plus", "O=YUNA SOFTWARE LIMITED, L=ST. HELIER, S=JERSEY, C=GB"
call :addrule "bdbb131e-b1d2-4704-ac90-cb4af6305af9", "PortRu", "O=OOO PORT.RU, L=MOSCOW, S=MOSCOW, C=RU"
call :addrule "984ab146-2b51-84db-9e73-f20d48cea7a8", "QIP", "O=OOO RUSSKIE INTERNET RESHENIJA, L=MOSCOW, S=MOSCOW, C=RU"
call :addrule "d7481c28-78e0-0865-9e32-7f64e8fdefb9", "Rambler", "O=RAMBLER INTERNET HOLDINGS, LLC, L=MOSCOW, S=MOSCOW, C=RU"
call :addrule "ff5c450e-44a7-4f31-ab14-093de96947bb", "Reg Organizer", "O=KONSTANTIN POLYAKOV, L=EKATERINBURG, S=N/A, C=RU"
call :addrule "b0d36960-9cbb-11e4-bd06-0800200c9a66", "SourceForge", "O=IC Forge, L=Tel Aviv, S=Israel, C=IL"
call :addrule "5633511a-d7f0-fc53-4efd-48bab71a5d7e", "SweetIM", "O=SWEETIM TECHNOLOGIES LTD, L=RA'ANANA, S=ISRAEL, C=IL"
call :addrule "bfd28866-3d3d-ae66-f120-2bb6211f41ba", "Symantec", "O=SYMANTEC CORPORATION, L=SANTA MONICA, S=CALIFORNIA, C=US"
call :addrule "df342268-9e99-468e-bcfc-828202e1412b", "techgile", "O=TECHGILE, L=SANTA MONICA, S=CALIFORNIA, C=US"
call :addrule "63432a8b-bb11-cf87-d9e0-99f3c31519c6", "Uniblue", "O=UNIBLUE SYSTEMS, L=MSIDA, S=MSIDA, C=MT"
call :addrule "b2578909-be98-29e2-8a6d-cdde96164240", "Yahoo", "O=YAHOO! INC., L=SANTA CLARA, S=CA, C=US"
call :addrule "3701715b-a211-ff1e-7668-129691f0f8a4", "Yandex", "O=OOO YANDEX, L=MOSCOW, S=MOSCOW, C=RU"

call :addrule "f7b9ece6-6524-4151-9e5b-e8e39dc1332d", "Yandex", "O=YANDEX LLC, L=Moscow, S=Moscow, C=RU", "*", "*" ^
	, "ProductName=""YANDEX"" BinaryName=""BROWSER.EXE""", "LowSection=""*"" HighSection=""*""" ^
	, "ProductName=""YANDEX INSTALLER"" BinaryName=""YANDEX.EXE""", "LowSection=""*"" HighSection=""*"""

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
call :addrule "e3763c39-e775-0913-afe7-dc335aef7c76", "CNET", "O=CBS INTERACTIVE, L=SAN FRANCISCO, S=CALIFORNIA, C=US"
call :addrule "f6d4bc50-4b16-4bad-07c3-20ed38639644", "Daemon Tools", "O=DT SOFT LTD, L=BELIZE CITY, S=BELIZE, C=BZ"
call :addrule "99703899-bcb7-2edc-2700-7f62bb6de87f", "Hamster", "O=HAMSTER SOFT, L=MOSCOW, S=MOSCOW, C=RU"
call :addrule "6f49c09b-b81c-0500-e5c7-a2d9a2562b04", "ICQ", "O=ICQ, L=TEL AVIV, S=ISRAEL, C=IL"

call :addrule "c697889b-cfc8-fcb5-ab47-ee39d445e52d", "Mail", "O=LLC MAIL.RU, L=MOSCOW, S=MOSCOW, C=RU", "*", "*" ^
	, "ProductName=""MAIL.RU АГЕНТ"" BinaryName=""MAGENT.EXE""", "LowSection=""6.0.0.0"" HighSection=""*"""

call :addrule "c2a62dd9-e7de-338a-fb17-c4e96092284c", "McAfee", "O=MCAFEE, INC., L=SANTA CLARA, S=CALIFORNIA, C=US"
call :addrule "1d0108dd-b76d-ee4c-d6e7-8196420a7da7", "MediaGet", "O=MEDIA GET LLC, L=SAINT-PETERSBURG, S=RUSSIA, C=RU"
call :addrule "c8a2d46f-0634-cdff-307e-2bc7a909a8e3", "Messenger Plus", "O=YUNA SOFTWARE LIMITED, L=ST. HELIER, S=JERSEY, C=GB"
call :addrule "70b45e67-cea9-c02a-2aca-6c3a575ccee2", "PortRu", "O=OOO PORT.RU, L=MOSCOW, S=MOSCOW, C=RU"
call :addrule "147f1b7f-a302-6aab-6d6e-bb094354c769", "QIP", "O=OOO RUSSKIE INTERNET RESHENIJA, L=MOSCOW, S=MOSCOW, C=RU"
call :addrule "2b354789-147c-775e-9343-75941e2fe243", "Rambler", "O=RAMBLER INTERNET HOLDINGS, LLC, L=MOSCOW, S=MOSCOW, C=RU"
call :addrule "643d7a07-5c3e-2434-7739-7ff3a1957475", "Reg Organizer", "O=KONSTANTIN POLYAKOV, L=EKATERINBURG, S=N/A, C=RU"
call :addrule "b755212e-78c1-3244-3d75-6dccc5692553", "SweetIM", "O=SWEETIM TECHNOLOGIES LTD, L=RA'ANANA, S=ISRAEL, C=IL"
call :addrule "ba4631cf-ab8a-7d3b-144e-6e923e5eaa89", "Symantec", "O=SYMANTEC CORPORATION, L=SANTA MONICA, S=CALIFORNIA, C=US"
call :addrule "87628193-2dc8-4165-9234-e8d2cddcf55b", "techgile", "O=TECHGILE, L=SANTA MONICA, S=CALIFORNIA, C=US"
call :addrule "eb83ea8e-cf5d-64e6-5dc9-da63a40534d7", "Uniblue", "O=UNIBLUE SYSTEMS, L=MSIDA, S=MSIDA, C=MT"
call :addrule "11cbc4c0-be77-8124-25a0-fea7d572a101", "Yahoo", "O=YAHOO! INC., L=SANTA CLARA, S=CA, C=US"
call :addrule "361d7116-e31f-7225-c13b-bf8b5f875b3a", "Yandex", "O=OOO YANDEX, L=MOSCOW, S=MOSCOW, C=RU"

call :addrule "cff3a39c-9d87-11e4-89d3-123b93f75cba", "Yandex", "O=YANDEX LLC, L=Moscow, S=Moscow, C=RU", "*", "*" ^
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
set productname=*
set binaryname=*
if not a%4==a set productname=%~4
if not a%5==a set binaryname=%~5
set publishername=%~3
echo     ^<FilePublisherRule Id=%1 Name=%2 Description="" UserOrGroupSid="S-1-1-0" Action="Deny"^> >> %fname%
echo       ^<Conditions^> >> %fname%
echo         ^<FilePublisherCondition PublisherName="%publishername%" ProductName="%productname%" BinaryName="%binaryname%"^> >> %fname%
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
	echo         ^<FilePublisherCondition PublisherName="%publishername%" %econdition%^> >> %fname%
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
net start AppIDSvc
