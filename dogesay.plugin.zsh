preexec() { eval "$PROMPT_COMMAND" }
declare -a WOWARR=("WOW" "MUCH" "VERY" "INTERESTING" "NICE" "TRULY" "GOOD" "EXCELLENT" "EASY")
WOWARRLEN=${#WOWARR[@]}

PROMPT_COMMAND='HIS="$(tail -n 1 $HOME/.zsh_history)";
				HISL="$(cut -d";" -f2 <<<$HIS|tr a-z A-Z)";
				WOWEMPTYLINE="\n";
				WOWEMPTYLINECOUNT=$(( ( RANDOM % 30 )+1))
				for i in {1..WOWEMPTYLINECOUNT}
				do
					WOWEMPTYLINE="$WOWEMPTYLINE\n"
				done;
				WOWGAP="\t";
				for i in {1..$(( ( RANDOM % 5 )  + 1 ))}
				do
					WOWGAP="$WOWGAP\t"
				done;
				WOWPREIND=$(( ( RANDOM % $WOWARRLEN )  + 1 ));
				paste <(less $ZSH/plugins/dogesay/doge_cleaned.txt) <(echo "$WOWEMPTYLINE $WOWGAP $WOWARR[$WOWPREIND] $HISL"|figlet)| column -s $'\t' -t|lolcat'


