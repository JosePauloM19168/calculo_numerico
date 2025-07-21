function x = gauss_jacobi(A, b, x0, tol, max_iter)
  n = length(b);
  x = x0;
  x_prev = x0;

  for k = 1:max_iter
    for i = 1:n
      soma = 0;
      for j = 1:n
        if j != i
          soma += A(i,j) * x_prev(j);
        end
      end
      x(i) = (b(i) - soma) / A(i,i);
    end

    if norm(x - x_prev, inf) < tol
      fprintf("Convergiu em %d iterações\n", k);
      return;
    end

    x_prev = x;
  end

  fprintf("Não convergiu em %d iterações\n", max_iter);
end
