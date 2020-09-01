@chcp 65001 > nul & set sarsetup_args=%* & set sarsetup_self=%~f0& powershell -c "(gc \"%~f0\" -encoding UTF8) -replace '@chcp 65001.*','#' | Write-Host" | powershell -c - & goto :eof

# based on yandex.ban.xml

$fname= 'sarules.xml'

function DoRules {
  addrule "Exe"  "2GISTrayNotifier"  "O=DOUBLEGIS, L=NOVOSIBIRSK, S=NOVOSIBIRSKAYA OBLAST', C=RU"  "2ГИС"  "2GISTRAYNOTIFIER.EXE"

  addrules "AfterDawn"  "O=AFTERDAWN OY, L=OULO, C=FI"
  addrules "AGENCE EXCLUSIVE"  "O=L AGENCE EXCLUSIVE, L=PARIS, S=ILE-DE-FRANCE, C=FR"
  addrules "AlterGeo"  "O=WI2GEO LTD, L=MOSCOW, S=MOSCOW, C=RU"

  addrules "AnVir"  "O=ANVIR SOFTWARE, L=MOSCOW, S=MOSCOW, C=RU"  "*"  "*" `
          "ProductName=""ANVIR TASK MANAGER"" BinaryName=""ANVIR.EXE"""  "LowSection=""6.7.0.0"" HighSection=""*""" `
          "ProductName=""ANVIR TASK MANAGER"" BinaryName=""ANVIR64.EXE"""  "LowSection=""6.7.0.0"" HighSection=""*""" `
          "ProductName=""ANVIR TASK MANAGER FREE"" BinaryName=""ANVIR.EXE"""  "LowSection=""7.5.2.0"" HighSection=""*"""

  addrules "AOL"  "O=AOL INC., L=DULLES, S=VIRGINIA, C=US"
  addrules "Подписано O=APP BUD, L=SANTA MONICA, S=CALIFORNIA, C=US"  "O=APP BUD, L=SANTA MONICA, S=CALIFORNIA, C=US"
  addrules "Artex Management"  "O=ARTEX MANAGEMENT S. A., L=PANAMA CITY, C=PA"
  addrules "Artex Management"  "O=ARTEX MANAGEMENT S.A., L=PANAMA CITY, S=OUTSIDE UNITED STATES, C=PA"
  addrules "ASK"  "O=ASK.COM, L=OAKLAND, S=CALIFORNIA, C=US"
  addrules "ASK"  "O=ASK.COM, L=OAKLAND, S=CA, C=US"
  addrules "ASK network"  "O=APN LLC, L=OAKLAND, S=CALIFORNIA, C=US"
  addrules "Подписано O=BAIDU ONLINE NETWORK TECHNOLOGY (BEIJING)CO., LTD, L=BEIJING, S=BEIJING, C=CN"  "O=BAIDU ONLINE NETWORK TECHNOLOGY (BEIJING)CO., LTD, L=BEIJING, S=BEIJING, C=CN"
  addrules "Подписано O=BEIJING AMAZGAME AGE INTERNET TECHNOLOGY CO., LTD., L=BEIJING, S=BEIJING, C=CN"  "O=BEIJING AMAZGAME AGE INTERNET TECHNOLOGY CO., LTD., L=BEIJING, S=BEIJING, C=CN"
  addrules "BLEK-PLJUS"  "O=OOO FIRMA &quot;BLEK-PLJUS&quot;, L=PETROZAVODSK, S=KERELIYA REPUBLIC, C=RU"
  addrules "BROWSEBIT malware"  "O=BROWSEBIT, L=SANTA MONICA, S=CALIFORNIA, C=US"
  addrules "Cart Crunch Israel LTD"  "O=CART CRUNCH ISRAEL LTD, L=GIVATAYIM, S=NA, C=IL"
  addrules "chip.de"  "O=CHIP DIGITAL GMBH, L=MUNICH, S=BAVARIA, C=DE"
  addrules "ClaraLabSoftware"  "O=CLARALABSOFTWARE, L=PARIS, C=FR"
  addrules "ClientConnect LTD"  "O=CLIENTCONNECT LTD, L=NESS ZIONA, S=ISRAEL', C=IL"
  addrules "ClientConnect LTD"  "O=CLIENTCONNECT LTD, L=NESS ZIONA, S=ISRAEL, C=IL"
  addrules "CNET"  "O=CBS INTERACTIVE, L=SAN FRANCISCO, S=CALIFORNIA, C=US"
  addrules "CNET"  "O=PROINSTALL APPLICATIONS SRL, L=BUCURESTI, C=RO"
  addrules "Conduit LTD."  "O=CONDUIT LTD., L=NESS ZIONA, S=ISRAEL, C=IL"
  addrules "Conduit LTD."  "O=CONDUIT LTD., S=ISRAEL, C=IL"
  addrules "Daemon Tools"  "O=DT SOFT LTD, L=BELIZE CITY, S=BELIZE, C=BZ"
  addrules "Подписано O=DEAL KEEPER, L=SANTA MONICA, S=CALIFORNIA, C=US"  "O=DEAL KEEPER, L=SANTA MONICA, S=CALIFORNIA, C=US"
  addrules "Digital Pine"  "O=&quot;DIGITAL PINE, LLC - ООО `”ДИДЖИТАЛ ПАЙН`”&quot;, L=MOSCOW, S=MOSCOW CITY, C=RU"
  addrules "Digital Pine"  "O=&quot;DIGITAL PINE, LLC&quot;, L=MOSCOW, C=RU"
  addrules "Digital Pine"  "O=DIGITAL PINE LLC, L=MOSCOW, S=MOSCOW REGION, C=RU"
  addrules "dobreprogramy"  "O=DOBREPROGRAMY SP. Z O.O., L=WROCLAW, C=PL"
  addrules "DRIVERPACK"  "O=KUZYAKOV ARTUR VYACHESLAVOVICH IP, L=MOSCOW, S=MOSCOW, C=RU"  "DRIVERPACK"
  addrules "EPICPLAY"  "O=&quot;EPICPLAY, LLC&quot;, L=IRVINE, S=CA, C=US"
  addrules "EPICPLAY"  "O=EPICPLAY LLC, L=IRVINE, S=CALIFORNIA, C=US"
  addrules "EPICPLAY"  "O=EPICPLAY LLC, L=NEWPORT BEACH, S=CALIFORNIA, C=US"
  ADDRULES "EPICSCALE"  "O=&quot;EPIC SCALE, INC.&quot;, L=OAKLAND, S=CALIFORNIA, C=US"
  addrules "EPICSCALE"  "O=EPIC SCALE, INC., L=OAKLAND, S=CALIFORNIA, C=US"
  addrules "eSupport"  "O=ESUPPORT.COM, INC., L=NORTH ANDOVER, S=MA, C=US"
  addrules "Files Info" "O=FILES INFO, L=SAN FRANCISCO, S=CALIFORNIA, C=US"
  addrules "Finedream Invest"  "O=FINEDREAM INVEST LTD, L=LONDON, S=HAMPSTEAD, C=GB"
  addrules "Fresh Sync"  "CN=FRESH SYNC, O=FRESH SYNC, L=ESCONDIDO, S=CALIFORNIA, C=US"
  addrules "Foto-Tsentr"  "O=LLC ``FOTO-TSENTR ``, L=MYKOLAYIV, S=MYKOLAYIVSKA, C=UA"
  addrules "Giner (SearchProtect/XTAB)"  "O=GINER TECH INC, L=WILMINGTON, S=DELAWARE, C=US"
  addrules "Hamster"  "O=HAMSTER SOFT, L=MOSCOW, S=MOSCOW, C=RU"
  addrules "Hamster"  "O=LLC 'HAMSTERSOFT', L=MOSCOW, S=MOSCOW, C=RU"
  addrules "Hamster"  "O=HAMSTERSOFT LLC, L=MOSCOW, S=MOSCOW, C=RU"
  addrules "IAC"  "O=IAC SEARCH AND MEDIA, L=OAKLAND, S=CALIFORNIA, C=US"
  addrules "IAC"  "O=IAC, L=WHITE PLAINS, S=NEW YORK, C=US"
  addrules "ICQ"  "O=ICQ, L=TEL AVIV, S=ISRAEL, C=IL"
  addrules "ICQ"  "O=ICQ LTD, L=TEL AVIV, S=ALBERTA, C=IL"
  addrules "Info Software" "O=INFO SOFTWARE LP, L=EDINBURGH, S=SCOTLAND, C=GB"
  addrules "Info Software" "O=INFO SOFTWARE, L=EDINBURGH, S=SCOTLAND, C=GB"
  addrules "Подписано O=KOMETA LLC, L=MOSCOW, S=MOSCOW REGION, C=RU"  "O=KOMETA LLC, L=MOSCOW, S=MOSCOW REGION, C=RU"

  addrules "Mail"  "O=LLC MAIL.RU, L=MOSCOW, S=MOSCOW, C=RU"  "*"  "*" `
          "ProductName=""MAIL.RU АГЕНТ"" BinaryName=""MAGENT.EXE"""  "LowSection=""6.0.0.0"" HighSection=""*""" `
          "ProductName=""SKYFORGE"" BinaryName=""*"""  "LowSection=""0.0.0.0"" HighSection=""*"""

  addrules "Mail"  "O=MAIL.RU LLC, L=MOSCOW, S=MOSCOW, C=RU"  "*"  "*" `
          "ProductName=""MAIL.RU АГЕНТ"" BinaryName=""MAGENT.EXE"""  "LowSection=""0.0.0.0"" HighSection=""*"""

  addrules "MaxPlatform"  "O=MAXPLATFORM (NEW MEDIA HOLDINGS LTD), L=TEL AVIV, C=IL"
  addrules "McAfee"  "O=MCAFEE, INC., L=SANTA CLARA, S=CALIFORNIA, C=US"
  addrules "MediaGet"  "O=&quot;MEDIA, LLC&quot;, L=ST. PETERSBURG, S=RUSSIAN FEDERATION, C=RU"
  addrules "MediaGet"  "O=BANNER LLC, L=ST.PETERSBURG, S=RUSSIA, C=RU"
  addrules "MediaGet"  "O=INBOX OOO, L=MOSCOW, S=MOSCOW, C=RU"
  addrules "MediaGet"  "O=OOO SOFT-MEDIA, L=IRKUTSK GOROD, S=MOSCOW, C=RU"
  addrules "MediaGet"  "O=MEDIA GET LLC, L=SAINT-PETERSBURG, S=RUSSIA, C=RU"
  addrules "Messenger Plus"  "O=YUNA SOFTWARE LIMITED, L=ST. HELIER, S=JERSEY, C=GB"
  addrules "Montiera Technologies"  "O=MONTIERA TECHNOLOGIES LTD, L=EVEN YEHUDA, S=HASHARON, C=IL"
  addrules "Подписано O=MINDSPARK INTERACTIVE NETWORK, L=WHITE PLAINS, S=NEWYORK, C=US"  "O=MINDSPARK INTERACTIVE NETWORK, L=WHITE PLAINS, S=NEWYORK, C=US"
  addrules "LLC Net Soft"  "O=LLC &quot;NET SOFT&quot;, L=UZHHOROD, S=ZAKARPATSKA, C=UA"
  addrules "Obnovi Soft"  "O=KHEIFETS ILIYA MIKHAILOVICH IP, L=MOSCOW, S=MOSCOW, C=RU"
  addrules "Obnovi Soft"  "E=SUBMIT@ANVIR.COM, CN=ILYA KHEYFETS, L=MOSCOW, S=MOSKVA OBLAST, C=RU"
  addrules "OpenProg"  "O=INET PRODUKT, L=SARANSK, S=THE REPUBLIC OF MORDOVIA, C=RU"
  addrule "Dll"  "OpenCandy"  "O=OPENCANDY INC., L=SAN DIEGO, S=CALIFORNIA, C=US"
  addrule "Dll"  "OpenCandy"  "O=OPENCANDY, L=SAN DIEGO, S=CA, C=US"
  addrule "Dll"  "OpenCandy"  "O=OPENCANDY (VERIFIED APPLICATION COMPANY), L=SAN DIEGO, S=CA, C=US"
  addpathrule "Dll"  "OpenCandy"  "*\OCSetupHlp.dll"
  addrules "PortRu"  "O=OOO PORT.RU, L=MOSCOW, S=MOSCOW, C=RU"
  addrules "PriceMeter"  "O=PRICEMETER, L=TEL AVIV, S=TEL AVIV, C=IL"
  addrules "QIP"  "O=OOO RUSSKIE INTERNET RESHENIJA, L=MOSCOW, S=MOSCOW, C=RU"
  addrules "QIP 2012"  "O=OOO MEDIA MIR, L=MOSCOW, S=RU, C=RU"
  addrules "RAMBLER"  "O=RAMBLER INTERNET HOLDINGS LLC, L=MOSCOW, S=RUSSIAN FEDERATION, C=RU"
  addrules "Rambler"  "O=RAMBLER INTERNET HOLDINGS, LLC, L=MOSCOW, S=MOSCOW, C=RU"
  addrules "Reg Organizer"  "O=KONSTANTIN POLYAKOV, L=EKATERINBURG, S=N/A, C=RU"
  addrules "Sivently SRL"  "O=SIVENSYS SRL, L=IASI, C=RO"
  addrules "SmartCloud"  "O=北京布丁跳跳科技有限公司, L=北京市, S=北京市, C=CN"
  addrules "Somoto"  "O=SOMOTO LTD, L=TEL AVIV, S=ISRAEL, C=IL"
  addrules "Somoto"  "O=SOMOTO LTD., L=TEL AVIV, S=--, C=IL"
  addrules "Somoto"  "O=SOMOTO ISRAEL LTD., L=TEL AVIV, S=--, C=IL"
  addrules "Somoto"  "O=SOMOTO ISRAEL, L=TEL AVIV, S=--, C=IL"
  addrules "Somoto"  "O=SOMOTO LIMITED, L=TEL AVIV, S=TEL AVIV, C=IL"
  addrules "SourceForge"  "O=DOVE MAX (NEW MEDIA HOLDINGS LTD.), L=TEL AVIV, C=IL"
  addrules "SourceForge"  "O=IC FORGE, L=TEL AVIV, S=ISRAEL, C=IL"
  addrules "SourceForge"  "O=PROMPT FUNNEL (NEW MEDIA HOLDINGS LTD.), L=TEL AVIV, C=IL"
  addrules "SourceForge"  "O=SPEEDYMAX (NEW MEDIA HOLDINGS LTD), L=TEL AVIV, C=IL"
  addrules "SourceForge"  "O=THEORY MEDIA (FRIED COOKIE LTD), L=TEL AVIV, C=IL"
  addrules "Подписано O=SKYMONK SOLUTIONS LIMITED, L=TORTOLA, S=TORTOLA, C=VG"  "O=SKYMONK SOLUTIONS LIMITED, L=TORTOLA, S=TORTOLA, C=VG"
  addrules "SoftBrain Technologies Ltd." "O=SOFTBRAIN TECHNOLOGIES LTD., L=OR YEHUDA, S=ISRAEL, C=IL"
  addrules "Softdeluxe"  "O=Softdeluxe Ltd., L=Dubna, S=Moscow region', C=RU"
  addrules "SPEEDUPMYPC"  "O=UNIBLUE SYSTEMS, L=BIRKIRKARA, S=BIRKIRKARA, C=MT"  "SPEEDUPMYPC"  "*"
  addrules "SUPERFISH"  "O=SUPERFISH INC., L=GRANDVILLE, S=MICHIGAN, C=US"
  addrules "SweetIM"  "O=SWEETIM TECHNOLOGIES LTD, L=RA'ANANA, S=ISRAEL, C=IL"
  addrules "Symantec"  "O=SYMANTEC CORPORATION, L=SANTA MONICA, S=CALIFORNIA, C=US"
  addrules "techgile"  "O=TECHGILE, L=SANTA MONICA, S=CALIFORNIA, C=US"
  addrules "Подписано O=TUTO4PC.COM, L=PARIS, S=ILE-DE-FRANCE, C=FR"  "O=TUTO4PC.COM, L=PARIS, S=ILE-DE-FRANCE, C=FR"
  addrules "TUTO4PC.COM"  "O=TUTO4PC COM INTERNATIONAL SL, L=BARCELONA, C=ES"
  addrules "ubar"  "O=IP IAROSLAVSKII ANTON ANDREEVICH, L=PETROZAVODSK, S=REPUBLIC OF KARELIA, C=RU"
  addrules "Uniblue"  "O=UNIBLUE SYSTEMS, L=MSIDA, S=MSIDA, C=MT"
  addrules "Подписано O=UPDATESTAR GMBH, L=BERLIN, S=BERLIN, C=DE"  "O=UPDATESTAR GMBH, L=BERLIN, S=BERLIN, C=DE"
  addrules "Web Amplified"  "O=WEB AMPLIFIED, L=SAN DIEGO, S=CALIFORNIA, C=US"
  addrules "Webalta toolbar"  "O=INTERTECH LTD, L=ST. PETERSBURG, S=ST. PETERSBURG, C=RU"
  addrules "WINDOWS SYSTOOL  SERVICE"  "O=CHERISHED TECHNOLOGY LIMITED, L=香港, S=香港, C=HK"
  addrules "Woodtale Technology Inc"  "O=WOODTALE TECHNOLOGY INC, L=WILMINGTON, S=DELAWARE, C=US"
  addrules "Word Shark"  "O=WORD SHARK, L=SAN DIEGO, S=CALIFORNIA, C=US"
  addrules "Yahoo"  "O=YAHOO! INC., L=SANTA CLARA, S=CA, C=US"
  addrules "Yahoo"  "O=YAHOO! INC., L=SUNNYVALE, S=CA, C=US"
  addrules "Yandex"  "O=OOO YANDEX, L=MOSCOW, S=MOSCOW, C=RU"

  addrules "Yandex"  "O=YANDEX LLC, L=MOSCOW, S=MOSCOW, C=RU"  "*"  "*" `
          "ProductName=""YANDEX"" BinaryName=""BROWSER.EXE"""  "LowSection=""0.0.0.0"" HighSection=""*""" `
          "ProductName=""YANDEX INSTALLER"" BinaryName=""YANDEX.EXE"""  "LowSection=""0.0.0.0"" HighSection=""*""" `
          "ProductName=""ЯНДЕКС.ДИСК"" BinaryName=""*"""  "LowSection=""0.0.0.0"" HighSection=""*"""

  addrules "Zaxar Ltd" "O=ZAXAR LTD, L=LIMASSOL, S=LIMASSOL, C=CY"
  addrules "Zaxar Ltd" "O=ZAXAR LTD, L=LIMASSOL, S=CYPRUS, C=CY"
  addrules "Zona"  "O=DESTINY MEDIA, L=MOSCOW, S=MOSCOW, C=RU"

  return
}

#--------------------------------------------------------------

$rules = @{
"Exe" =
@"
<AppLockerPolicy Version="1">
  <RuleCollection Type="Script" EnforcementMode="NotConfigured" />
  <RuleCollection Type="Appx" EnforcementMode="Enabled">
    <FilePublisherRule Id="4946b6a3-af1a-435f-8e54-0d1f95b21f63" Name="Все" Description="." UserOrGroupSid="S-1-1-0" Action="Allow">
      <Conditions>
        <FilePublisherCondition PublisherName="*" ProductName="*" BinaryName="*">
          <BinaryVersionRange LowSection="0.0.0.0" HighSection="*" />
        </FilePublisherCondition>
      </Conditions>
    </FilePublisherRule>
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
"Dll" =
@"
    <FilePathRule Id="93534678-c068-4797-8b54-d0c349cef1cd" Name="Все" Description="" UserOrGroupSid="S-1-1-0" Action="Allow">
      <Conditions>
        <FilePathCondition Path="*" />
      </Conditions>
    </FilePathRule>
  </RuleCollection>
  <RuleCollection Type="Dll" EnforcementMode="Enabled">`n
"@
"Footer" =
@"
     <FilePathRule Id="fe64f59f-6fca-45e5-a731-0f6715327c38" Name="Все" Description="" UserOrGroupSid="S-1-1-0" Action="Allow">
       <Conditions>
         <FilePathCondition Path="*" />
       </Conditions>
     </FilePathRule>
  </RuleCollection>
</AppLockerPolicy>
"@
}


