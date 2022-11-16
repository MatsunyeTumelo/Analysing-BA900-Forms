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
    %Captc_June = readtable(strcat(Capitec.code, June));
    %  Captc_June(1,9);
    Capitec.Item1=  139849531;
    Capitec.Item110 =96311762;

    % Investc_June = readtable(strcat(Investec.code, June));
    %Investc_June(1,9)
    Investec.Item1 =   3.8973e+08;
    %Investc_June(120,7)
    Investec.Item110 =  3.6892e+08;

    %ABSA_June =readtable(strcat(ABSA.code, June));
    % ABSA_June(1,9);
    ABSA.Item1  = 1.0844e+09;
    ABSA.Item110 =  1.0877e+09;

    %FNB_June =readtable(strcat(FNB.code, June));
    FNB.Item1 = 1.1108e+09;
    FNB.Item110 =  9.6067e+08;

    %StanB_June =readtable(strcat(StanB.code, June));
    StanB.Item1 = 1161486542;
    StanB.Item110 = 1.1896e+09;

    %NedB_June =readtable(strcat(NedBank.code, June));
    NedBank.Item1 = 894307034;
    NedBank.Item110 = 838464912;

    %%  July:
    %Captc_July = readtable(strcat(Capitec.code, July));
    Capitec.Item1=  [Capitec.Item1 142275225];
    Capitec.Item110=  [Capitec.Item110 99590199];

    %Investc_July = readtable(strcat(Investec.code, July));
    Investec.Item1 = [Investec.Item1 411560625];
    Investec.Item110 = [Investec.Item110 3.7265e+08];

    % ABSA_July =readtable(strcat(ABSA.code, July));
    ABSA.Item1  =  [ABSA.Item1  1100301757];
    %ABSA_July(120,7)
    ABSA.Item110 = [ABSA.Item110 1.0896e+09];

    %FNB_July =readtable(strcat(FNB.code, July));
    FNB.Item1 = [FNB.Item1 1110815432];
    FNB.Item110 = [FNB.Item110  9.6538e+08];

    %StanB_July =readtable(strcat(StanB.code, July));
    StanB.Item1 =  [StanB.Item1 1171039113];
    StanB.Item110 =  [StanB.Item110 1.1658e+09];

    % NedB_July =readtable(strcat(NedBank.code, July));
    NedBank.Item1 = [NedBank.Item1 913385099];
    NedBank.Item110 = [NedBank.Item110 822876527];

    %% August:
    %Captc_Aug = readtable(strcat(Capitec.code, August));
    Capitec.Item1=  [Capitec.Item1 913385099];
    Capitec.Item110=   [Capitec.Item110 9.6326e+07];

    %Investc_Aug = readtable(strcat(Investec.code, August));
    Investec.Item1 = [Investec.Item1 397677060];
    Investec.Item110= [Investec.Item110 3.8213e+08];

    %ABSA_Aug =readtable(strcat(ABSA.code, August));
    ABSA.Item1  =  [ABSA.Item1  1.1203e+09];
    ABSA.Item110 = [ABSA.Item110 1.1342e+09];

    %FNB_Aug =readtable(strcat(FNB.code, August));
    FNB.Item1 = [FNB.Item1 1.1052e+09];
    FNB.Item110 = [FNB.Item110 9.4821e+08];

    %  StanB_Aug =readtable(strcat(StanB.code, August));
    StanB.Item1 =  [StanB.Item1 1.1934e+09];
    StanB.Item110 =  [StanB.Item110   1.1583e+09];

    % NedB_Aug =readtable(strcat([NedBank.code], August));
    NedBank.Item1 = [NedBank.Item1 8.995e+08];
    NedBank.Item110 = [NedBank.Item110 825087817];

    %% Other analyses

    NedBank.liab = [1081823426 1069971280 1054963980];
    NedBank.assets =[1160460883 1149192622 1131741845];

    Capitec.liab = [148052616 151670819 148618863];
    Capitec.assets = [179136862 183318247 180910855];


    Investec.liab = [466574968 476857341 493810664];
    Investec.assets =[505404755 515626393 533610493];

    ABSA.liab = [1367395532 1355118552 1410457212];
    ABSA.assets =[1467232161 1456516923 1507678944];

    FNB.liab = [1376532580 1389143195.752 1388897179.6732];
    FNB.assets =[1479773817 1495278818 1496235128] ;

    StanB.liab = [1599732444 1585963595 1591802252];
    StanB.assets =[1705335903 1693200288 1696765896 ];

    %% Storing banks in an array

    List = [ABSA Capitec Investec FNB StanB NedBank];

    %% 2. Sort in terms of market share
    
    TOTAL_deposits = 0;
    for i=1 : length(List)
        TOTAL_deposits =  TOTAL_deposits + sum(List(i).Item1);
    end
    
    % Market share
    for i=1 : length(List)
        List(i).market_share = sum(List(i).Item1)/TOTAL_deposits;
    end

    disp('List of Banks');
    for i = 1 : length(List)
        disp(i);
        disp(List(i).name);
        disp(List(i).market_share);
    end
   % Bubble sort algorithm:
    for i = 1 : length(List)
        for j = 1 : length(List)-i
            if(List(j).market_share < List(j+1).market_share)
                temp = List(j);
                List(j) = List(j+1);
                List(j+1) = temp;
            end
        end
    end

    disp('Sorted List of Banks');

    for i = 1 : length(List)
        disp(List(i).name);
        disp(List(i).market_share);
    end

    %{
            figure
             Y = [23 21.8 21 17 7.86 7.83];
             X = categorical({'StanB'; 'FNB'; 'ABSA' ;'NEDBANK' ;'INVESTC'; 'CAPITC'});
             X = reordercats(X,{'StanB'; 'FNB'; 'ABSA' ;'NEDBANK' ;'INVESTC'; 'CAPITC'});
             bar(X,Y)
            title('Market share value')
            %xlabel('Banks')
            ylabel('Market share(%)')

    %}

    %%   3. Loan to depoosit ratio in each month

    for i =1 : length(List)
        List(i).loan_to_deposit = LDR(List(i).Item110,List(i).Item1);
    end
    
    %% 4. Other Analyses Net Worth:
    for i = 1 : length(List)
        List(i).Net_worth = minus(List(i).assets,List(i).liab);
    end

    % Avg Net worth
    disp('Average Net Worth')
    for i = 1 : length(List)
        disp(List(i).name);
        disp(sum(List(i).Net_worth)/3);
    end
    
    %% Run Tests
     result = runtests('BA900Tests');
     rt = table(result);