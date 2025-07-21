function raiz = newton_raphson(f, df, x0, aux, max_iter)
    phi = @(x) x - f(x)/df(x);  

    k = 0;
    while k < max_iter
        x1 = phi(x0);
        if (f(x1)) <= aux || (x1 - x0) <= aux
            raiz = x1;
            return;
        endif
        x0 = x1;
        k = k + 1;
    endwhile

    fprintf("Não convergiu após %d iterações.", max_iter);
end
