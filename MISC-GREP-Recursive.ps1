#   James Wylde 2020

#----------------------------------------------------------------------------------------#
#   Modules

Get-ChildItem c:\temp\*.txt -Recurse | Select-String -Pattern WHATYOULOOKINGFOR | Export-csv -Path c:\Temp\ExportSearch.csv
 