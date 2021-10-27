%% BER vs Eb/No in dB Theory %%
clc;
clear all;
close all;

Eb_No_dB = input("Enter Eb/No in dB : ");
Eb_No = 10^sqrt(Eb_No_dB/10);
R = 1; % Transmission rate with channel codding
sigma = 1/sqrt(2*R*(Eb_No));
BER = 0.5*erfc(1/(sqrt(2)*sigma));
display(Eb_No);
display("Theoritical BER is : ");
display(BER);