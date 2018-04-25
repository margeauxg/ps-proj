#easy brute force method
 
<#$sum=0
foreach ($i in 1..999) {
    if ($i % 3 -eq 0 -or $i % 5 -eq 0) { $sum+=$i }
}
Write-Output "Total sum: $sum"#>
 
 
#after Google tells me k = n*(n+1)/2
#3k = n*(n+1)/2 -> k = n*(n+1)/2*3 , etc
 
$n=999
 
$div3 = [math]::floor($n/3)
$div5 = [math]::floor($n/5)
$div15 = [math]::floor($n/15)
 
$sum = $div3*($div3+1)/2*3 + $div5*($div5+1)/2*5 - $div15*($div15+1)/2*15
 
Write-Output "Total sum: $sum"