program triangle_carctere;

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

procedure construction_triangle(taille:ENTIER);
VAR
	i,j:ENTIER//i et j serviront à faire le triangle
	ch:CHAINE //sert à sauvegarder la ligne (ch n'est utilisé que dans l'algo dans le programme en pascal j'utilise write et writeln)
DEBUT
	POUR i DE 1 A taille FAIRE
		ch<-'' //réinitialisation de ch 
		POUR j DE 1 A i FAIRE
			SI i=taille ALORS //Si c'est la dernière ligne alors on écrit que des X
				ch<-ch+'X'
			SINON
				SI (j=1) OU (j=i) ALORS // sinon si on est au début ou à la fin de la ligne ou écrit X
					ch<-ch+'X'
				SINON
					ch<-ch+'O'	// sinon on écrit O
				FINSI
			FINSI
		FINPOUR
		ECRIRE ch //on affiche la ligne avant de passer à la suivante
	FINPOUR
FINPROCEDURE

ALGO

VAR
	taille,test:ENTIER //test sert juste à utiliser l'algorithme plusieurs fois
	
DEBUT

	REPETER
		taille_triangle(taille)
		construction_triangle(taille)
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

procedure construction_triangle(taille:integer);
VAR
	i,j:integer;
BEGIN

	FOR i:=1 TO taille DO
		begin
			FOR j:=1 TO i DO
				begin
					IF i=taille THEN //Si c'est la dernière ligne alors on écrit que des X
						begin
							write('X');
						end
					ELSE
						begin
							IF (j=1) OR (j=i) THEN // sinon si on est au début ou à la fin de la ligne ou écrit X
								begin
									write('X'); 
								end
							ELSE
								begin
									write('O'); // sinon on écrit O
								end;
						end;
				end;
				writeln; //on retourne à la ligne
		end;
END;

//programme principal
	
VAR
	taille,test:integer; //i et j serviront à faire le triangle test sert juste à utiliser le programme plusieurs fois
	
BEGIN

	REPEAT
		clrscr;
		taille_triangle(taille);
		writeln; // retour à la ligne pour rendre l'affichege plus lisible
		construction_triangle(taille);
		writeln('Veuillez entrer 0 pour quitter');
		readln(test);
	UNTIL test=0;
	
END.