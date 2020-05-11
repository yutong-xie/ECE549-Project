
clear all;
close all;

gt_path='../datasets/test/Rain800/';

PReNet = '../results/Rain800/PReNet/';
PReNet_r = '../results/Rain800/PReNet_r/';
PRN = '../results/Rain800/PRN/';
PRN_r = '../results/Rain800/PRN_r/';

struct_model = {
          struct('model_name','PReNet','path',PReNet),...
          struct('model_name','PReNet_r','path',PReNet_r),...
          struct('model_name','PRN','path',PRN),...
          struct('model_name','PRN_r','path',PRN_r),...
    };


nimgs=100;nrain=1;
nmodel = length(struct_model);

psnrs = zeros(nimgs,nmodel);
ssims = psnrs;

for nnn = 1:nmodel

    tp=0;ts=0;te=0;
    nstart = 0;
    for iii=nstart+1:nstart+nimgs
        for jjj=1:nrain
            %         fprintf('img=%d,kernel=%d\n',iii,jjj);
            x_true = im2double(imread(fullfile(gt_path,sprintf('%01d.jpg',iii))));%x_true
            shape = size(x_true);
            w = shape(2);
            x_true = x_true(:,1:floor(w/2),:);
            x_true = rgb2ycbcr(x_true);x_true=x_true(:,:,1);


            %%
            x = (im2double(imread(fullfile(struct_model{nnn}.path,sprintf('%01d.jpg',iii)))));
            x = rgb2ycbcr(x);x = x(:,:,1);
            tp = mean(psnr(x,x_true));
            ts = ssim(x*255,x_true*255);

            psnrs(iii-nstart,nnn)=tp;
            ssims(iii-nstart,nnn)=ts;

            %
        end
    end

    fprintf('%s: psnr=%6.4f, ssim=%6.4f\n',struct_model{nnn}.model_name,mean(psnrs(:,nnn)),mean(ssims(:,nnn)));

end
