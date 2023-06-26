function varargout = regresirumah(varargin)
% REGRESIRUMAH MATLAB code for regresirumah.fig
%      REGRESIRUMAH, by itself, creates a new REGRESIRUMAH or raises the existing
%      singleton*.
%
%      H = REGRESIRUMAH returns the handle to a new REGRESIRUMAH or the handle to
%      the existing singleton*.
%
%      REGRESIRUMAH('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in REGRESIRUMAH.M with the given input arguments.
%
%      REGRESIRUMAH('Property','Value',...) creates a new REGRESIRUMAH or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before regresirumah_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to regresirumah_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help regresirumah

% Last Modified by GUIDE v2.5 26-May-2022 19:33:41

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @regresirumah_OpeningFcn, ...
                   'gui_OutputFcn',  @regresirumah_OutputFcn, ...
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


% --- Executes just before regresirumah is made visible.
function regresirumah_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to regresirumah (see VARARGIN)

% Choose default command line output for regresirumah
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes regresirumah wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = regresirumah_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in tampil.
function tampil_Callback(hObject, eventdata, handles)
% hObject    handle to tampil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x=xlsread("rumah.xlsx");
set(handles.table_data,'data',x);


% --- Executes on button press in regresi.
function regresi_Callback(hObject, eventdata, handles)
% hObject    handle to regresi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
datareg=xlsread("rumah.xlsx");
x=datareg(:,1:2);
y=datareg(:,3);
model=fitlm(x,y)
y2 = predict(model,x); 
axes(handles.taxes);
hold on ;
plot(y); 
plot(y2); 
xlabel('data ke n'),ylabel('harga') 
grid on 
legend('Target','Prediksi') 
title('Regresi Berganda')


% --- Executes when user attempts to close figure1.
function figure1_CloseRequestFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: delete(hObject) closes the figure
delete(hObject);
