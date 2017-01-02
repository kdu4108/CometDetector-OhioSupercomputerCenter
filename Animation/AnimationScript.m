[rows,columns,levels]=size(images);
stackList=masterlist(:,:,:);
stackImages=images(:,:,:);
for count 1:levels
    images=stackImages(1,:,count);
    masterlist=stackList(1,:,count);
    createAnimation(images,masterlist)
