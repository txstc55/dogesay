## Welcome to use DOGESAY zsh plugin!

## words that doge say
declare -a WOWARR=("WOW" "MUCH" "VERY" "INTERESTING" "NICE" "TRULY" "GOOD" "EXCELLENT" "EASY" "INDEED" "HIGHLY" "PRETTY" "QUITE" "SUCH" "MANY" "SO" "THAT" "DAT" "HOLY" "LOL" "COOL")
WOWARRLEN=${#WOWARR[@]}

## A list of element that doge should not say a word about
declare -a NODOGE=("CMAKE" "MAKE" "CLEAR" "WOW" "EXIT" "./")

## doge check what he should not say
containsElement () {
	for i in "${NODOGE[@]}"
	do
		if [[ $1 =~ $i ]]
		then
			return 0
		fi
	done
	return 1
}
## disable or enable the use of lolcat here
USERLETLOLCAT=true
SYSALLOWLOLCAT=true; if ! type "lolcat" > /dev/null; then SYSALLOWLOLCAT=false;fi
## disable or enable the use of figlet here
USERLETFIGLET=true
SYSALLOWFIGLET=true; if ! type "figlet" > /dev/null; then SYSALLOWFIGLET=false;fi
## the master himself
DOGE='                                                                 ````                         
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
    Nh```````````````````````````````````````````````````````..-----....````````````````````d'

## the doge magic

DOGE_MAGIC(){
  HIS="$(tail -n 1 $HOME/.zsh_history)";
  HISL="$(cut -d";" -f2 <<<$HIS|tr a-z A-Z)";
  HISLEN=${#HISL};
  if containsElement $HISL
  then
  else
    WOWEMPTYLINE="";
    WOWPREIND=$(( ( RANDOM % $WOWARRLEN )  + 1 ));
    WOWWORD=$WOWARR[$WOWPREIND];
    WOWWORDLEN=${#WOWWORD};
    WOWEMPTYLINECOUNT=$(( ( RANDOM % $(( 48 - 7*(($HISLEN + $WOWWORDLEN + 1)/10+1) )) )+1));
    for i in {1..$WOWEMPTYLINECOUNT}
    do
      WOWEMPTYLINE="$WOWEMPTYLINE\n"
    done;
    WOWGAP="";
    for i in {0..$((  RANDOM % 30 ))}
    do
      WOWGAP="$WOWGAP "
    done;
    WOWGAPEACHLINE=""
    for i in {1..48}
    do
      WOWGAPEACHLINE="$WOWGAPEACHLINE$WOWGAP\n"
    done;
    paste <(echo $DOGE) <(echo $WOWGAPEACHLINE) <(echo $WOWEMPTYLINE; echo "$WOWWORD $HISL"|if $USERLETFIGLET&&$SYSALLOWFIGLET; then figlet; else cat;fi)| column -s $'\t' -t|if $USERLETLOLCAT&&$SYSALLOWLOLCAT; then lolcat; else cat;fi
  fi
}

preexec_functions+=(DOGE_MAGIC)


