function [j, grad] = costFunction(theta, x, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

%disp(x)
%disp(theta)

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
%
% Note: grad should have the same dimensions as theta
%
h=sigmoid(x*theta);
j=-y'*log(h)-(1-y)'*log(1-h);
j=j/m;

%printf("h is");
%disp(h)
%printf("y is");
%disp(y)
%printf("x is");
%disp(x)

%grad = (1 / m) * (h - y)' * x; -> This is the vectorized implementation

%temp=x(:,2);

%printf("x(:,2) 2nd column of x ");
%disp(temp);

for i=1:size(theta),
	grad(i)=sum((h-y).*x(:,i))/m;
	end;
%printf("grad after is");
%disp(grad)
% =============================================================
%plot(h,x)

end