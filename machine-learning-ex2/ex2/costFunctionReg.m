function [j, grad] = costFunctionReg(theta, x, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

%disp(x);
%disp(theta);

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
j = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

h=sigmoid(x*theta);
j=-y'*log(h)-(1-y)'*log(1-h);
j=j/m;
j=j+((lambda*(sum(theta'*theta)-theta(1)'*theta(1)))/(2*m));

%print('it is h-y value:');
%disp((h-y));
%print('it is grad value:');
grad(1)=sum((h-y).*x(:,1))/m;
for i=2:size(theta),
	grad(i)=(sum((h-y).*x(:,i))+lambda*theta(i))/m;
	end;

%disp(grad);
% =============================================================

end
