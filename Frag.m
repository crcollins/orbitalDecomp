classdef Frag < handle
    %UNTITLED2 Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        orb  % (iatomic,imolecular) MO's of this fragment
        Eorb % (1,imolecular)
        nonLinking % range of orbitals that are not link atoms (2:5 etc)
    end
    
    methods
        function res = Frag(orb,Eorb)
            res.orb = orb;
            res.Eorb = Eorb;
        end
        function res = nonLinkOrbs(obj)
            res = obj.orb(obj.nonLinking,:);
        end
    end
    
end

