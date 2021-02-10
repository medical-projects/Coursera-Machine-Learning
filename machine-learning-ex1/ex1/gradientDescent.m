function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
	h=X*theta;
	J=h-y;
	temp0=J.*X(:,1);
	temp0=temp0*alpha/m;
	temp0=sum(temp0);
	temp1=J.*X(:,2);
	temp1=temp1*alpha/m;
	temp1=sum(temp1);
	theta(1,1)=theta(1,1)-temp0;
	theta(2,1)=theta(2,1)-temp1;
	j_history=computeCost(X, y, theta);
	





    % ============================================================

    % Save the cost J in every iteration    
   % J_history(iter) = computeCost(X, y, theta);

end

end
