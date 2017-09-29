# cerner_2^5_2017

$textArray = "     ","       ","     ","        ","       ","     ","        ","       ","      ","First Hand      ","First Hand      "
$headArray = "  o  "," \ o / "," _ o ","        "," __|   "," \ / ","    |__ ","       ","  o _  ","  \ o /         ","  \ o /         "
$bodyArray = " /|\ ","   |   ","  /\ ","  ___\o ","   \o  ","  |  ","  o/    "," o/__  ","  /\   ","    |           ","    |           "
$legsArray = " / \ ","  / \  "," | \ "," /)  |  ","   ( \ "," /o\ "," / )    "," |  (\ ","  / |  ","   / \          ","   / \          "

while(1){
	For ($i=0; $i -le 10; $i++) {
	    cls
	    Write-Output ($textArray[$i])
	    Write-Output ($headArray[$i])
	    Write-Output ($bodyArray[$i])
	    Write-Output ($legsArray[$i])
	    Start-Sleep -Milliseconds 400
	}
}