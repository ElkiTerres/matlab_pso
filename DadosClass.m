classdef DadosClass
    properties
        Matriz      % Um vetor por linha;
        NParam      % N�mero de par�metros de cada vetor;
        NVetores    % N�mero de vetores;
        Objetivo    % Vetor objetivo;
    end

    methods
        function obj = DadosClass(m, objetivo)
            obj.Matriz = m;
            tam = size(m);
            obj.NParam = tam(2);
            obj.NVetores = tam(1);
            obj.Objetivo = objetivo;
        end
    
        function obj = set.Matriz(obj, m)
            obj.Matriz = m;
            tam = size(m);
            obj.NParam = tam(2);
            obj.NVetores = tam(1);
        end
           
        function objetivo = get.Objetivo(obj)
            objetivo = obj.Objetivo;
        end
            
        function obj = set.Objetivo(obj, objetivo)
            obj.Objetivo = objetivo;
        end  
        
        function fit = fitness(obj, part)
            %Implemente uma fun��o fitness de minimiza��o (quanto mais
            %pr�ximo de 0 o resultado, melhor).
        end
    end
end