+F2::

Send, ^c
	Sleep 300



Gui, Add, Tab3,, ASIN|VC Cases|Other

Gui, Add, Text, x23 y299 w250 , Extra shortcuts:`n`n- Ctrl + Shift + Left click launches a google search (useful for EANs, can select many at once).`n- Windows key + Left click gives you a character count (useful for Excel, A+, etc)`n- Ctrl + Spacebar toggles a window always on top.

Gui, Add, GroupBox, x12 y29 w70 h260 , EU6
Gui, Add, Button, x23 y49 w50 h30 , ES
Gui, Add, Button, x23 y89 w50 h30 , DE
Gui, Add, Button, x23 y129 w50 h30 , FR
Gui, Add, Button, x23 y169 w50 h30 , IT
Gui, Add, Button, x23 y209 w50 h30 , UK
Gui, Add, Button, x23 y249 w50 h30 , BE

Gui, Add, GroupBox, x112 y29 w140 h260 , GLOBAL
Gui, Add, Button, x122 y49 w50 h30 , NL
Gui, Add, Button, x122 y89 w50 h30 , PL
Gui, Add, Button, x122 y129 w50 h30 , SE
Gui, Add, Button, x122 y169 w50 h30 , US
Gui, Add, Button, x122 y209 w50 h30 , CA
Gui, Add, Button, x122 y249 w50 h30 , MX
Gui, Add, Button, x191 y49 w50 h30 , JP
Gui, Add, Button, x191 y89 w50 h30 , AE
Gui, Add, Button, x191 y129 w50 h30 , BR
Gui, Add, Button, x191 y169 w50 h30 , SG
Gui, Add, Button, x191 y209 w50 h30 , IN
Gui, Add, Button, x191 y249 w50 h30 , AU

;=======now on to tab2, the vc cases
Gui, Tab, 2

Gui, Add, Text, x23 y299 w250 , Extra shortcuts:`n`n- Ctrl + Shift + Left click launches a google search (useful for EANs, can select many at once).`n- Windows key + Left click gives you a character count (useful for Excel, A+, etc)`n- Ctrl + Spacebar toggles a window always on top.

Gui, Add, GroupBox, x12 y29 w70 h260 , EU6
Gui, Add, Button, x23 y49 w50 h30 , VC_ES
Gui, Add, Button, x23 y89 w50 h30 , VC_DE
Gui, Add, Button, x23 y129 w50 h30 , VC_FR
Gui, Add, Button, x23 y169 w50 h30 , VC_IT
Gui, Add, Button, x23 y209 w50 h30 , VC_UK
Gui, Add, Button, x23 y249 w50 h30 , VC_BE

Gui, Add, GroupBox, x112 y29 w140 h260 , GLOBAL
Gui, Add, Button, x122 y49 w50 h30 , VC_NL
Gui, Add, Button, x122 y89 w50 h30 , VC_PL
Gui, Add, Button, x122 y129 w50 h30 , VC_SE
Gui, Add, Button, x122 y169 w50 h30 , VC_US
Gui, Add, Button, x122 y209 w50 h30 , VC_CA
Gui, Add, Button, x122 y249 w50 h30 , VC_MX
Gui, Add, Button, x191 y49 w50 h30 , VC_JP
Gui, Add, Button, x191 y89 w50 h30 , VC_AE
Gui, Add, Button, x191 y129 w50 h30 , VC_BR
Gui, Add, Button, x191 y169 w50 h30 , VC_SG
Gui, Add, Button, x191 y209 w50 h30 , VC_IN
Gui, Add, Button, x191 y249 w50 h30 , VC_AU

;=======now on to tab3, others
Gui, Tab, 3
Gui, Add, Button, x23 y49 w56 h40 , SELLER_CENTRAL
Gui, Add, Button, x23 y89 w56 h40 , BRAND_REGISTRY
Gui, Add, GroupBox, x12 y29 w70 h220 , CASES 

;====here you mark the size of the gui. 255 height is the default, width was 208 at the beggining
Gui, Show, xCenter yCenter h410 w268, Go to:
Return


;=====MultipleGoogle search on click=====

+^LButton::

Send, ^c
	Sleep 300
         IDsArray := StrSplit(Clipboard, "`r`n")
    for k, ID in IDsArray
        {
        if StrLen(ID) > 0
	Run %browser%http://www.google.com/search?hl=en&q=%ID%
        }
Return



;=====Multiple ASIN search ES=====
ButtonES:

         IDsArray := StrSplit(Clipboard, "`r`n")
    for k, ID in IDsArray
        {
        if StrLen(ID) > 0
	Run %browser%https://www.amazon.es/dp/%ID%?th=1&psc=1
        }
