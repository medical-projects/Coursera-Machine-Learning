function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);
min=ones(size(X,1), 1)*9999;
dist=0;

%printf("X is\n")
%disp(X);

%printf("centroids is\n")
%disp(centroids);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

for point=1:size(X,1),
	for i=1:K,
		%printf("centroids(i,1) is")
		%disp(centroids(i,1));
		%printf("centroids(i)(2) is")
		%disp(centroids(i,2));
		%printf("X(point)(1) is")
		%disp(X(point,1));
		%printf("X(point)(2) is")
		%disp(X(point,2));
		for temp=1:size(X,2),
			dist=dist+(X(point,temp)-centroids(i,temp))*(X(point,temp)-centroids(i,temp));
		end;
		if dist<min(point),
			min(point)=dist;
			idx(point)=i;
		end;
		dist=0;
	end;
end;


% =============================================================

end

