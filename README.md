# mousefix
A very brief script to fix slow mouse movement on Raspbian. Edits /boot/cmdline.txt and creates a backup. For English text see below.

Hyvin lyhyt skripti, joka korjaa hiiren hitaat liikkeet Raspbianissa. Muokkaa /boot/cmdline.txt-tiedostoa ja tekee varmuuskopion.

Hiiren hitaus Raspbianissa korjautuu useissa tapauksissa sillä, että komentoriville, joka on tiedostossa /boot/cmdline.txt, lisätään parametri usbhid.mousepoll=0. Tämä skripti tarkistaa onko komentorivillä ennestään usbhid.mousepoll-parametria, ja jos ei ole, lisää sen. Jos parametri on, skripti palauttaa virheilmoituksen eikä lisää sitä uudelleen. Parametri saattaa kuitenkin olla muodossa usbdhid.mousepoll=1, jolloin ykkönen täytyy vaihtaa nollaksi. Tämä jätetään tehtäväksi käsin ja käyttäjän harkinnan varaan.

Jos skripti muokkaa /boot/cmdline.txt-tiedostoa, se tekee automaattisesti varmuuskopion nimelle /boot/cmdline.txt.backup.

Raspberry Pi täytyy käynnistää uudelleen, jotta muutokset tulevat voimaan.

Slow mouse movements on Raspbian are often fixed by appending the parameter usbhid.mouse=0 to /boot/cmdline.txt. This script checks if the usbhid.mousepoll parameter exists, and if not, appends it to the command line. If it does exist, the script returns an error message and doesn't add it again. The parameter may exist in the form usbhid.mousepoll=1, in which case the 1 needs to be changed to 0. This is left to be done manually at the user's discretion.

If the script does edit /boot/cmdline.txt, it makes an automatic backup to /boot/cmdline.txt.backup.

The Raspberry Pi must be rebooted for the changes to take effect.