Return


;=====Multiple ASIN search DE=====
ButtonDE:

         IDsArray := StrSplit(Clipboard, "`r`n")
    for k, ID in IDsArray
        {
        if StrLen(ID) > 0
	Run %browser%https://www.amazon.de/dp/%ID%?th=1&psc=1
        }
Return


;=====Multiple ASIN search FR=====
ButtonFR:

         IDsArray := StrSplit(Clipboard, "`r`n")
    for k, ID in IDsArray
        {
        if StrLen(ID) > 0
	Run %browser%https://www.amazon.fr/dp/%ID%?th=1&psc=1
        }
Return


;=====Multiple ASIN search IT=====
ButtonIT:

         IDsArray := StrSplit(Clipboard, "`r`n")
    for k, ID in IDsArray
        {
        if StrLen(ID) > 0
	Run %browser%https://www.amazon.it/dp/%ID%?th=1&psc=1
        }
Return


;=====Multiple ASIN search UK=====
ButtonUK:

         IDsArray := StrSplit(Clipboard, "`r`n")
    for k, ID in IDsArray
        {
        if StrLen(ID) > 0
	Run %browser%https://www.amazon.co.uk/dp/%ID%?th=1&psc=1
        }
Return

;=====Multiple ASIN search BE=====
ButtonBE:

         IDsArray := StrSplit(Clipboard, "`r`n")
    for k, ID in IDsArray
        {
        if StrLen(ID) > 0
	Run %browser%https://www.amazon.com.be/dp/%ID%?th=1&psc=1
        }
Return

;=====Multiple ASIN search NL=====
ButtonNL:

         IDsArray := StrSplit(Clipboard, "`r`n")
    for k, ID in IDsArray
        {
        if StrLen(ID) > 0
	Run %browser%https://www.amazon.nl/dp/%ID%?th=1&psc=1
        }
Return


;=====Multiple ASIN search SE=====
ButtonSE:

         IDsArray := StrSplit(Clipboard, "`r`n")
    for k, ID in IDsArray
        {
        if StrLen(ID) > 0
	Run %browser%https://www.amazon.se/dp/%ID%?th=1&psc=1
        }
Return

;=====Multiple ASIN search PL=====
ButtonPL:

         IDsArray := StrSplit(Clipboard, "`r`n")
    for k, ID in IDsArray
        {
        if StrLen(ID) > 0
	Run %browser%https://www.amazon.pl/dp/%ID%?th=1&psc=1
        }
Return

;=====Multiple ASIN search US=====
ButtonUS:

         IDsArray := StrSplit(Clipboard, "`r`n")
    for k, ID in IDsArray
        {
        if StrLen(ID) > 0
	Run %browser%https://www.amazon.com/dp/%ID%?th=1&psc=1
        }
Return

;=====Multiple ASIN search CA=====
ButtonCA:

         IDsArray := StrSplit(Clipboard, "`r`n")
    for k, ID in IDsArray
        {
        if StrLen(ID) > 0
	Run %browser%https://www.amazon.ca/dp/%ID%?th=1&psc=1
        }
Return

;=====Multiple ASIN search MX=====
ButtonMX:

         IDsArray := StrSplit(Clipboard, "`r`n")
    for k, ID in IDsArray
        {
        if StrLen(ID) > 0
	Run %browser%https://www.amazon.com.mx/dp/%ID%?th=1&psc=1
        }
Return

;=====Multiple ASIN search JP=====
ButtonJP:

         IDsArray := StrSplit(Clipboard, "`r`n")
    for k, ID in IDsArray
        {
        if StrLen(ID) > 0
	Run %browser%https://www.amazon.co.jp/dp/%ID%?th=1&psc=1
        }
Return

;=====Multiple ASIN search AE=====
ButtonAE:

         IDsArray := StrSplit(Clipboard, "`r`n")
    for k, ID in IDsArray
        {
        if StrLen(ID) > 0
	Run %browser%https://www.amazon.ae/dp/%ID%?th=1&psc=1
        }
Return

;=====Multiple ASIN search BR=====
ButtonBR:

         IDsArray := StrSplit(Clipboard, "`r`n")
    for k, ID in IDsArray
        {
        if StrLen(ID) > 0
	Run %browser%https://www.amazon.com.br/dp/%ID%?th=1&psc=1
        }
Return

;=====Multiple ASIN search TR=====
ButtonSG:

         IDsArray := StrSplit(Clipboard, "`r`n")
    for k, ID in IDsArray
        {
        if StrLen(ID) > 0
	Run %browser%https://www.amazon.sg/dp/%ID%?th=1&psc=1
        }
