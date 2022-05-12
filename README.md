# SSEQ
Spatial Spectral Entropy-based Quality

# Usage
Running example.m on Matlab 

Input : Many test images loaded in an array

Output: A quality score of each image and a mean score. The score typically has a value
        between 0 and 100 (0 represents the best quality, 100 the worst).
  
Usage:

%1. Change the path of original images , for example
```shell
    Original_image_dir  =  'F:\ME4_11\RTTS\';
```

%2. Call this function to calculate the mean quality score:
```shell
    mSSEQ = mean(SSEQ_1);
```

%3. Save mSSEQ and SSEQ score array in the SSEQ_Real.mat file:
```shell
    save F:\ME4_11\SSEQ_Real.mat SSEQ_1 mSSEQ
```
# Dependencies: 

LibSVM package: 
    C.C. Chang, C.J. Lin. LIBSVM: a library for support vector machines. Available from: 
    ¡´http://www.csie.ntu.edu.tw/~cjlin/libsvm/¡µ, 2001.

MATLAB files: 
    SSEQ.m, SSQA_by_f.m, feature_extract.m, setscale.m, fecal.m, secal.m (provided with release)


## Refference
Lixiong Liu, Bao Liu, Hua Huang, and Alan Conrad Bovik, "No-reference Image Quality Assessment Based on Spatial and Spectral Entropies", Signal Processing: Image Communication, Vol. 29, No. 8, pp. 856-863, Sep. 2014.
