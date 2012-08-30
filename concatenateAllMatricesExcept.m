% matrixCell is a nx1 cell of matrices
% i is an integer
function [r] = concatenateAllMatricesExcept( i, matrixCell )
    matrixCell{i} = [];
    r = cell2mat( matrixCell );
end