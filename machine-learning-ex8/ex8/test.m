n = 3;
m = 4;
Y = [1;2;3];
BT = [1;2;3;4];
X = [1,2,3,4; 5,6,7,8; 9,10,11,12];

right = sum( log( 1+ exp(X*BT) ) )

left = 0;
for i = 1:n
    left = left + log( 1+exp(X(i,:) * BT) );
end
left

left == right


right = Y' * X * BT

left = 0;
for i = 1:n
    left = left + Y(i) * X(i,:) * BT;
end
left