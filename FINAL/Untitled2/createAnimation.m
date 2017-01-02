function frames=createAnimation(images,masterlist)



    %make panel four sep images
    A = images(:,:,1);
    B = images(:,:,2);
    C = images(:,:,3);
    
    hlp1=highlightPoint(A,masterlist(1,1),masterlist(1,2));
    hlp2=highlightPoint(B,masterlist(2,1),masterlist(2,2));
    hlp3=highlightPoint(C,masterlist(3,1),masterlist(3,2));
    %hlp4=highlightPoint(D,masterlist(4,1),masterlist(4,2));
    
    figure(1),imshow(hlp1)
    frames(1)=getframe;
    hold on
    x=line([masterlist(1,1),masterlist(2,1)],[masterlist(1,2),masterlist(2,2)],'Color','g','LineStyle',':');
    y=line([masterlist(2,1),masterlist(3,1)],[masterlist(2,2),masterlist(3,2)],'Color','g','LineStyle',':');
    %z=line([masterlist(3,1),masterlist(4,1)],[masterlist(3,2),masterlist(4,2)],'Color','g','LineStyle',':');
    hold off
    frames(4)=getframe;
    close
    
    figure(1),imshow(hlp2)
    frames(2)=getframe;
    hold on
    x=line([masterlist(1,1),masterlist(2,1)],[masterlist(1,2),masterlist(2,2)],'Color','g','LineStyle',':');
    y=line([masterlist(2,1),masterlist(3,1)],[masterlist(2,2),masterlist(3,2)],'Color','g','LineStyle',':');
    %z=line([masterlist(3,1),masterlist(4,1)],[masterlist(3,2),masterlist(4,2)],'Color','g','LineStyle',':');
    hold off
     frames(5)=getframe;
    close
    
    figure(1),imshow(hlp3)
    frames(3)=getframe;
    hold on
    x=line([masterlist(1,1),masterlist(2,1)],[masterlist(1,2),masterlist(2,2)],'Color','g','LineStyle',':');
    y=line([masterlist(2,1),masterlist(3,1)],[masterlist(2,2),masterlist(3,2)],'Color','g','LineStyle',':');
    %z=line([masterlist(3,1),masterlist(4,1)],[masterlist(3,2),masterlist(4,2)],'Color','g','LineStyle',':');
    hold off
    frames(6)=getframe;
    close
    
% %     figure(1),imshow(hlp4)
% %     hold on
% %     x=line([masterlist(1,1),masterlist(2,1)],[masterlist(1,2),masterlist(2,2)],'Color','g','LineStyle',':');
% %     y=line([masterlist(2,1),masterlist(3,1)],[masterlist(2,2),masterlist(3,2)],'Color','g','LineStyle',':');
% %     %z=line([masterlist(3,1),masterlist(4,1)],[masterlist(3,2),masterlist(4,2)],'Color','g','LineStyle',':');
% %     hold off
% %     frames(4)=getframe;
% %     close
    
%     imshow(hlp1);
%     frames(1) = getframe;
%     imshow(hlp2);
%     frames(2) = getframe;
%     imshow(hlp3);
%     frames(3) = getframe;
    figure(1),imshow(zeros(1024))
    
    movie(frames,100,2)
    