Return

;=====Multiple ASIN search IN=====
ButtonIN:

         IDsArray := StrSplit(Clipboard, "`r`n")
    for k, ID in IDsArray
        {
        if StrLen(ID) > 0
	Run %browser%https://www.amazon.in/dp/%ID%?th=1&psc=1
        }
Return

;=====Multiple ASIN search AU=====
ButtonAU:

         IDsArray := StrSplit(Clipboard, "`r`n")
    for k, ID in IDsArray
        {
        if StrLen(ID) > 0
	Run %browser%https://www.amazon.com.au/dp/%ID%?th=1&psc=1
        }
Return


;=====always on TOP=====
^SPACE::  Winset, Alwaysontop, , A


;=====when you type this go to startup folder=====
:*:openstartup::
Run "C:\Users\%A_Username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
Return




;=====character count on excel cell(useful for A+ content)=====

#LButton::

clipboard := ""
Send, {F2}
Sleep, 1
Send, ^a
Sleep, 1
Send, ^c
ClipWait
Chars := StrLen(Clipboard)
RegExReplace(Clipboard,A_Space,"",Spaces)
MsgBox % "==============================================`n`nThis Excel cell is " Chars " characters in length, and contains " Spaces " spaces.`n`n==============================================`n`nBanner: `n`nHeader: 160 characters`nBody description: 1000 characters`n`n--------------------`n`nStandard Module: `n`nHeader: 160 characters`nSub Header: 200 characters`nBody description: 500 characters`nBullet Points: 200 characters`n`n--------------------`n`nStandard Module (Right): `n`nHeader: 200 characters`nBody Description: 500 characters`nBullet Points: 200 characters`n`n--------------------`n`nStandard Highlight: `n`nHeader: 160 characters`nSub Header 1a: 200 characters`nBody description 1a: 1000 characters`nSub Header 1b: 200 characters`nBody description 1b: 400 characters`nSub Header 1c: 200 characters`nBody description 1c: 400 characters`n`n--------------------`n`nStandard Highlight (Right):`n`nHeader: 160 characters`nPer Bullet point: 100 characters`n`n--------------------`n`nMouse-over:`n`nHeader: 160 characters`nBody description: 1000 characters`nImage Caption: 200 characters`n`n--------------------`n`nTables:`n`nTitle: 80 characters`nComparison Metrics: 100 characters`nRow description: 250 characters"
return


;=====Multiple CASE search ES=====

ButtonVC_ES:

         IDsArray := StrSplit(Clipboard, "`r`n")
    for k, ID in IDsArray
        {
        if StrLen(ID) > 0
	Run %browser%https://vendorcentral.amazon.es/cu/case-dashboard/view-case?caseID=%ID%
        }
Return


;=====Multiple CASE search DE=====

ButtonVC_DE:

         IDsArray := StrSplit(Clipboard, "`r`n")
    for k, ID in IDsArray
        {
        if StrLen(ID) > 0
	Run %browser%https://vendorcentral.amazon.de/cu/case-dashboard/view-case?caseID=%ID%
        }
Return


;=====Multiple CASE search FR=====

ButtonVC_FR:

         IDsArray := StrSplit(Clipboard, "`r`n")
    for k, ID in IDsArray
        {
        if StrLen(ID) > 0
	Run %browser%https://vendorcentral.amazon.fr/cu/case-dashboard/view-case?caseID=%ID%
        }
Return

;=====Multiple CASE search IT=====

ButtonVC_IT:

         IDsArray := StrSplit(Clipboard, "`r`n")
    for k, ID in IDsArray
        {
        if StrLen(ID) > 0
	Run %browser%https://vendorcentral.amazon.it/cu/case-dashboard/view-case?caseID=%ID%
        }
Return

;=====Multiple CASE search UK=====

ButtonVC_UK:

         IDsArray := StrSplit(Clipboard, "`r`n")
    for k, ID in IDsArray
        {
        if StrLen(ID) > 0
	Run %browser%https://vendorcentral.amazon.co.uk/cu/case-dashboard/view-case?caseID=%ID%
        }
Return

;=====Multiple CASE search US=====

ButtonVC_US:

         IDsArray := StrSplit(Clipboard, "`r`n")
    for k, ID in IDsArray
        {
        if StrLen(ID) > 0
	Run %browser%https://vendorcentral.amazon.com/cu/case-dashboard/view-case?caseID=%ID%
        }
Return

;=====Multiple CASE search NL=====

