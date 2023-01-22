function y = taylor_cos(x, X0, n)
    % Inicjalizuj wektor wyników
    y = zeros(size(x));
    p = zeros(1,n+1);

    % Iteruj po wszystkich argumentach
for k = 1:n+1     % pętla wyboru pochodnej cos
    if mod(k-1,4)==0
        p(k)=cos(X0);
    elseif mod(k-2,4)==0
        p(k)=(-sin(X0));
    elseif mod(k-3,4)==0
        p(k)=(-cos(X0));
    else
        p(k)=sin(X0);
    end
end

    for i = 1:numel(x)
        % Oblicz rozwinięcie szeregu Taylora dla danego argumentu
        y(i) = sum((p(1:n+1)).*((x(i) - X0).^((0:n)))./(factorial((0:n))));
    end