function raiz = falsa_posicao(f, a, b, aux)

  while true
    c = (f(b)*a - f(a)*b) / (f(b) - f(a));

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
