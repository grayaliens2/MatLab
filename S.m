function m = S(n)%function called s
m = zeros(n)
y = n
for i = 1 : n%loop goes from 1 to n
    j = 1 : n%unlike the instructions we are going to save alot of time by using 
    % list comrehension
    %instead of nested loops 
    m(i, j) = sqrt(2/n)*sin((pi*(i-1/2)*(j-1/2))/n) 
end
end
