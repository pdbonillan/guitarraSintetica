%==Frecuencia de Muestreo==
fm=44100;

% ==Elaboracion de las notas musicales==
r=2^(1/12);

% ==frecuencia de referencia LA==
fr=440;

% Tomamos la frecuencia del do para definir las octavas de mejor manera
fr=13*r^-9*fr;
c=r^0*fr*[1/4 1/2 1 2 4];
cs=r^1*fr*[1/4 1/2 1 2 4];
d=r^2*fr*[1/4 1/2 1 2 4];
ds=r^3*fr*[1/4 1/2 1 2 4];
e=r^4*fr*[1/4 1/2 1 2 4];
f=r^5*fr*[1/4 1/2 1 2 4];
fs=r^6*fr*[1/4 1/2 1 2 4];
g=r^7*fr*[1/4 1/2 1 2 4];
gs=r^8*fr*[1/4 1/2 1 2 4];
a=r^9*fr*[1/4 1/2 1 2 4];
as=r^10*fr*[1/4 1/2 1 2 4];
b=r^11*fr*[1/4 1/2 1 2 4];

%El Silencio, su frecuencia es cero
s=0;

%==Parte para Duracion==
% Definimos la duracion en segundos de la negra.
% tomada como 1 tiempo
n=.05;

%Hacemos un vector N = [ nota , duracion ]
NOTAS=[d(3),d(4),a(3),g(3),g(4),a(3),fs(4),a(3),d(3),d(4),a(3),g(3),g(4),a(3),fs(4),a(3),e(3),d(4),a(3),g(3),g(4),a(3),fs(4),a(3),e(3),d(4),a(3),g(3),g(4),a(3),fs(4),a(3),fs(3),d(4),a(3),g(3),g(4),a(3),fs(4),a(3),fs(3),d(4),a(3),g(3),g(4),a(3),fs(4),a(3)];
DURACION=[n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n,n];
N=[NOTAS',DURACION'];
y=[];

%==Armamos la señal==
for i=1:length(N)
fr=N(i,1);
t=N(i,2);
x=(0:(1/fm):t);
y=[y sin(fr*2*pi.*x)];
end

% Hacemos el sonido
% en este comando
% esta toda la magia

sound(y)
