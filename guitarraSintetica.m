clear all
clc
% Frecuencia en Hertz de las notas musicales en sus primeros armonicos
fs = 44100; % Estándar CD --> 44100 muestras por segundo
fDo = 261; % Frecuencia nota musical Do en Hertz
NT_Do = fs/fDo;
NT_Do = floor(NT_Do); % convierte flotante a entero
x = 2*rand(NT_Do,1)-1; % genera numero aleatorio con nivel DC cero
D = 1;
NM = D*fs;
Do = zeros(NM,1); %rellena de ceros la columna
for n=0 : NM-1;
    if n < NT_Do
        Do(n+1) = x(n+1);
    else
        Do(n+1) = (Do(n-NT_Do+6) + Do(n-NT_Do+5) + Do(n-NT_Do+4) + Do(n-NT_Do+3) + Do(n-NT_Do+2))/5;
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fRe = 294; % Frecuencia nota musical Re en Hertz
NT_Re = fs/fRe;
NT_Re = floor(NT_Re); % convierte flotante a entero
x = 2*rand(NT_Re,1)-1; % genera numero aleatorio con nivel DC cero

NM = D*fs;
Re = zeros(NM,1); %rellena de ceros la columna
for n=0 : NM-1;
    if n < NT_Re
        Re(n+1) = x(n+1);
    else
        Re(n+1) = (Re(n-NT_Re+6) + Re(n-NT_Re+5) + Re(n-NT_Re+4) + Re(n-NT_Re+3) + Re(n-NT_Re+2))/5;
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fMi = 330; % Frecuencia nota musical Mi en Hertz
NT_Mi = fs/fMi;
NT_Mi = floor(NT_Mi); % convierte flotante a entero
x = 2*rand(NT_Mi,1)-1; % genera numero aleatorio con nivel DC cero

NM = D*fs;
Mi = zeros(NM,1); %Rellena de ceros la columna
for n=0 : NM-1;
    if n < NT_Mi
        Mi(n+1) = x(n+1);
    else
        Mi(n+1) = (Mi(n-NT_Mi+6) + Mi(n-NT_Mi+5) + Mi(n-NT_Mi+4) + Mi(n-NT_Mi+3) + Mi(n-NT_Mi+2))/5;
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fFa = 349; % Frecuencia nota musical Fa en Hertz
NT_Fa = fs/fFa;
NT_Fa = floor(NT_Fa); % convierte flotante a entero
x = 2*rand(NT_Fa,1)-1; % genera numero aleatorio con nivel DC cero

NM = D*fs;
Fa = zeros(NM,1); %Rellena de ceros la columna
for n=0 : NM-1;
    if n < NT_Fa
        Fa(n+1) = x(n+1);
    else
        Fa(n+1) = (Fa(n-NT_Fa+6) + Fa(n-NT_Fa+5) + Fa(n-NT_Fa+4) + Fa(n-NT_Fa+3) + Fa(n-NT_Fa+2))/5;
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fSol = 392; % Frecuencia nota musical Sol en Hertz
NT_Sol = fs/fSol;
NT_Sol = floor(NT_Sol); % convierte flotante a entero
x = 2*rand(NT_Sol,1)-1; % genera numero aleatorio con nivel DC cero

NM = D*fs;
Sol = zeros(NM,1); %Rellena de ceros la columna
for n=0 : NM-1;
    if n < NT_Sol
        Sol(n+1) = x(n+1);
    else
        Sol(n+1) = (Sol(n-NT_Sol+6) + Sol(n-NT_Sol+5) + Sol(n-NT_Sol+4) + Sol(n-NT_Sol+3) + Sol(n-NT_Sol+2))/5;
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fLa = 440; % Frecuencia nota musical La en Hertz
NT_La = fs/fLa;
NT_La = floor(NT_La); % convierte flotante a entero
x = 2*rand(NT_La,1)-1; % genera numero aleatorio con nivel DC cero

NM = D*fs;
La = zeros(NM,1); %Rellena de ceros la columna
for n=0 : NM-1;
    if n < NT_La
        La(n+1) = x(n+1);
    else
        La(n+1) = (La(n-NT_La+6) + La(n-NT_La+5) + La(n-NT_La+4) + La(n-NT_La+3) + La(n-NT_La+2))/5;
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fSi = 494; % Frecuencia nota musical Si en Hertz
NT_Si = fs/fSi;
NT_Si = floor(NT_Si); % convierte flotante a entero
x = 2*rand(NT_Si,1)-1; % genera numero aleatorio con nivel DC cero

NM = D*fs;
Si = zeros(NM,1); %Rellena de ceros la columna
for n=0 : NM-1;
    if n < NT_Si
        Si(n+1) = x(n+1);
    else
        Si(n+1) = (Si(n-NT_Si+6) + Si(n-NT_Si+5) + Si(n-NT_Si+4) + Si(n-NT_Si+3) + Si(n-NT_Si+2))/5;
    end
end

%Para hacer una secuencia de notas
sound(Do,fs)
sound(Re,fs)
sound(Mi,fs)
sound(Fa,fs)
sound(Sol,fs)
sound(La,fs)
sound(Si,fs)

% Para mezclar dos o mas salidas de notas
% musicales en sus primeros armonicos
sound([Do,Re],fs)
sound([Mi,Si],fs)
sound(La)
sound(La)