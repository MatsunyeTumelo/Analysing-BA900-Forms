% Testing sorting algorithm
 A = Banks('A','2');
    B = Banks('B','3');
     C = Banks('C','4');
      
           Array = [A B C];
         
          % Assigning a market share value to objcts
          for i=1: length(Array)
              Array(i).market_share=length(Array)+i;
          end
          %Bubble sort algorithm 1. Highest market share Descending order
 for i = 1 : length(Array)
       for j = 1 : length(Array)-i
           if(Array(j).market_share < Array(j+1).market_share)
               temp = Array(j);
               Array(j) = Array(j+1);
               Array(j+1) = temp;
           end           
       end
 end
 
%% Test 1: order correctly
assert(Array(1).name =='C') %'Value of biggest market share at the top'

%% Test 2: Middle correct
assert(Array(2).name =='B')

%% Test 3: Bottom correctly
assert(Array(3).name =='A')    %'Value of smallest market share at the bottom'

 
% Testing LDR method  
     
   
  %% 4 Test : Dot Division done correctly
   A.Item1 = [24 44 54]; A.Item110 = [12 22 9];
          B.Item1 = [ 30 2 60]; B.Item110 = [5 10 3]; 
           C.Item1 = [360 270 30];  C.Item110 = [45 90 180];
          
   A.loan_to_deposit = LDR(A.Item110,A.Item1);
   B.loan_to_deposit = LDR(B.Item110,B.Item1);
   C.loan_to_deposit = LDR(C.Item110,C.Item1);
   
  assert(A.loan_to_deposit(1) == 0.5000);
  assert(B.loan_to_deposit(2) == 5);
  assert(C.loan_to_deposit(3) == 6);
  
  
  