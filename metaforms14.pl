%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                               %  
%                                                               %
%       GRUPO NUM: 13                                           %
%       ALUNOS: Andre Pires -Numero 76046                       %
%				Miguel Cruz -Numero 76102                       %
%                                                               %
%               ATENCAO: NAO USAR ACENTOS OU CEDILHAS           %
%                                                               %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                               %
%					PISTAS INTERMEDIAS                          %
%                                                               %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% -----------------------------------------------------------------
% Em todas as pistas testamos se estao a dar a Linha e Coluna
% possivel para a pista respetiva.
% -----------------------------------------------------------------

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                         TRIO LEFT                             % 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 1.

trioLeft(Peca,Linha,Coluna,Tabuleiro):- Linha = top,Coluna = left,!,
	(coloca(Peca,Linha,left,Tabuleiro);coloca(Peca,Linha,middle,Tabuleiro)).
trioLeft(Peca,Linha,Coluna,Tabuleiro):- Linha = center, Coluna = right,!,
	(coloca(Peca,Linha,middle,Tabuleiro);coloca(Peca,Linha,right,Tabuleiro)).
trioLeft(Peca,Linha,Coluna,Tabuleiro):- Linha = bottom, Coluna = left,!,
	(coloca(Peca,Linha,left,Tabuleiro);coloca(Peca,Linha,middle,Tabuleiro)).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                         TRIO RIGHT                            % 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%	
% 2.

trioRight(Peca,Linha,Coluna,Tabuleiro):- Linha = top, Coluna = right,!,
	(coloca(Peca,Linha,middle,Tabuleiro);coloca(Peca,Linha,left,Tabuleiro)).
trioRight(Peca,Linha,Coluna,Tabuleiro):- Linha = center, Coluna = left,!,
	(coloca(Peca,Linha,left,Tabuleiro);coloca(Peca,Linha,middle,Tabuleiro)).
trioRight(Peca,Linha,Coluna,Tabuleiro):- Linha = bottom, Coluna = right,!,
	(coloca(Peca,Linha,middle,Tabuleiro);coloca(Peca,Linha,right,Tabuleiro)).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                          COBRA                                % 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 3.

cobra(Peca,Linha,Coluna,Tabuleiro):- Linha = top, Coluna = left,!,
	(coloca(Peca,Linha,middle,Tabuleiro);coloca(Peca,Linha,left,Tabuleiro)).
cobra(Peca,Linha,Coluna,Tabuleiro):- Linha = top, Coluna = right,!,
	(coloca(Peca,Linha,middle,Tabuleiro);coloca(Peca,Linha,right,Tabuleiro)).
cobra(Peca,Linha,Coluna,Tabuleiro):- Linha = center, Coluna = right,!,
	(coloca(Peca,Linha,middle,Tabuleiro);coloca(Peca,Linha,right,Tabuleiro)).
cobra(Peca,Linha,Coluna,Tabuleiro):- Linha = bottom, Coluna = right,!,
	(coloca(Peca,Linha,middle,Tabuleiro);coloca(Peca,Linha,right,Tabuleiro)).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                          T SIMPLES                            % 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 4.

tSimples(Peca,Linha,Coluna,Tabuleiro):- Linha = top, Coluna = left,!,
	(coloca(Peca,top,Coluna,Tabuleiro);coloca(Peca,center,Coluna,Tabuleiro)).
tSimples(Peca,Linha,Coluna,Tabuleiro):- Linha = top, Coluna = middle,!,
	(coloca(Peca,top,Coluna,Tabuleiro);coloca(Peca,center,Coluna,Tabuleiro)).
tSimples(Peca,Linha,Coluna,Tabuleiro):- Linha = top, Coluna = right,!,
	(coloca(Peca,top,Coluna,Tabuleiro);coloca(Peca,center,Coluna,Tabuleiro)).
tSimples(Peca,Linha,Coluna,Tabuleiro):- Linha = bottom, Coluna = middle,!,
	(coloca(Peca,bottom,Coluna,Tabuleiro);coloca(Peca,center,Coluna,Tabuleiro)).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                          T LEFT                               % 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%	
