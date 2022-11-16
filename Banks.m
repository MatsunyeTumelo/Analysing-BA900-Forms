    classdef Banks
        properties 
            Item1 = [] ; %Deposits
            Item110 = []; %Loans
            loan_to_deposit = [];
            market_share = [];
            assets =[];
            liab = []; %Total Liabilities
            Net_worth = []
         % NAME & CODE variables
          name ='';
         code = '';
        end
        methods
             %Object constructor
           function obj = Banks(str,cd)              
            if nargin > 0
              obj.name =str;
               obj.code = cd;
            end
            end
    %% Getters and setters
   function obj =  deposits(obj,num)
       obj.Item1 = [obj.Item1 num];
    end
    function obj = loans(num)
       obj.Item110 = num;
    end
    function r  = getDeposits(obj)
        r = obj.Item1;
    end  
   function r = getLoans(obj)
    r  = obj.Item1;
   end
        end
    end
