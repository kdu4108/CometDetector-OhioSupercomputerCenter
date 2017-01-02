function out = wrap360(raw)

if raw < 0
    out = raw + 360;
else
    if raw > 360
        out = raw - 360;
    else
        out = raw;
    end
end