% 5.

tLeft(Peca,Linha,Coluna,Tabuleiro):- Linha = top, Coluna = left,!,
	(coloca(Peca,Linha,left,Tabuleiro);coloca(Peca,Linha,middle,Tabuleiro)).
tLeft(Peca,Linha,Coluna,Tabuleiro):- Linha = center, Coluna = left,!,
	(coloca(Peca,Linha,left,Tabuleiro);coloca(Peca,Linha,middle,Tabuleiro)).
tLeft(Peca,Linha,Coluna,Tabuleiro):- Linha = bottom, Coluna = left,!,
	(coloca(Peca,Linha,left,Tabuleiro);coloca(Peca,Linha,middle,Tabuleiro)).
tLeft(Peca,Linha,Coluna,Tabuleiro):- Linha = center, Coluna = right,!,
	(coloca(Peca,Linha,middle,Tabuleiro);coloca(Peca,Linha,right,Tabuleiro)).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                          T RIGHT                              % 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 6.

tRight(Peca,Linha,Coluna,Tabuleiro):- Linha = top, Coluna = right,!,
	(coloca(Peca,Linha,middle,Tabuleiro);coloca(Peca,Linha,right,Tabuleiro)).
tRight(Peca,Linha,Coluna,Tabuleiro):- Linha = center, Coluna = right,!,
	(coloca(Peca,Linha,middle,Tabuleiro);coloca(Peca,Linha,right,Tabuleiro)).
tRight(Peca,Linha,Coluna,Tabuleiro):- Linha = bottom, Coluna = right,!,
	(coloca(Peca,Linha,middle,Tabuleiro);coloca(Peca,Linha,right,Tabuleiro)).
tRight(Peca,Linha,Coluna,Tabuleiro):- Linha = center, Coluna = left,!,
	(coloca(Peca,Linha,middle,Tabuleiro);coloca(Peca,Linha,left,Tabuleiro)).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                          T INVERTIDO                          % 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 7.

tInvertido(Peca,Linha,Coluna,Tabuleiro):- Linha = bottom , Coluna = left,!,
	(coloca(Peca,bottom,Coluna,Tabuleiro);coloca(Peca,center,Coluna,Tabuleiro)).
tInvertido(Peca,Linha,Coluna,Tabuleiro):- Linha = bottom , Coluna = middle,!,
	(coloca(Peca,bottom,Coluna,Tabuleiro);coloca(Peca,center,Coluna,Tabuleiro)).
tInvertido(Peca,Linha,Coluna,Tabuleiro):- Linha = bottom , Coluna = right,!,
	(coloca(Peca,bottom,Coluna,Tabuleiro);coloca(Peca,center,Coluna,Tabuleiro)).
tInvertido(Peca,Linha,Coluna,Tabuleiro):- Linha = top , Coluna = middle,!,
	(coloca(Peca,center,Coluna,Tabuleiro);coloca(Peca,top,Coluna,Tabuleiro)).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                        CANTO TOP LEFT                         % 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Colocam-se as pecas da esquerda para a direita, de cima para baixo %
% 8.

cantoTopLeft(Peca, Linha, Coluna, Tabuleiro):-
	Linha = top, Coluna = left,!,(
	coloca(Peca,Linha,Coluna,Tabuleiro);
	coloca(Peca,Linha,middle,Tabuleiro);
	coloca(Peca,center,Coluna,Tabuleiro);
	coloca(Peca,center,middle,Tabuleiro)).
	
cantoTopLeft(Peca, Linha, Coluna, Tabuleiro):-
	Linha = top, Coluna = right,!,(
	coloca(Peca,Linha,middle,Tabuleiro);
	coloca(Peca,Linha,Coluna,Tabuleiro);
	coloca(Peca,center,middle,Tabuleiro);
	coloca(Peca,center,Coluna,Tabuleiro)).

