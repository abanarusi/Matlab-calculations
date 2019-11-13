clc
clear all
close all

A = input('Enter coefficients of A in a matrix: '); %input values of the matrix where like [1, 0, 2; -6, 10, -3; 0, -1, 5]
b = input('Enter coefficients of B in a matrix: '); %input values of the matrix where like [6; 2; 3]
c = input('Enter in the unknown Voltages in a matrix form'); %input values of the matrix of Voltages as a magnitude 

%invesing the matrix A so that we get the voltages as a product x=A^-1*b
Inverse_of_matrix_A = inv(A);
fprintf('The inverse of A is: \n');
disp(Inverse_of_matrix_A);
%Calculating the determinant of matrix A so that the mixture of the values
%sum to a arbitary constant
%checking if the  determinant of Matrix A is not zero
determinantA = det(A);
if determinantA ~=0
    fprintf('Determinate of A is not Zero \n')