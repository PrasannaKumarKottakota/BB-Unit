%%%% BER Vs Eb_No in dB Theory Plot %%%
clc;
clear all;
close all;

Eb_No_dB = (0:1:20);
R = 1; % for non coding 
for i = 1:length(Eb_No_dB)
  Eb_No(i) = 10^(Eb_No_dB(i)/10);
  Sigma(i) = 1/sqrt(2*R*Eb_No(i));
  BER(i) = 0.5*erfc(1/(sqrt(2)*Sigma(i)));
end

semilogy(Eb_No_dB, BER);
title("BER vs Eb/No in dB for BPSK or QPSK");
xlabel("Eb/No in dB");
ylabel("Therortical BER");
