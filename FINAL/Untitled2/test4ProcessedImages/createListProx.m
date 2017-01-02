function list = createListProx(c, r, I, tDiff)

list = [];
if c==0 && r == 0
    return
end

rad = 2 * tDiff;

global maskZeros;
mask = maskZeros;

c1 = c - rad;
if c1 < 1
    c1 = 1;
end

c2 = c + rad;
if c2 > 1024
    c2 = 1024;
end

r1 = r - rad;
if r1 < 1
    r1 = 1;
end

r2 = r + rad;
if r2 > 1024
    r2 = 1024;
end

count = 0;

smallC = c - c1;
smallR = r - r1;

maskOnes = ones(r2-r1+1, c2-c1+1);
for a = smallC-3:smallC+3
    for b = smallR-3:smallR+3
         maskOnes(b, a) = 0;
    end
end

mask(r1:r2, c1:c2) = maskOnes;

proxI = mask .* I;
list = createListFromI(proxI);