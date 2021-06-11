#你的CPU线程数
$thread = 4;
#你的农民公钥
$farmerKey = "aaa";
#你的矿池公钥
$poolkey = "bbb";
#第一缓存目录，需要以“\”结尾
$tmp1="D:\test\";
#第二缓存目录，需要以“\”结尾,可以与第一个相同
$tmp2="D:\test\";
#你的HDD目录，用,隔开,不要加 \
[string[]]$dest = "E:","F:";
$count = 1;

DO
{
 $final = $($dest[$($count-1)]);
 $disk = Get-WmiObject Win32_LogicalDisk -ComputerName "localhost" -Filter "DeviceID='$final'" | Select-Object Size,FreeSpace

 if ($disk.FreeSpace/1024/1024/1024 -gt 103) {
  "开始P图, 农民公钥=$farmerKey, 矿池公钥=$poolkey, 第一缓存=$tmp1, 第二缓存=$tmp2, 线程数=$thread, 最终存储目录= $final\";
 .\chia_plot.exe $poolkey $farmerKey $tmp1 $tmp2 $thread 7
 "P图完成，开始复制到存储目录 $($dest[$($count-1)])";
 Start-Job -ScriptBlock{
  param($p1,$p2);
 Copy-Item -Path "$p1*.plot" -Destination "$p2\" ;
  Remove-Item $p1*.plot;
  } -Arg $tmp1,$final;
 } else {
  "$final 磁盘空间不足,跳过该磁盘"
 }


 $count++;
 if ($count -gt $dest.Count)
 {
   $count = 1;
 }
 Start-Sleep -s 2;

} While ($TRUE)