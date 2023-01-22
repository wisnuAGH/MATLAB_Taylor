function taylor_test(x, X0)
    % Zdefiniuj wektor n
    n_values = 1:20;
    
    % Inicjalizuj wektor błędów
    errors = zeros(size(n_values));
    
    for i = 1:numel(n_values)
        % Oblicz wartości funkcji rozwinięcia szeregu Taylora dla każdego argumentu
        y_taylor = taylor_cos(x, X0, n_values(i));
        
        % Oblicz błąd kwadratowy dla każdego argumentu
        errors(i) = mean((y_taylor - cos(x)).^2);
    end

% Rysuj wykres błędu w funkcji n
subplot(1,2,2); plot(n_values, errors);
xlabel('n');
ylabel('Średni błąd kwadratowy');
title('Średni błąd kwadratowy');
end
