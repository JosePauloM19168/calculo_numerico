function raiz = bissecao(f, a, b, aux)

  while true
    c = (a + b) / 2;

    if (b - c) <= aux
      raiz = c;
      return;
    endif

    if f(b) * f(c) < 0
      a = c;
    else
      b = c;
    endif
  endwhile
endfunction
