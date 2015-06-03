function ret = detectNumber(path)
original = imread(path);
im = rgb2gray(original);
im = imcomplement(im);
im = cropNumber(im);
im = pad(im, 10);
im = imresize(im, [16, 16]);
im = enhanceStroke(im);

ret = im;

function ret = cropNumber(imc)
topMost = -1;
leftMost = -1;
rightMost = -1;
bottomMost = -1;

[cols, rows] = size(imc);

for row = (1:rows)
    if (max(imc(:, row)) > 0)
        if topMost == -1
            topMost = row;
        end
        
        bottomMost  = row;
    end
end

for col = (1:cols)
    if (max(imc(col, :)) > 0)
        if leftMost == -1
            leftMost = col;
        end
        
        rightMost = col;
    end
end

ret = imc(leftMost:rightMost, topMost:bottomMost);

function ret = pad(im, padding)
ret = padarray(im, [padding, padding], 'both');

function ret = enhanceStroke(im)
ret = imadjust(im);