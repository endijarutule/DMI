mkdir matlab
cd matlab
%% merijumu datu apstrade
Um = [-1 0.3 1.5 2.5 3.2];
Im = [1.1 2.2 2.1 3.2 4.7];
plot(Um,Im,'o-')
% meginasim atminet sakaribu kas sasaista x(Um) un y(Im).
% sakaribu mes meklesim ka 2.kartas polinomu
% koeficientus 2.kartas polinomam atradisim ar POLYFIT funkciju
% Poly - polynomial
% Fit - fitting
% C = polyfit(x,y,N)
% N - polinoma karta
C = polyfit(Um,Im,2)

C =

    0.1716    0.3662    1.5034

format compact
% noformesu "x" ar sikaku soli
U = -1:0.01:3.2;
% aprekinasim "y"
I = C(1)*U.^2+C(2)*U+C(3);
% zimesim to kas iznaca
plot(Um,Im,'o',U,I)
% atkartosim to pasu ar 3.kartas polinomu
C = polyfit(Um,Im,3)
C =
    0.1838   -0.4328    0.3391    2.0688
format compact
U = -1:0.01:3.2;
I = C(1)*U.^2+C(2)*U+C(3);
plot(Um,Im,'o',U,I)
C = polyfit(Um,Im,3)
C =
    0.1838   -0.4328    0.3391    2.0688
It = C(1)*U.^3+C(2)*Ut.^2+C(3)*U+C(4)
Undefined function or variable 'Ut'. 
I = C(1)*U.^3+C(2)*U.^2+C(3)*U+C(4);
plot(Um,Im,'o',U,I)
% NAKAMAIS ATKARTOSIM 4.KARTAS POLINOMAM
% bet pasas izteiksmes sastadisana ir laikietilpiga, tapec to automatizesim
% izmantojot POLYVAL funkciju
% POLY - polinomial, VAL - value
% y = polyval(C,x);
% buutiba tas pats kaa
% y  = C(1)*x.^2+C(2)*x+C(3)
% ja ir 2.karta,...
% piemers 3.kartai
C = polyfit(Um,Im,3);
I = polyval(C,U);
plot(Um,Im,'o',U,I)
% atkartojiet 4.kartai
C = polyfit(Um,Im,4);
I = polyval(C,U);
plot(Um,Im,'o',U,I)
%% pie lielas polinoma pakapes
% gan aproksimacijai, gan interpolacijais radisies nevelamas oscilacijas
C = polyfit(Um,Im,10);
Warning: Polynomial is not unique; degree >= number of data points. 
> In polyfit (line 70) 
I = polyval(C,U);
plot(Um,Im,'o',U,I)
% lineara sakariba
C = polyfit(Um,Im,1);
I = polyval(C,U);
plot(Um,Im,'o',U,I)
%% vairaksa merijumu serijas
Um = [-1 0.3 1.5 2.5 3.2];
Im = [1.1 2.2 2.1 3.2 4.7;
        0.9 1.8 2.6 3.3 4.5;
        1.0 2.0 2.4 3.4 4.3;
        0.8 1.9 2.5 3.5 4.4;
        1.0 2.1 2.2 3.3 4.6];
%% jautajums ka matlabs zimes matricas?
figure,plot(Um,Im,'o-')
figure,plot(Um,Im','o-')




% pielaikosim polinomu
% meklesim videjo vertibu
Ivid = mean(Im)
Ivid =
    0.9600    2.0000    2.3600    3.3400    4.5000
C = polyfit(Um,Ivid,3);
U = -1:0.01:3.2;
I = polyval(C,U);
% jusu uzdevums :

% uzzimet grafiku lai merijumu punkti butu ar 'o'
% lai videjais starp merijumiem butu ar '*k'
% lai pielaikotais polinoms butu ar liniju'-'
plot(Um,Im','o',Um,Ivid,'*',U,I,'-')
% kad ir vairakas merijumu serijas
% rekina videjo kvadratisko novirzi
 Ivkn = std(Im);
 Ivkn = std(Im)  
Ivkn =
    0.1140    0.1581    0.2074    0.1140    0.1581
errorbar(Um,Ivid,Ivkn)
% ka ielasit skeneto grafiku
% un iegut merijumu punktus
cd

/home/user/matlab

ls
image1.JPG  image2.JPG

%% ielasisim bildes matlaba
A = imread('image1.JPG');
B = imread('image2.JPG');
whos A
  Name        Size                 Bytes  Class    Attributes

  A         686x768x3            1580544  uint8              

figure(1),image(A),shg
figure(2),image(B),shg
% 2.grafikam uzstadisim istus x y 
figure(2),image([0 14],[0 80],B),
figure(2),image([0 14],[80 0],B),
set(gca,'Ydir','normal')
% atliek vien nolasit grafiku
[x,y] = ginput(5)
x =
    3.6367
    4.5931
    5.9958
    8.8331
   10.9690
y =
    9.8820
   19.4813
   28.3608
   37.2402
   41.3199