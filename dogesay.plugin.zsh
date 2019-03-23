preexec() { eval "$PROMPT_COMMAND" }

## words that doge say
declare -a WOWARR=("WOW" "MUCH" "VERY" "INTERESTING" "NICE" "TRULY" "GOOD" "EXCELLENT" "EASY" "INDEED" "HIGHLY" "PRETTY" "QUITE" "SUCH" "MANY" "SO")
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


## the doge magic
PROMPT_COMMAND='HIS="$(tail -n 1 $HOME/.zsh_history)";
				HISL="$(cut -d";" -f2 <<<$HIS|tr a-z A-Z)";
				if containsElement $HISL
				then
				else
					WOWEMPTYLINE="";
					WOWEMPTYLINECOUNT=$(( ( RANDOM % 35 )+1));
					for i in {1..$WOWEMPTYLINECOUNT}
					do
						WOWEMPTYLINE="$WOWEMPTYLINE\n"
					done;
					WOWGAP="\t";
					for i in {1..$(( ( RANDOM % 20 )  + 1 ))}
					do
						WOWGAP="$WOWGAP\t"
					done;
					WOWPREIND=$(( ( RANDOM % $WOWARRLEN )  + 1 ));
					paste <(less $ZSH/plugins/dogesay/doge_cleaned.txt) <(echo $WOWEMPTYLINE; echo "$WOWGAP $WOWARR[$WOWPREIND] $HISL"|figlet)| column -s $'\t' -t|lolcat
				fi'