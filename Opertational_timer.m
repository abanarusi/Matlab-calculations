clc
clear all
close all

%input candidate number
Candidate_number = input('Enter in your candidate number: ');
%Using for loop method to calculate the sum of the series
fprintf('For the First sequence using for loop: \n'); %First Sequence 
tic %Start of stop watch
S = zeros(1,Candidate_number);
for i=1:Candidate_number
    S(i) =i^2;
end
fprintf('The time it took: \n');
Sum =sum(S);
toc %End of Stop watch
fprintf('Sum of the sequence: \n');
disp(Sum);
fprintf('For the Second sequence using for loop: \n'); %Second Sequence
S = zeros(1,Candidate_number);
tic %Start of stop watch
for i=1:Candidate_number
    S(i) = ((-1).^(i+1))./(i);
end
fprintf('The time it took: \n');
Sum =sum(S);
toc %End of Stop watch
fprintf('Sum of the sequence: \n');
disp(Sum);
%Using for vectorisation method to calculate the sum of the series
fprintf('For the First sequence using Vectorisation: \n'); %First Sequence 
tic %Start of stop watch
S=(1:1:Candidate_number).^2;
fprintf('The time it took: \n');
Sum =sum(S);
toc %End of Stop watch
fprintf('Sum of the sequence: \n');
disp(Sum);
fprintf('For the Second sequence using Vectorisation: \n'); %Second Sequence
tic %Start of stop watch
i=1:1:Candidate_number;
S = 1./((1:Candidate_number).*(-1).^(i+1));
Sum =sum(S);
fprintf('The time it took: \n');
toc %End of Stop watch
fprintf('Sum of the sequence: \n');
disp(Sum);