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
