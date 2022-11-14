    classdef Banks
        properties 
            % private properties
            Item1 = [] ;
            Item110 = [];
            loan_to_deposit = [];
            market_share = [];
         %% Banks
        
      
         name ='';
         code = '';
         August = '_2022-08-01.csv';
      July =  '_2022-08-01.csv';
June = '_2022-08-01.csv'


        end
        methods
           function obj = Banks(str,cd)
            if nargin > 0
              obj.name =str;
               obj.code = cd;
            end
            end
    %% Getters and setters
   function obj =  deposits(num)
       obj.Item1 = obj.Item1+num;
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
     % Getting csv data
     
%function read_June(obj)
% import data%
%strcat([obj.name][,'_Table']) = readtable(strcat([obj.name],[obj.June]));
%end

%function read_July(obj)
%   import data
%strcat(obj.name,'_Table') = readtable(strcat(obj.code,obj.June));
%end
%function read_August(obj)
%strcat(obj.name,'_Table') = readtable(strcat([obj.code],[obj.August]));
%end

        end
        end
