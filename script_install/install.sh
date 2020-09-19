#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

list=`ls -a $DIR/..`

for fichier in $list ; do
	
	echo "$fichier "
	if  [[  (-f $DIR/../$fichier ) && ( "$fichier" != ".gitignore" )  ||
		( "$fichier" = ".vim" ) ]] ; 
		then

		echo "its a file $fichier "
		if [ -e $HOME/$fichier ]; then
			echo "le fichier $fichier existe"
			rm $HOME/$fichier
			ln -s $DIR/../$fichier $HOME/$fichier
		else
			echo "le fichier $fichier n'exitste pas"
			ln -s $DIR/../$fichier $HOME/$fichier
		fi  
	fi 
done




#echo "${list[@]}"
