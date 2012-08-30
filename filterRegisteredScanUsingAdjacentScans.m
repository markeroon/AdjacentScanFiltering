function [ f ] = ...
    filterRegisteredScanUsingAdjacentScans(scanOne, ... 
                                            combinedAdjacentScans, k )
% FilterRegisteredScanUsingAdjacentScans
%
% Filter scanOne using its adjacent scans (scanTwo and scanThree) which
% are preferably to the left and right of scanOne in the given co-ordinate
% system.
    
%combinedAdjacentScans = [scanTwo ; scanThree ; scanFour ; scanFive ];

 combinedTree = kdtree_build( combinedAdjacentScans );

sprintf( 'percentage completed' ) 
%d = kernelDensityEstimation( 
f = ones(length(scanOne),1);
for i=1:length(scanOne)
    f(i) = kernelDensityEstimateMex( ...
                            combinedTree, combinedAdjacentScans,...
                            scanOne, i,k );
    sprintf( '%f', i / length(scanOne) * 100 ) 
end
    
end

