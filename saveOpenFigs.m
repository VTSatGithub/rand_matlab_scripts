function saveOpenFigs(format,path)
% This function saves all currently open figures in indicated path and
% format. If path is not given, current working directory is used. Figures
% are named as "figure title-plot title" format when available.

% Valeri Tsatsishvili

if nargin == 1
    path = pwd;
elseif nargin > 2 || nargin < 1
    error ('Incorrect number of inputs. Just need Path and file format')
end

fHandles = get(0,'Children');

for i = 1:length(fHandles)
    PlotTitle = fHandles(i).Children.Title.String;
    FigTitle = fHandles(i).Name;
    
    if isempty(FigTitle)
        FigTitle = ['Fig',num2str(fHandles(i).Number)];
    end
    
    if ~isempty(PlotTitle) 
         saveas(fHandles(i),[path,'\',FigTitle,'-',PlotTitle],format);
    else
        saveas(fHandles(i),[path,'\',FigTitle],format);
    end
    
         
end