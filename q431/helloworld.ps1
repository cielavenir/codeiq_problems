#!/usr/bin/env powershell
$szero=@(,@()).Length
$sone=$szero+$szero
$stwo=$sone+$sone
$sthree=$stwo+$stwo
$sfour=$sthree+$sthree
$sfive=$sfour+$sfour
$ssix=$sfive+$sfive

[Console]::Write([char]($ssix+$sthree))
[Console]::Write([char]($ssix+$sfive+$stwo+$szero))
[Console]::Write([char]($ssix+$sfive+$sthree+$stwo))
[Console]::Write([char]($ssix+$sfive+$sthree+$stwo))
[Console]::Write([char]($ssix+$sfive+$sthree+$stwo+$sone+$szero))
[Console]::Write([char]($sfive))
[Console]::Write([char]($ssix+$sfour+$stwo+$sone+$szero))
[Console]::Write([char]($ssix+$sfive+$sthree+$stwo+$sone+$szero))
[Console]::Write([char]($ssix+$sfive+$sfour+$sone))
[Console]::Write([char]($ssix+$sfive+$sthree+$stwo))
[Console]::Write([char]($ssix+$sfive+$stwo))
[Console]::WriteLine()