function x = gauss_seidel(A, b, x0, tol, max_iter)
  n = length(b);
  x = x0;

  for k = 1:max_iter
    x_old = x;
    for i = 1:n
      soma1 = A(i,1:i-1) * x(1:i-1);    
      soma2 = A(i,i+1:n) * x_old(i+1:n); 
      x(i) = (b(i) - soma1 - soma2) / A(i,i);
    end
    
    if norm(x - x_old, inf) < tol
      fprintf("Convergiu em %d iterações\n", k);
      return;
    end
    
    x_prev = x;
  end

  fprintf("Não convergiu em %d iterações\n", max_iter);
end

 
