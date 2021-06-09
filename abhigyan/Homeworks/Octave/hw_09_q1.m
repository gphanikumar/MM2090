A = rand(100);
B = zeros(100);
for iterator = 1:50
  for i = 2:size(A,1)-1
    for j = 2:size(A,2)-1
      B(i,j) = A(i,j) + 0.2*(A(i+1,j) + A(i-1,j) + A(i,j+1) + A(i,j-1) - 4*A(i,j));
    end;
  end;
  A = B;
  pcolor(A)
end;