cantoTopLeft(Peca, Linha, Coluna, Tabuleiro):-
	Linha = bottom, Coluna = left,!,(
	coloca(Peca,center,Coluna,Tabuleiro);
	coloca(Peca,center,middle,Tabuleiro);
	coloca(Peca,Linha,Coluna,Tabuleiro);
	coloca(Peca,Linha,middle,Tabuleiro)).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                        CANTO TOP RIGHT                        % 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 9.

cantoTopRight(Peca, Linha, Coluna, Tabuleiro):-
	Linha = top, Coluna = left,!,(
	coloca(Peca,Linha,Coluna,Tabuleiro);
	coloca(Peca,Linha,middle,Tabuleiro);
	coloca(Peca,center,Coluna,Tabuleiro);
	coloca(Peca,center,middle,Tabuleiro)).
	
cantoTopRight(Peca, Linha, Coluna, Tabuleiro):-
	Linha = top, Coluna = right,!,(
	coloca(Peca,Linha,middle,Tabuleiro);
	coloca(Peca,Linha,Coluna,Tabuleiro);
	coloca(Peca,center,middle,Tabuleiro);
	coloca(Peca,center,Coluna,Tabuleiro)).

cantoTopRight(Peca, Linha, Coluna, Tabuleiro):-
	Linha = bottom, Coluna = right,!,(
	coloca(Peca,center,middle,Tabuleiro);
	coloca(Peca,center,right,Tabuleiro);
	coloca(Peca,Linha,middle,Tabuleiro);
	coloca(Peca,Linha,right,Tabuleiro)).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                     CANTO BOTTOM LEFT                         % 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%	
% 10.

cantoBottomLeft(Peca, Linha, Coluna, Tabuleiro):-
	Linha = top, Coluna = left,!,(
	coloca(Peca,Linha,Coluna,Tabuleiro);
	coloca(Peca,Linha,middle,Tabuleiro);
	coloca(Peca,center,Coluna,Tabuleiro);
	coloca(Peca,center,middle,Tabuleiro)).

cantoBottomLeft(Peca, Linha, Coluna, Tabuleiro):-
	Linha = bottom, Coluna = left,!,(
	coloca(Peca,center,Coluna,Tabuleiro);
	coloca(Peca,center,middle,Tabuleiro);
	coloca(Peca,Linha,Coluna,Tabuleiro);
	coloca(Peca,Linha,middle,Tabuleiro)).

cantoBottomLeft(Peca, Linha, Coluna, Tabuleiro):-
	Linha = top, Coluna = right,!,(
	coloca(Peca,center,middle,Tabuleiro);
	coloca(Peca,center,Coluna,Tabuleiro);
	coloca(Peca,Linha,middle,Tabuleiro);
	coloca(Peca,Linha,Coluna,Tabuleiro)).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                      CANTO BOTTOM RIGHT                       % 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 11.

cantoBottomRight(Peca, Linha, Coluna, Tabuleiro):-
	Linha = top, Coluna = right,!,(
	coloca(Peca,Linha,middle,Tabuleiro);
	coloca(Peca,Linha,Coluna,Tabuleiro);
	coloca(Peca,center,middle,Tabuleiro);
	coloca(Peca,center,Coluna,Tabuleiro)).

cantoBottomRight(Peca, Linha, Coluna, Tabuleiro):-
	Linha = bottom, Coluna = left,!,(
	coloca(Peca,center,Coluna,Tabuleiro);
	coloca(Peca,center,middle,Tabuleiro);
	coloca(Peca,Linha,Coluna,Tabuleiro);
	coloca(Peca,Linha,middle,Tabuleiro)).

cantoBottomRight(Peca, Linha, Coluna, Tabuleiro):-
	Linha = bottom, Coluna = right,!,(
	coloca(Peca,center,middle,Tabuleiro);
	coloca(Peca,center,Coluna,Tabuleiro);
	coloca(Peca,Linha,middle,Tabuleiro);
	coloca(Peca,Linha,Coluna,Tabuleiro)).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                        DIAGONAL GRAVE                         % 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 12.

