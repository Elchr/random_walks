clc; clear;

 %Random Walks 1D - Monte Carlo
 
for n=1:100000              %Creation of 100000 particles
     thesi(n)=0;            %Position in the begining (0,0)
       for i=1:10           %Each particle moves 10 steps
          x=rand();         %Random number generation for the direction of the particle (left or right?)
                 if x<0.5 
                    thesi(n)=thesi(n)-0.5;    %Move left
                 elseif x>=0.5
                    thesi(n)=thesi(n)+0.5;    %Move right
                 end
           i=i+1;
       end
      n=n+1;
end

histogram(thesi) %Histogram (number of partcles - final position) 
title('Random Walks - Monte Carlo');
xlabel('Displacement x');
ylabel('Number of particles');

hold on
for n=1:100000               
     thesi2(n)=0;            
       for i=1:100           %Each particle moves 10 steps
          x=rand();          
                 if x<0.5 
                    thesi2(n)=thesi2(n)-0.5;    
                 elseif x>=0.5
                    thesi2(n)=thesi2(n)+0.5;   
                 end
           i=i+1;
       end
      n=n+1;
end
histogram(thesi2)
legend('10 random moves/particle','100 random moves/particle');
