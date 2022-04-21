# Push mirror script
So far only `.bat` (for win)

## Instruction
Сlone this repository to your projects folder
Run the script from the folder with your projects 
1) first - Server address
2) second - Your git username 
3) third - Your git password
```diff
! all data belongs to the second server, example - m3133.ddns.net !
```
example: `up-to-date.bat` `m3133.ddns.net` `USERNAME` `PASSWORD`


example: (without a new window and with pause) 
```cmd
cmd /c call up-to-date.bat m3133.ddns.net USERNAME PASSWORD
pause
```

## Attention
---
Keep in mind that the script also sends "all" branches to the second server, even those that were deleted in the repository, but remained with you locally!

---
This script will also try to send itself to your account: 
1) you can store the turnip of this script also in your account
2) or just ignore the error of sending to your account

---
It is expected that you have the same named repositories on the first git server (`github`) and on the second (`m3133.ddns.net`) (and you didn't change the folder name)

---

## Info
Maybe there will be a `.py` script in the future
