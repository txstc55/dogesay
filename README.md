# dogesay

This is an oh-my-zsh plugin, it does not work in normal bash.

Let doge repeat your command

with much wow

See the demo:

![Alt Text](https://raw.githubusercontent.com/txstc55/dogesay/master/dogesay.gif)

Install it by 
```bash
git clone https://github.com/txstc55/dogesay
mv dogesay path/to/oh-my-zsh/plugin/folder
```

Then in .zshrc, enable it by changing the line:

```
plugins=(... dogesay)
```

## Pre-Doge:

To enjoy the full colorful dogesay, you will need lolcat and figlet for this.

Check out lolcat at [here](https://github.com/busyloop/lolcat) and figlet at [here](http://www.figlet.org/)

The original lolcat is quite slow though, [here](https://github.com/jaseg/lolcat) is a c-implementation of lolcat that runs much faster, which I strongly recommand.

But it is ok if you do not want those two. Doge will check if you have lolcat or figlet for you, if you don't have it, it just simply doesn't use it.

You can, however, manually disable the use of lolcat or figlet. On line 22 and 25, you will see two options for lolcat and figlet. Set the one you want to disable to false and doge will not use it.

For better performance, I suggest turn of lolcat. It takes some time to turn doge into rainbow. (By a while I mean less than half a second but you will still notice it)

## More Doge Words:

If you want more words coming out of doge, go to dogesay.plugin.zsh, at the 4th line, just put in the word you want doge to spit at you into the list:

```bash
declare -a WOWARR=("YOUR" "OWN" "WORDS")
```

## Doge don't say
On line 8 of the dogesay.plugin.zsh, you can customize a list of commands you do not want doge to say a word about. Once doge detects that the command you input contains a word that you forbid him to say, he will not say.

Simply add the words like this:

```bash
declare -a NODOGE=("DOGE" "IGNORE" "THOSE" "COMMANDS")
```
REMEMBER TO CAPITALIZE THOSE WORDS OTHERWISE DOGE DOESN'T GIVE A FLYING PAN.

ENJOY!

                                                                 ````                         
                                                               `/yMMy                         
                   `oooooo`                                   :sMmyMy                         
                  odMdyydMdo                                  yN+++ms                         
                `-dNso+++omNN/.                            .+Nmd:/+hdN.                       
                /Nmdo++oo++sddh///                       ./mNh+:://+yM.                       
                /Myo+ooooo++++oymN                      sdMyo::::::+yNy+                      
                /My+ooooooooo+++ymh+`   `````````:hhhhhhNh+::::::::++oNd`                     
               -oMs+ooooooooooo+++syd:--hNddddddddmo/////::::::::::///hdN:                    
               dNds++oshhhssooooooooohhyhy::::::::::::::::::::::::::::/oMs/                   
               mdo+++osMMMmhosooooooo//:::::::::::::::::::::::::::::::::omMy:                 
               md+++ossMMMMmssssoooo+::::::::::::::::::::::::::::::::::::///shhdm:.           
               md+++ossmNMMMNhysoo+/::::::::::::::::::::::::::::::::::::::::://odhy:::        
               md+++oossydMMMMms+/::::::::::::::::::::::::::::::::::::::::::::::::/ymN        
               md+++ooosssNNNhs/::::::::::::::::::::::::::::::::::::::::::/:::::::::hN`       
               md+++ooossoo+/::::::::::::::::::::::::::::::::::::::::::/+symy///:::://m+      
               md+++oooo+/::::::::::::::::::::::::::::::::::::::::::::oos++MMNNh::::::do/     
               md+++o++::::::::::::::::::::::::/syy+::::::::::::::::::dmomMMMMMh/::::::yM`    
             ``md+++/::::::::::::::::::::::::/sdmNMmddo:::::::::::::::++odmNNNo+/::::::/+h+   
             +mmh+++:::::::::::::::::::::::/+mmd+sMMMMNm+/:::::::::::::::/++++/::::::::::Ny   
             oMhhyso::::::::---------::::::yNMs`dNMMMMMMhs/:::::::::::::::::::::::::-----hs/` 
             oMMms/:::::::-............--::+ssssNMMMMMMM///::::::::::::::::::::::---......oM- 
            .sMo/::::::--...````````````.----:/++++ooooo//::::::::::::---:////:::.````````+M: 
            mmd/:::::::...````````````````...-------:::::::::::::::---://ydmmNNmm/:```````/d/-
            My:::::::::..````````````````````........--------------...dNMMMMMMMMMMd`````````dd
          +yNy:::::::--..`````````````````````````````````````````````mMMMMMMMMMMMd`````````dd
          yM+/:::::::-...`````````````````````````````````````````````hmmNMMMMMMMMd`````````dd
        `:hM:::::::::--..`````````````````````````````````````````````...sddmMMNddy`````````dd
        .Mdy:::::::::::..```````````````````````````````````````````````````:ss/````````````dd
        .Mo::::::::::::...``````````````````````````````````````````````````........````````dd
       .:Mo::::::::::::--.``````````````````````````````````````````````----ommmmmmm:```````dd
       hNh+:::::::::::::-...`````````````````````````````-///////:..-//+mmmmmNNmdddh:```````dd
       dm:::::::::::::::::-..````````````````````````````:ooyMMNNdyyhmyysssoooo/---.````````dh
      `dm:::::::::::::::::---.``````````````````````````````./////////-....``````````````./h+-
     :mmd::::::::::::::::::::-.``````````````````````````````````````````````````````````dmm- 
    /sM+:::::::::::::::::::::::-.``````````````````````````````````````````````````````:+Ny   
    Nms/::::::::::::::::::::::::--.```````````````````````````````````````````````````.sMo:   
    Nd::::::::::::::::::::::::::::..`````````````````````````````````````````````````.dNM`    
    Nd:::::::::::::::::::::::::::::--```````````````````````````````````````````````-/MMM`    
    Nd:::::::::::::::::::::::::::::::..```````````````````````````````````````````.omMsdMo:   
    Nd:::::::::::::::::::::::::::::::..``.yyyy+..````````````````````````````....shMs/`-/Ny   
    Nd:::::::::::::::::::::::::::::-...```:::mmhdy...````````````````````...oddhhmd:.````Ny   
    Nd::::::::::::::::::::--------...```````````sddNN//////////:``````://dMddd:-.````````Ny   
    Nd:::::::::::::::-----..........```````````````/syyyyyyyyymNssssssNNyyy:::--.````````ooo. 
    Nd::::::::::::-.-..........`````````````````````.:::::::::+oooooooo+:::..-..``````````+M: 
    Nh------::::-...`````````````````````````````````....--::::::::::::::....`````````````/NNh
    dy...........`````````````````````````````````````````...--:::::-----..`````````````````dd
    Nh```````````````````````````````````````````````````````..-----....````````````````````d 
