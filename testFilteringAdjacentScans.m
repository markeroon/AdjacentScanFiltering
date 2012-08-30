addpath( genpath('filtering') );
addpath( 'kdtree-mex' );

scanOne = [ 10      11      12 ;
            11      101      12 ;
            103      11      12 ;
            10      0       1001];
        
scanTwo = [ 10.1    11.1    12.1 ;
            10.1    10.9    11.9 ;
            10.0001 11      12.0001 ];
        

scanThree = [10     10.999      12 ;
             10     11      12 ;
             10     11.0001      12 ];
         
% test filtering of scan one
d = filterRegisteredScanUsingAdjacentScans( scanOne, scanTwo, scanThree );

assert( d(1) > d(3) );

