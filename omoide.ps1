<#
    Title: Omoide.ps1
    Authors: Dean Bunn
    Last Edit: 2021-11-05
#>


#Var for Image Subject
[string]$imgSbjt = "Years-Jazzy";

#Var for Image Project Directory
[string]$dirImgPrjt = "C:\Users\dbunn\Documents\PicsToRename";


$arrImages = Get-ChildItem -Path $dirImgPrjt;

foreach($imgObjt in $arrImages)
{
    #Var for New File Name
    [string]$nwFName = $imgSbjt + "_" + (Get-Date).ToString("yyyy_MM_dd_HH_mmssfffffff") + $imgObjt.Extension;

    Rename-Item -Path $imgObjt.FullName -NewName $nwFName;

}





