function frames=createAnimation(images,masterlist)



    %make panel four sep images
    A=images(1:1024,1:1024);
    B=images(1:1024,1025:2048);
    C=images(1:1024,2049:3074);
    D=images(1:1024,3075:4096);
    
    hlp1=highlightPoint(A,masterlist(1,1),masterlist(1,2));
    hlp2=highlightPoint(B,masterlist(2,1),masterlist(2,2));
    hlp3=highlightPoint(C,masterlist(3,1),masterlist(3,2));
    hlp4=highlightPoint(D,masterlist(4,1),masterlist(4,2));
    
    figure(1),imshow(hlp1)
    hold on
    x=line([masterlist(1,1),masterlist(2,1)],[masterlist(1,2),masterlist(2,2)],'Color','g','LineStyle',':');
    y=line([masterlist(2,1),masterlist(3,1)],[masterlist(2,2),masterlist(3,2)],'Color','g','LineStyle',':');
    z=line([masterlist(3,1),masterlist(4,1)],[masterlist(3,2),masterlist(4,2)],'Color','g','LineStyle',':');
    hold off
    frames(1)=getframe;
    close
    
    figure(1),imshow(hlp2)
    hold on
    x=line([masterlist(1,1),masterlist(2,1)],[masterlist(1,2),masterlist(2,2)],'Color','g','LineStyle',':');
    y=line([masterlist(2,1),masterlist(3,1)],[masterlist(2,2),masterlist(3,2)],'Color','g','LineStyle',':');
    z=line([masterlist(3,1),masterlist(4,1)],[masterlist(3,2),masterlist(4,2)],'Color','g','LineStyle',':');
    hold off
    frames(2)=getframe;
    close
    
    figure(1),imshow(hlp3)
    hold on
    x=line([masterlist(1,1),masterlist(2,1)],[masterlist(1,2),masterlist(2,2)],'Color','g','LineStyle',':');
    y=line([masterlist(2,1),masterlist(3,1)],[masterlist(2,2),masterlist(3,2)],'Color','g','LineStyle',':');
    z=line([masterlist(3,1),masterlist(4,1)],[masterlist(3,2),masterlist(4,2)],'Color','g','LineStyle',':');
    hold off
    frames(3)=getframe;
    close
    
    figure(1),imshow(hlp4)
    hold on
    x=line([masterlist(1,1),masterlist(2,1)],[masterlist(1,2),masterlist(2,2)],'Color','g','LineStyle',':');
    y=line([masterlist(2,1),masterlist(3,1)],[masterlist(2,2),masterlist(3,2)],'Color','g','LineStyle',':');
    z=line([masterlist(3,1),masterlist(4,1)],[masterlist(3,2),masterlist(4,2)],'Color','g','LineStyle',':');
    hold off
    frames(4)=getframe;
    close
    
    figure(1),imshow(zeros(1024))
    
    movie(frames,10,2)
    