function addrule {
param(
[string]$rulecollectiontype,
[string]$name,
[string]$publishername,
[string]$productname = "*",
[string]$binaryname = "*"
)
  if( @("Exe","Msi","Dll") -notcontains $rulecollectiontype) { Write-Error "wrong rule $rulecollectiontype $name $publishername"; exit }

  $keyname = $rulecollectiontype + "__" + $publishername

  $id = ([guid] (new-object -TypeName System.Security.Cryptography.MD5CryptoServiceProvider).ComputeHash((new-object -TypeName System.Text.UTF8Encoding).GetBytes($keyname))).Guid

  $ret = @"
    <FilePublisherRule Id="$id" Name="$name" Description="" UserOrGroupSid="S-1-1-0" Action="Deny">
      <Conditions>
        <FilePublisherCondition PublisherName="$publishername" ProductName="$productname" BinaryName="$binaryname">
          <BinaryVersionRange LowSection="0.0.0.0" HighSection="*" />
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
      $version = $args[$i++]; if(-not $version) { $version = "LowSection=""0.0.0.0"" HighSection=""*""" }

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
  if( @("Exe","Msi","Dll") -icontains $args[0]) { Write-Error "wrong rule $args"; exit }
  addrule  "Exe"  @args
  addrule  "Msi"  @args
}

