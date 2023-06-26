function varargout = Latihan2(varargin)
% LATIHAN2 MATLAB code for Latihan2.fig
%      LATIHAN2, by itself, creates a new LATIHAN2 or raises the existing
%      singleton*.
%
%      H = LATIHAN2 returns the handle to a new LATIHAN2 or the handle to
%      the existing singleton*.
%
%      LATIHAN2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LATIHAN2.M with the given input arguments.
%
%      LATIHAN2('Property','Value',...) creates a new LATIHAN2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Latihan2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Latihan2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Latihan2

% Last Modified by GUIDE v2.5 13-Apr-2022 16:36:10

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Latihan2_OpeningFcn, ...
                   'gui_OutputFcn',  @Latihan2_OutputFcn, ...
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


% --- Executes just before Latihan2 is made visible.
function Latihan2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Latihan2 (see VARARGIN)

% Choose default command line output for Latihan2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Latihan2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Latihan2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

[namafile,namadirektori] = uigetfile('*.xlsx');
if namafile ~= 0
    %user menekan OK
    dataku = readtable([namadirektori,namafile]);
    set(handles.uitable1,'Data',table2cell(dataku))

    axes(handles.axes1)
    plot(dataku.Tahun, dataku.Populasi)
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.uitable1, 'Data', {})
cla(handles.axes1, 'reset')
