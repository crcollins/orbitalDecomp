%% Make a test fragment
%clear all;
% assume 3 fragments 
f1 = Frag(rand(2000,2000),rand(1,2000));
f1.nonLinking = 1:1700;
f2 = Frag(rand(3000,3000),rand(1,3000));
f2.nonLinking = 300:2600;
f3 = Frag(rand(2100,2100),rand(1,2100));
f3.nonLinking = 500:2100;
sizeFull = length(f1.nonLinking) + length(f2.nonLinking) ...
    + length(f3.nonLinking);
full = Frag(rand(sizeFull,sizeFull),rand(1,sizeFull));
frags = {f1 f2 f3};
d1 = Decomposition(full,frags);