ButtonVC_NL:

         IDsArray := StrSplit(Clipboard, "`r`n")
    for k, ID in IDsArray
        {
        if StrLen(ID) > 0
	Run %browser%https://vendorcentral.amazon.nl/cu/case-dashboard/view-case?caseID=%ID%
        }
Return

;=====Multiple CASE search PL=====

ButtonVC_PL:

         IDsArray := StrSplit(Clipboard, "`r`n")
    for k, ID in IDsArray
        {
        if StrLen(ID) > 0
	Run %browser%https://vendorcentral.amazon.pl/cu/case-dashboard/view-case?caseID=%ID%
        }
Return


;=====Multiple CASE search SE=====

ButtonVC_SE:

         IDsArray := StrSplit(Clipboard, "`r`n")
    for k, ID in IDsArray
        {
        if StrLen(ID) > 0
	Run %browser%https://vendorcentral.amazon.se/cu/case-dashboard/view-case?caseID=%ID%
        }
Return

;=====Multiple CASE search BE=====

ButtonVC_BE:

         IDsArray := StrSplit(Clipboard, "`r`n")
    for k, ID in IDsArray
        {
        if StrLen(ID) > 0
	Run %browser%https://vendorcentral.amazon.com.be/cu/case-dashboard/view-case?caseID=%ID%
        }
Return

;=====Multiple CASE search CA=====

ButtonVC_CA:

         IDsArray := StrSplit(Clipboard, "`r`n")
    for k, ID in IDsArray
        {
        if StrLen(ID) > 0
	Run %browser%https://vendorcentral.amazon.ca/cu/case-dashboard/view-case?caseID=%ID%
        }
Return

;=====Multiple CASE search MX=====

ButtonVC_MX:

         IDsArray := StrSplit(Clipboard, "`r`n")
    for k, ID in IDsArray
        {
        if StrLen(ID) > 0
	Run %browser%https://vendorcentral.amazon.com.mx/cu/case-dashboard/view-case?caseID=%ID%
        }
Return

;=====Multiple CASE search JP=====

ButtonVC_JP:

         IDsArray := StrSplit(Clipboard, "`r`n")
    for k, ID in IDsArray
        {
        if StrLen(ID) > 0
	Run %browser%https://vendorcentral.amazon.co.jp/cu/case-dashboard/view-case?caseID=%ID%
        }
Return

;=====Multiple CASE search AE=====

ButtonVC_AE:

         IDsArray := StrSplit(Clipboard, "`r`n")
    for k, ID in IDsArray
        {
        if StrLen(ID) > 0
	Run %browser%https://vendorcentral.amazon.ae/cu/case-dashboard/view-case?caseID=%ID%
        }
Return

;=====Multiple CASE search BR=====

ButtonVC_BR:

         IDsArray := StrSplit(Clipboard, "`r`n")
    for k, ID in IDsArray
        {
        if StrLen(ID) > 0
	Run %browser%https://vendorcentral.amazon.com.br/cu/case-dashboard/view-case?caseID=%ID%
        }
Return

;=====Multiple CASE search BE=====



ButtonVC_SG:

         IDsArray := StrSplit(Clipboard, "`r`n")
    for k, ID in IDsArray
        {
        if StrLen(ID) > 0
	Run %browser%https://vendorcentral.amazon.com.sg/cu/case-dashboard/view-case?caseID=%ID%
        }
Return

ButtonVC_IN:

         IDsArray := StrSplit(Clipboard, "`r`n")
    for k, ID in IDsArray
        {
        if StrLen(ID) > 0
	Run %browser%https://vendorcentral.amazon.in/cu/case-dashboard/view-case?caseID=%ID%
        }
Return

ButtonVC_AU:

         IDsArray := StrSplit(Clipboard, "`r`n")
    for k, ID in IDsArray
        {
        if StrLen(ID) > 0
	Run %browser%https://vendorcentral.amazon.com.au/cu/case-dashboard/view-case?caseID=%ID%
        }
Return

;=====Multiple CASE search Seller Cental=====

ButtonSELLER_CENTRAL:

         IDsArray := StrSplit(Clipboard, "`r`n")
    for k, ID in IDsArray
        {
        if StrLen(ID) > 0
	Run %browser%https://sellercentral-europe.amazon.com/cu/case-dashboard/view-case?caseID=%ID%
        }
Return

;=====Multiple CASE search Brand Registry=====

ButtonBRAND_REGISTRY:

         IDsArray := StrSplit(Clipboard, "`r`n")
    for k, ID in IDsArray
        {
        if StrLen(ID) > 0
	Run %browser%https://sellercentral-europe.amazon.com/cu/case-dashboard/view-case?caseID=%ID%
        }
Return