function addpathrule {
param(
[string]$rulecollectiontype,
[string]$name,
[string]$path
)
  if( @("Exe","Msi","Dll") -notcontains $rulecollectiontype) { Write-Error "wrong rule $rulecollectiontype $name $path"; exit }

  $keyname = $rulecollectiontype + "Path__" + $path.ToUpper()

  $id = ([guid] (new-object -TypeName System.Security.Cryptography.MD5CryptoServiceProvider).ComputeHash((new-object -TypeName System.Text.UTF8Encoding).GetBytes($keyname))).Guid

  $ret = @"
    <FilePathRule Id="$id" Name="$name" Description="" UserOrGroupSid="S-1-1-0" Action="Deny">
      <Conditions>
        <FilePathCondition Path="$path" /> 
      </Conditions>
    </FilePathRule>`n
"@

  $rules[$rulecollectiontype] += $ret

  return
}

function addpathrules {
  if( @("Exe","Msi","Dll") -icontains $args[0]) { Write-Error "wrong rule $args"; exit }
  addpathrule  "Exe"  @args
  addpathrule  "Msi"  @args
}

function SaveFile {
  DoRules
  $rules["Exe"] + $rules["Msi"] + $rules["Dll"]+ $rules["Footer"] | Out-File $fname -encoding utf8
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

  try
  {
    Set-Service AppIDSvc -StartupType Automatic -ErrorAction Stop
    Restart-Service AppIDSvc
    Write-Host "OK"
  }
  catch
  {
    Write-Warning "Cannot setup AppIDSvc"
  }

}
catch
{
  $error[0]
}

Write-Host -NoNewLine "Press any key to continue..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
