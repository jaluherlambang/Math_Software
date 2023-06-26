function varargout = Tugas_Regresi(varargin)
% TUGAS_REGRESI MATLAB code for Tugas_Regresi.fig
%      TUGAS_REGRESI, by itself, creates a new TUGAS_REGRESI or raises the existing
%      singleton*.
%
%      H = TUGAS_REGRESI returns the handle to a new TUGAS_REGRESI or the handle to
%      the existing singleton*.
%
%      TUGAS_REGRESI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TUGAS_REGRESI.M with the given input arguments.
%
%      TUGAS_REGRESI('Property','Value',...) creates a new TUGAS_REGRESI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Tugas_Regresi_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Tugas_Regresi_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Tugas_Regresi

% Last Modified by GUIDE v2.5 12-Jun-2021 06:56:28

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Tugas_Regresi_OpeningFcn, ...
                   'gui_OutputFcn',  @Tugas_Regresi_OutputFcn, ...
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


% --- Executes just before Tugas_Regresi is made visible.
function Tugas_Regresi_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Tugas_Regresi (see VARARGIN)

% Choose default command line output for Tugas_Regresi
handles.output = hObject;
set(hObject, 'toolbar','figure');

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Tugas_Regresi wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Tugas_Regresi_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Get default command line output from handles structure
varargout{1} = handles.output;



function browse_edit_Callback(hObject, eventdata, handles)
% hObject    handle to browse_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of browse_edit as text
%        str2double(get(hObject,'String')) returns contents of browse_edit as a double


% --- Executes during object creation, after setting all properties.
function browse_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to browse_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in browse_pushbutton.
function browse_pushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to browse_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[Filename, Pathname]=uigetfile('*.xlsx', 'File Selector');
name = strcat(Pathname,Filename);
[num,txt,raw]=xlsread(name);
set(handles.data_uitable,'Data',raw);
set(handles.browse_edit,'string', name);
global x1;
global x2;
global y;
global varIndep1;
global varIndep2;
global varDep;
x1 = num(:,2);
x2 = num(:,3);
y = num(:,4);
varIndep1=txt(1,2);
varIndep2=txt(1,3);
varDep=txt(1,4);

% --- Executes on button press in grafik_pushbutton.
function grafik_pushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to grafik_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x1;
global x2;
global y;
global b;
global varIndep1;
global varIndep2;
global varDep;
axes(handles.data1_axes);
scatter3(x1,x2,y,'filled')
hold on
X1fit = min(x1):1:max(x1);
X2fit = min(x2):1:max(x2);

[X1FIT,X2FIT] = meshgrid(X1fit,X2fit);

YFIT = b(1) + b(2)*X1FIT + b(3)*X2FIT+b(4)*X1FIT .* X2FIT;
mesh(X1FIT,X2FIT,YFIT)

xlabel(varIndep1)
ylabel(varIndep2)
zlabel(varDep)
view(60,10)
hold off
guidata(hObject,handles);


% --- Executes on button press in hapusgrafik_pushbutton.
function hapusgrafik_pushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to hapusgrafik_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla(handles.data1_axes,'reset')
guidata(hObject, handles);


% --- Executes on button press in regres_pushbutton.
function regres_pushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to regres_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%Mulai regresi
global x1;
global x2;
global y;
global b;
X = [ones(size(y)), x1, x2, x1.*x2];
b = regress(y,X);
PersamaanRegresi = sprintf('Y = (%d) + (%d) X1 + (%d) X2 + (%d) X1X2',b(1),b(2),b(3), b(4));
set(handles.regres_uitable,'Data',b);
set(handles.PersRegresi_text,'String',PersamaanRegresi)



% --- Executes on button press in close_pushbutton.
function close_pushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to close_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close

%% Reference
    % Alhusin, Syahri, “Aplikasi Statistik Praktis dengan Menggunakan SPSS 10 for Windows”, Edisi Kedua, Yogyakarta: Graha Ilmu, 2003.


% --- Executes during object deletion, before destroying properties.
