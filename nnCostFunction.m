function [J grad] = nnCostFunction(nn_params, ...
                                   input_layer_size, ...
                                   hidden_layer_size, ...
                                   num_labels, ...
                                   X, y, lambda)
%NNCOSTFUNCTION Implements the neural network cost function for a two layer
%neural network which performs classification
%   [J grad] = NNCOSTFUNCTON(nn_params, hidden_layer_size, num_labels, ...
%   X, y, lambda) computes the cost and gradient of the neural network. The
%   parameters for the neural network are "unrolled" into the vector
%   nn_params and need to be converted back into the weight matrices. 
% 
%   The returned parameter grad should be a "unrolled" vector of the
%   partial derivatives of the neural network.
%

% Reshape nn_params back into the parameters Theta1 and Theta2, the weight matrices
% for our 2 layer neural network
Theta1 = reshape(nn_params(1:hidden_layer_size * (input_layer_size + 1)), ...
                 hidden_layer_size, (input_layer_size + 1));

Theta2 = reshape(nn_params((1 + (hidden_layer_size * (input_layer_size + 1))):end), ...
                 num_labels, (hidden_layer_size + 1));

% Setup some useful variables
m = size(X, 1);
         
         
J = 0;
Theta1_grad = zeros(size(Theta1));
Theta2_grad = zeros(size(Theta2));



% FORWARD PROPOGATION
a1 = [ones(m,1) X];
z2 = (a1*Theta1');
a2 = [ones(size(z2,1),1) sigmoid(z2)];
h_theta = sigmoid(a2*Theta2');
a3 = h_theta;
y_matrix = eye(num_labels)(y,:);
J = (-sum(sum(y_matrix.*log(h_theta))) - sum(sum((1-y_matrix).*(log(1-h_theta)))))/m;

% REGULARIZATION
regularization_term = (lambda/(2*m))*((sum(sum(Theta1(:,2:end).^2))) + sum(sum(Theta2(:,2:end).^2)));
J = J + regularization_term;

% BACK PROPOGATION
d3 = a3 - y_matrix;                                             % has same dimensions as a3
d2 = (d3*Theta2).*[ones(size(z2,1),1) sigmoidGradient(z2)];     % has same dimensions as a2

D1 = d2(:,2:end)' * a1;    % has same dimensions as Theta1
D2 = d3' * a2;    % has same dimensions as Theta2

Theta1_grad = Theta1_grad + (1/m) * D1;
Theta2_grad = Theta2_grad + (1/m) * D2;


% REGULARIZATION OF THE GRADIENT

Theta1_grad(:,2:end) = Theta1_grad(:,2:end) + (lambda/m)*(Theta1(:,2:end));
Theta2_grad(:,2:end) = Theta2_grad(:,2:end) + (lambda/m)*(Theta2(:,2:end));




% -------------------------------------------------------------

% =========================================================================

% Unroll gradients
grad = [Theta1_grad(:) ; Theta2_grad(:)];


end
