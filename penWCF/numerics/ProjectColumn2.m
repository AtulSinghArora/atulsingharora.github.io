function x = ProjectColumn2(v, P)
    k = length(v);
    objective = @(x) 0.5 * norm(x - v)^2; % Directly use norm
    A = -P;
    b = zeros(size(P,1), 1);
    options = optimoptions('fmincon', 'Display', 'off');
    x = fmincon(objective, v, A, b, [], [], [], [], [], options);
end
