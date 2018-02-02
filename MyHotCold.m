function h = MyHotCold(m)
%   cian-blue-Black-red-yellow color map
%   returns an M-by-3 matrix containing a custom colormap.suitable for 
%   positive and negative value figures.
%   HOT, is the same length as the current figure's
%   colormap. If no figure exists, MATLAB creates one.
%
%   For example, to reset the colormap of the current figure:
%
%             colormap(MyHotCold)
%
%   See also HSV, GRAY, PINK, COOL, BONE, COPPER, FLAG, 
%   COLORMAP, RGBPLOT.

%   Valeri Tsatsishvili, based on matlabs internal maps

if nargin < 1, m = size(get(gcf,'colormap'),1); end
n = fix(2/8*m);

r = [zeros(n,1);linspace(0.05,0.1,n)';(1:n)'/n; ones(m-(3*n),1)];
g = [(fliplr(1:n))'/(n); linspace(0.05,0.1,n)';fliplr(linspace(0.05,0.1,n))';...
    (1:n)'/n];
b = [ones(n,1); fliplr(1:n)'/n; fliplr(linspace(0.05,0.1,n))';...
    zeros(m-(3*n),1)];

h = [r g b];