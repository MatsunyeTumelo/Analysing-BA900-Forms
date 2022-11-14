    % Create Bank Objects
    NedBank = Banks('Nedank','416088');
    Capitec = Banks('Capitec','333107');
    Investec = Banks('Investec','25054');
    ABSA = Banks('ABSA','34118');
    FNB = Banks('FNB','416053');
    StanB =  Banks('Standard Bank','416061');
    

    %Dates
    August = '_2022-08-01.csv';
    July =  '_2022-07-01.csv';
    June = '_2022-06-01.csv';

    %% Reading Data June:
    Captc_June = readtable(strcat(Capitec.code, June));
  %  Captc_June(1,9);
    Capitec.Item1=  1.4086e+08;
    Capitec.Item110 =9.6326e+07;

    Investc_June = readtable(strcat(Investec.code, June));
    %Investc_June(1,9)
    Investec.Item1 =   3.8973e+08;
    %Investc_June(120,7)
    Investec.Item110 =  3.6892e+08;

    ABSA_June =readtable(strcat(ABSA.code, June));
   % ABSA_June(1,9);
    ABSA.Item1  = 1.0844e+09;
    ABSA.Item110 =  1.0877e+09;
    
    FNB_June =readtable(strcat(FNB.code, June));
    FNB.Item1 = 1.1052e+09;
    FNB.Item110 =  9.6067e+08;
    
    StanB_June =readtable(strcat(StanB.code, June));
    StanB.Item1 = 1.1934e+09;
    StanB.Item110 = 1.1896e+09;
    
    NedB_June =readtable(strcat(NedBank.code, June));
    NedBank.Item1 = 8.995e+08;
    NedBank.Item110 = 8.3846e+08;
    
    %%  July:
    Captc_July = readtable(strcat(Capitec.code, July));
    Capitec.Item1=  [Capitec.Item1 1.4086e+08];
    Capitec.Item110=  [Capitec.Item110 9.6326e+07];
    
    Investc_July = readtable(strcat(Investec.code, July));
    Investec.Item1 = [Investec.Item1 9.8414e+07];
    Investec.Item110 = [Investec.Item110 3.7265e+08];
    
    ABSA_July =readtable(strcat(ABSA.code, July));
    ABSA.Item1  =  [ABSA.Item1  1.1203e+09];
     %ABSA_July(120,7)
    ABSA.Item110 = [ABSA.Item110 1.0896e+09];
    
    FNB_July =readtable(strcat(FNB.code, July));
    FNB.Item1 = [FNB.Item1 1.1052e+09];
    FNB.Item110 = [FNB.Item110  9.6538e+08];
    
    StanB_July =readtable(strcat(StanB.code, July));
    StanB.Item1 =  [StanB.Item1 1.1934e+09];
    StanB.Item110 =  [StanB.Item110 1.1658e+09];
      
    NedB_July =readtable(strcat(NedBank.code, July));
    NedBank.Item1 = [NedBank.Item1 8.995e+08];
    NedBank.Item110 = [NedBank.Item110 8.2288e+08];
      
    %% August:
    Captc_Aug = readtable(strcat(Capitec.code, August));
    Capitec.Item1=  [Capitec.Item1 1.4086e+08];
    Capitec.Item110=   [Capitec.Item110 9.6326e+07];
    
    Investc_Aug = readtable(strcat(Investec.code, August));
    Investec.Item1 = [Investec.Item1 9.8414e+07];
    Investec.Item110= [Investec.Item110 3.8213e+08];

    ABSA_Aug =readtable(strcat(ABSA.code, August));
    ABSA.Item1  =  [ABSA.Item1  1.1203e+09];
    ABSA.Item110 = [ABSA.Item110 1.1342e+09];

    FNB_Aug =readtable(strcat(FNB.code, August));
    FNB.Item1 = [FNB.Item1 1.1052e+09];
    FNB.Item110 = [FNB.Item110 9.4821e+08];
    
    StanB_Aug =readtable(strcat(StanB.code, August));
    StanB.Item1 =  [StanB.Item1 1.1934e+09];
    StanB.Item110 =  [StanB.Item110   1.1583e+09];
                                 
    NedB_Aug =readtable(strcat([NedBank.code], August));
    NedBank.Item1 = [NedBank.Item1 8.995e+08];
    NedBank.Item110 = [NedBank.Item110 1.1583e+09];
    
   %%   % 3. Loan to depoosit ratio in each month

   Capitec.loan_to_deposit = Capitec.Item110./Capitec.Item1;
   Investec.loan_to_deposit = Investec.Item110./Investec.Item1;
   ABSA.loan_to_deposit = ABSA.Item110./ABSA.Item1;
   FNB.loan_to_deposit =FNB.Item110./FNB.Item1;
   StanB.loan_to_deposit = StanB.Item110./StanB.Item1;
   NedBank.loan_to_deposit = NedBank.Item110./NedBank.Item1;   
   
   %% 2. Sort in terms of market share
   List = [ABSA Capitec Investec FNB StanB NedBank];
  
   for i=1 : length(List)
       List(i).market_share = List(i).Item1(3)/sum(List(i).Item1);
   end
   
  disp('List of Banks');
      for i = 1 : length(List)
          disp(i);
      disp(List(i).name);
      disp(List(i).market_share);
      end
      
   for i = length(List) : 1 
       for j = length(List) : length(List)-i
           if(List(j).market_share> List(j+1).market_share)
               temp = List(j);
               List(j) = List(j+1)
               List(j+1) = temp;
           end
       end
   end
   
  disp('Sorted List of Banks');
  for i = 1 : length(List)
      disp(List(i).name);
      disp(List(i).market_share);
  end
 
   
   