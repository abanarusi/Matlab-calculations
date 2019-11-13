function area = triangle_area(x1,y1,x2,y2,x3,y3) 
Length_a = sqrt((x1-x2)^2+(y1-y2)^2); %length from point 1 to point 2
disp(['The length from point 1 to point 2 is: ',num2str(Length_a)]);
Length_b = sqrt((x1-x3)^2+(y1-y3)^2); %length from point 1 to point 3
disp(['The length from point 1 to point 3 is: ',num2str(Length_b)]);
Length_c = sqrt((x3-x2)^2+(y3-y2)^2); %length from point 3 to point 2
disp(['The length from point 3 to point 2 is: ',num2str(Length_c)]);
s=(Length_a+Length_b+Length_c)/2;
disp(['The s value is: ',num2str(s)]);
%using the s variable, area is evaluated through the equation
area=sqrt(s*(s-Length_a)*(s-Length_b)*(s-Length_c));
end
