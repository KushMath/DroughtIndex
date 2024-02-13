function pdf = pdf_br(x, a, b)
pdf = ((x - min(x)).^(a-1) .* (max(x) - x).^(b-1)) ./ (max(x)-min(x)).^(a+b-1)./beta(a, b); 
pdf(x < min(x) | x > max(x)) = 0; 
end