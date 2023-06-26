function varargout = number_one(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @number_one_OpeningFcn, ...
                   'gui_OutputFcn',  @number_one_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before number_one is made visible.
function number_one_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to number_one (see VARARGIN)

% Choose default command line output for number_one
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes number_one wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = number_one_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in button_data.
function button_data_Callback(hObject, eventdata, handles)

[Filename, Pathname]=uigetfile('*.xlsx', 'File Selector');
name = strcat(Pathname,Filename);
[num,txt,raw]=xlsread(name);
set(handles.tabel_data,'Data',raw);
global x1;
global x2;
global y;
global varIndep1;
global varIndep2;
global varDep;
x1 = num(:,2);
x2 = num(:,3);
y = num(:,3);
varIndep1=txt(1,2);
varIndep2=txt(1,3);
varDep=txt(1,3);

function button_regresi_Callback(hObject, eventdata, handles)

global x1;
global x2;
global y;
global b;
X = [ones(size(y)), x1, x2, x1.*x2];
b = regress(y,X);
PersamaanRegresi = sprintf('Y = (%d) + (%d) X1 + (%d) X2 + (%d) X1X2',b(1),b(2),b(3), b(4));
set(handles.tabel_regresi,'Data',b);
set(handles.text_regresi,'String',PersamaanRegresi)

% --- Executes on button press in button_grafik.
function button_grafik_Callback(hObject, eventdata, handles)

global x1;
global x2;
global y;
global b;
global varIndep1;
global varIndep2;
global varDep;
axes(handles.axes);
scatter3(x1,x2,y,'filled')
hold on
X1fit = min(x1):1:max(x1);
X2fit = min(x2):1:max(x2);

[X1FIT,X2FIT] = meshgrid(X1fit,X2fit);

YFIT = b(1) + b(2)*X1FIT + b(3)*X2FIT+b(4)*X1FIT .*X2FIT;
mesh(X1FIT,X2FIT,YFIT)

xlabel(varIndep1)
ylabel(varIndep2)
zlabel(varDep)
hold off
guidata(hObject,handles);
