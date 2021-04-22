%1. Load the image, for example
    Original_image_dir  =    'F:\ME4_11\RTTS\';
    fpath = fullfile(Original_image_dir, '*.png');
    im_dir  = dir(fpath);
    im_num = length(im_dir);
    %fprintf('%d',im_num);
    SSEQ_1 = [];
%2. Call this function to calculate the quality score:
    for i = 1:im_num
    %% read clean image
        IMname = regexp(im_dir(i).name, '\.', 'split');
        IMname = IMname{1};
        path = fullfile(Original_image_dir, im_dir(i).name);
        image =imread(path);
        feature=feature_extract(image,3);
        score=SSQA_by_f(feature);
        %qualityscore = SSEQ(image);
        SSEQ_1 = [SSEQ_1 score];
    end
    mSSEQ = mean(SSEQ_1);
    fprintf('The average sseq = %2.4f. \n', mSSEQ);
    save F:\ME4_11\SSEQ_Real.mat SSEQ_1 mSSEQ