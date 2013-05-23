classdef Decomposition < handle
   properties
      full % Frag object for the full molecule
      frags % cell array of fragments that make up the molecule
      %  have to be in the same order as in the full
      olaps % cell array of overlap matrices  (mo_frag,mo_full)
   end
   methods
      function obj = Decomposition(full,frags)
         obj.full = full;
         obj.frags = frags;
         curr = 1; % current position in the full molecule
         for ifrag = 1:length(obj.frags);
            f1 = obj.frags{ifrag};
            fragOrbs = f1.nonLinkOrbs; % (atomic, molecular)
            rangeInFull = curr:(curr+size(fragOrbs,1)-1);
            fullOrbs = obj.full.orb(rangeInFull,:);
            obj.olaps = fragOrbs' * fullOrbs;
         end
      end
   end
end