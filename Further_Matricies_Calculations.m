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
    fprintf('Determinate of A is not Zero \n');
    fprintf('The determinat of A is: \n');
    disp(determinantA);
else
    fprintf('Determinate of A is Zero \n');
end
% %calculating the inner demension of inverse A
% Inner_Dimension_of_inverse_A=size(Inverse_of_matrix_A);
% fprintf('The inner dimension of inverse of A: \n');
% % disp(Inner_Dimension_of_inverse_A);
% % %calculating the inner demension of matrix B
% % %so that it can be evaluated to inner demension of the Voltage matrix
% % Inner_Dimension_B=size(b);
% % fprintf('The inner dimension of B is: \n');
% % disp(Inner_Dimension_B);
Inner_Dimension_C=size(c);
fprintf('The inner dimension of c(before) is: \n');
disp(Inner_Dimension_C);
voltages =mtimes(Inverse_of_matrix_A,b);
I=size(voltages);
fprintf('The inner dimension of the calculated voltages(after) is: \n');
disp(I);
if I == Inner_Dimension_C 
fprintf('The inner dimension of inverse A * b is equal to the inner dimension of the unknown voltages\n');
fprintf('\nVoltage = (Inverse is A)*b: \n');
disp(voltages);
fprintf('where: V1 = First element, V2 = Second element V3 = Third element.\n');
else
    fprintf('The inner dimension of inverse A * b is not equal to the inner dimension of the unknown voltages\n')
end
