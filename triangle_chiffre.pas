program triangle_chiffre;

uses crt;

{ALGO triangle de caractères
BUT faire un triangle avec des caractères
ENTRER taille du triangle
SORTIE le triangle

procedure taille_triangle(var taille:ENTIER)
DEBUT
	REPETER
		ECRIRE "De quelle taille doit être le triangle ?" //demande de la taille du triangle
		LIRE taille
	JUSQU'A taille>0 //vérification que la taille n'est pas négative ou nulle
FINPROCEDURE

procedure construire_triangle(taille:ENTIER);
VAR
	i,j:ENTIER//i et j serviront à faire le triangle
	ch:chaine //sert à sauvegarder la ligne (ch n'est utilisé que dans l'algo dans le programme en pascal j'utilise write et writeln)
DEBUT
	POUR i DE taille A 1 avec un pas de -1 FAIRE
		POUR j DE 1 A i FAIRE //on remplit ch avec i car i correspond au numéro de la ligne
			ch<-ch+ord(i)
		FINPOUR
		ECRIRE ch //on affiche la ligne avant de passer à la suivante
	FINPOUR
FINPROCEDURE

ALGO

VAR
	taille,test:ENTIER  //test sert juste à utiliser l'algorithme plusieurs fois
	
DEBUT

	REPETER
		taille_triangle(taille)
		construire_triangle(taille)
		ECRIRE('Veuillez entrer 0 pour quitter')
		LIRE test
	JUSQU'A test=0
	
FIN
}

//liste de procedure

procedure taille_triangle(var taille:integer);
BEGIN
	REPEAT
		writeln(UTF8ToAnsi('De quelle taille doit être le triangle ?')); //demande de la taille du triangle
		readln(taille);
	UNTIL taille>0; //vérification que la taille n'est pas négative ou nulle
END;

procedure construire_triangle(taille:integer);
VAR
	i,j:integer; //i et j serviront à faire le triangle
BEGIN
	FOR i:=taille DOWNTO 1 DO
		begin
			FOR j:=1 TO i DO //on remplit la ligne de i car i correspond au numéro de la ligne
				begin
					write(i);
				end;
				writeln; //on retourne à la ligne
		end;
END;

//programme principal

VAR
	taille,test:integer; //test sert juste à utiliser le programme plusieurs fois
	
BEGIN

	REPEAT
		clrscr;
		taille_triangle(taille);
		writeln; // retour à la ligne pour rendre l'affichege plus lisible
		construire_triangle(taille);
		writeln('Veuillez entrer 0 pour quitter');
		readln(test);
	UNTIL test=0;
	
END.
