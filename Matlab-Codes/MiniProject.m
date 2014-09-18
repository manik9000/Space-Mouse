clc
char L;
delete(instrfind())

[x,y,z]=buildcube(2,5,13);
grid on
drawnow;
B=[252,236,253];
s = serial('COM6');
set(s,'BaudRate',2400, 'Parity','none', 'Terminator', 'w', 'InputBufferSize', 4500);

fopen(s);
while(1)
   
    A = fgetl(s);
    strlength = length(A);

    while strlength < 3
    A = fread(s,[1,3]);
    strlength = length(A);
    end
    A;
    
    for i=1:3
     error(i)=B(i)-A(i);
     if (error(i)< -225 || error(i)> 225)
         error(i)==0;
     
     end
     i=i+1;
    end
    
    error
    
    for i=1:3
     B(i)=A(i);
     i=i+1;
    end
    B;
    
   while ((error(1)>1 || error(2)>1 || error(3)>1) || (error(1)<-1 || error(2)<-1 || error(3)<-1))
    Mycuberotate(error(1),error(2),error(3));
     drawnow;
    break;
    delay();
   end
    j=j+1;
    end

    fclose(s);  
    delete(s)
    clear s
    
grid on
drawnow;
