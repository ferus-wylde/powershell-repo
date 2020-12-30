#   James Wylde 2019
#   ferus-wylde@github

# Modules

New-PSSession -ComputerName PC01

$process = Get-Process mmc -ErrorAction SilentlyContinue
if ($process) {
  $process.CloseMainWindow()
  Sleep 5
  if (!$process.HasExited) {
    $process | Stop-Process -Force
  }
}