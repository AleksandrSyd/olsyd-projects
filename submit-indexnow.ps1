$body = @{ 
  host = "aleksandrsyd.github.io"
  key = "a0ca2d908ec05f5c630537aae3fefcfd"
  keyLocation = "https://aleksandrsyd.github.io/olsyd-projects/a0ca2d908ec05f5c630537aae3fefcfd.txt"
  urlList = @(
    "https://aleksandrsyd.github.io/olsyd-projects/",
    "https://aleksandrsyd.github.io/olsyd-projects/screen-troublemaker.html",
    "https://aleksandrsyd.github.io/olsyd-projects/primal-heist.html"
  )
} | ConvertTo-Json

Write-Host "Submitting OLSYD URLs to IndexNow..."
Invoke-RestMethod -Method Post -Uri "https://api.indexnow.org/indexnow" -ContentType "application/json; charset=utf-8" -Body $body
Write-Host "Done. IndexNow was notified."
