function varargout = plotAxes(varargin)
% PLOTAXES MATLAB code for plotAxes.fig
%      PLOTAXES, by itself, creates a new PLOTAXES or raises the existing
%      singleton*.
%
%      H = PLOTAXES returns the handle to a new PLOTAXES or the handle to
%      the existing singleton*.
%
%      PLOTAXES('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PLOTAXES.M with the given input arguments.
%
%      PLOTAXES('Property','Value',...) creates a new PLOTAXES or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before plotAxes_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to plotAxes_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help plotAxes

% Last Modified by GUIDE v2.5 11-Apr-2022 16:44:32

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @plotAxes_OpeningFcn, ...
                   'gui_OutputFcn',  @plotAxes_OutputFcn, ...
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


% --- Executes just before plotAxes is made visible.
function plotAxes_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to plotAxes (see VARARGIN)

set(hObject, 'toolbar', 'figure');

% Choose default command line output for plotAxes
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes plotAxes wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = plotAxes_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in plotAxes1_pushbutton.
function plotAxes1_pushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to plotAxes1_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1)

x= 0:10;
y= 0:10;

plot(x,y);
title('Axes 1')
xlabel('X data')
ylabel('Y data')
guidata(hObject,handles);
% --- Executes on button press in plotAxes2_pushbutton.
function plotAxes2_pushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to plotAxes2_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

axes(handles.axes2)

x=0:10;
y=x.^2;

plot(x,y);
title('Axes 2');
xlabel('X data');
ylabel('Y data');
guidata(hObject, handles);

% --- Executes on button press in clearAxes_pushbutton.
function clearAxes_pushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to clearAxes_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla(handles.axes1,'reset')
cla(handles.axes2, 'reset')
guidata(hObject,handles);