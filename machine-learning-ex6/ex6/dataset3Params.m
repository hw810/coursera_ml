function [C, sigma] = dataset3Params(X, y, Xval, yval)
%EX6PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = EX6PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

## min_error = 1;
## optimal_c = nan;
## optimal_s = nan;
## candidate_list = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];
## res_stats = nan(length(candidate_list), 3);
## counter = 0;
## for c = candidate_list
##     for s = candidate_list
## 	counter = counter + 1;
## 	model= svmTrain(X, y, C, @(x1, x2) gaussianKernel(x1, x2, s)); 
## 	prediction = svmPredict(model, Xval);
## 	error = mean(double(prediction ~= yval));
## 	res_stats(counter,:) = [error, c, s];
## 	if error < min_error
## 	   min_error = error;
## 	   optimal_s = s;
## 	   optimal_c = c;
## 	end
##     end
## end 

## res_stats

## C = optimal_c
## sigma = optimal_s

C = 1;
sigma = 0.1;


% =========================================================================

end
