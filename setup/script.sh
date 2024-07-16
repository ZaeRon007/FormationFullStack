#!/bin/sh

#Number=4;
#branch="Projet$Number" ;
#directory="projet $Number";
cd openclassroom/
#VAR=1
for VAR in 1 2 3 4 5 6 7 8 9 10 11 12 13
do
	branch="Projet$VAR" ;
	directory="projet $VAR";
	echo $branch
	echo $directory
	echo "------"
	git checkout main
	git branch $branch
	rm -rf Diagramme\ prévisionnel.ods README.md		
	git checkout $branch
	mkdir "$directory"
	touch "$directory"/.gitignore
	git add Diagramme\ prévisionnel.ods README.md "$directory"/.gitignore
	git commit -m "Initial commit"
	git push --set-upstream origin $branch	
done

