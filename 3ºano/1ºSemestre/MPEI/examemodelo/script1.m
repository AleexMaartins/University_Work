% representar matriz T
%   1 2 3 4 5 META
% 1
% 2
% 3
% 4
% 5
% META
T = [0     0 0     0     0      0
     0.2   0 0     0     0      0
     0     0 0     0.1   0.45   0
     0     0 0.3   0     1-0.45 0
     1-0.2 1 1-0.3 0     0      0
     0     0 0     1-0.1 0      1]

% Cálculo da probabilidade do caminho mais curto de 1 para META (6) que é 1,5,4,META
prob_1_to_5 = T(5,1)
prob_5_to_4 = T(4,5);
prob_4_to_META = T(6,4);
prob_path = prob_1_to_5 * prob_5_to_4 * prob_4_to_META;

% Cálculo do número médio de passos do início ao fim do jogo (incluindo o início e o fim)
Q = T(1:5,1:5);
F = inv(eye(5) - Q);
initial_state = [1 0 0 0 0]';
average_steps = sum(F * initial_state)