diagonalGrave(Peca, Linha, Coluna, Tabuleiro):-
	Linha = top, Coluna = left,!,(
	coloca(Peca,Linha,Coluna,Tabuleiro);
	coloca(Peca,Linha,middle,Tabuleiro);
	coloca(Peca,center,Coluna,Tabuleiro);
	coloca(Peca,center,middle,Tabuleiro)).

diagonalGrave(Peca, Linha, Coluna, Tabuleiro):-
	Linha = bottom, Coluna = right,!,(
	coloca(Peca,center,middle,Tabuleiro);
	coloca(Peca,center,Coluna,Tabuleiro);
	coloca(Peca,Linha,middle,Tabuleiro);
	coloca(Peca,Linha,Coluna,Tabuleiro)).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                        DIAGONAL AGUDA                         % 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 13.

diagonalAguda(Peca, Linha, Coluna, Tabuleiro):-
	((Linha = top, Coluna = right);(Linha = bottom, Coluna = left)),
	(coloca(Peca,Linha,middle,Tabuleiro);
	coloca(Peca,Linha,Coluna,Tabuleiro);
	coloca(Peca,center,middle,Tabuleiro);
	coloca(Peca,center,Coluna,Tabuleiro)).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                 %
%						PECAS DO JOGO    						  %
%                                                                 % 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%		
% -----------------------------------------------------------------
% Factos do projecto, neste caso todas as combinacoes de pecas
% possiveis no tabuleiro de jogo.
% -----------------------------------------------------------------	
peca(quadrado,vermelho).
peca(quadrado,amarelo).
peca(quadrado,azul).

peca(triangulo,vermelho).
peca(triangulo,amarelo).
peca(triangulo,azul).

peca(circulo,vermelho).
peca(circulo,amarelo).
peca(circulo,azul).	

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                 %
%						PREDICADO CHECK							  %
%                                                                 % 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%	

% -----------------------------------------------------------------
% check(Tabuleiro,TabuleiroFinal) - Predicado check simplesmente
% "chama" o checkAuxiliar/3 que efectua o trabalho.
% -----------------------------------------------------------------

check(Tabuleiro,TabuleiroFinal):-
	checkAuxiliar(Tabuleiro,TabuleiroFinal,[]).

% -----------------------------------------------------------------
% checkAuxiliar(Tabuleiro,TabuleiroFinal,TabuleiroAuxiliar) - 
%    -A checkAuxiliar vai unificando as pecas que ja se encontram no
% Tabuleiro "parcial" que veio das pistas, com as pecas possiveis
% acima indicadas como factos.
%    -No TabuleiroAuxiliar vai guardando todas as pecas que 
% vai pondo no TabuleiroFinal e so vai colocando a peca no
% TabuleiroFinal caso esta não exista neste, testando se existe no
% TabuleiroAuxiliar.   
% -----------------------------------------------------------------

checkAuxiliar([],[],_):- !.

checkAuxiliar([peca(Forma,Cor)|Resto1], [peca(Forma,Cor)|Resto2], TabuleiroAuxiliar):-
	peca(Forma,Cor),													% Unifica com as Pecas Possiveis.
	not(membro(peca(Forma,Cor),TabuleiroAuxiliar)),						% Testa se ja existe no Tabuleiro usando o auxiliar.
	checkAuxiliar(Resto1,Resto2,[peca(Forma,Cor)|TabuleiroAuxiliar]). 	% Coloca a peca no Auxiliar e chama recursivamente a checkAuxiliar.
	
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                 %
%						PREDICADO AUXILIARES					  %
%                                                                 % 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%					   PREDICADOS PARA LISTAS					  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% -----------------------------------------------------------------
% membro(Elemento,Lista) - Verifica se Elemento se encontra
% na Lista dada.
% -----------------------------------------------------------------

membro(Elemento, [Elemento|_]):- !.
membro(Elemento, [_|RestoLista]):- membro(Elemento,RestoLista).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% FIM %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%