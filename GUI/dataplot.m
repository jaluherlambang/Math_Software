function varargout = dataplot(varargin)
% DATAPLOT MATLAB code for dataplot.fig
%      DATAPLOT, by itself, creates a new DATAPLOT or raises the existing
%      singleton*.
%
%      H = DATAPLOT returns the handle to a new DATAPLOT or the handle to
%      the existing singleton*.
%
%      DATAPLOT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DATAPLOT.M with the given input arguments.
%
%      DATAPLOT('Property','Value',...) creates a new DATAPLOT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before dataplot_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to dataplot_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help dataplot

% Last Modified by GUIDE v2.5 16-May-2022 20:12:16

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @dataplot_OpeningFcn, ...
                   'gui_OutputFcn',  @dataplot_OutputFcn, ...
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


% --- Executes just before dataplot is made visible.
function dataplot_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to dataplot (see VARARGIN)

% Choose default command line output for dataplot
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes dataplot wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = dataplot_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in data.
function data_Callback(hObject, eventdata, handles)
% hObject    handle to data (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

x = xlsread("covid.xlsx");
set(handles.tdata,'data',x);

% --- Executes on button press in grafik.
function grafik_Callback(hObject, eventdata, handles)
% hObject    handle to grafik (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
data=xlsread("covid.xlsx");
t1=data(:,1);
t2=data(:,2);
axes(handles.tplot);



if get(handles.rbmerah,'Value')==1
   plot(t1,t2,'r');
elseif get(handles.rbbiru,'Value')==1
    plot(t1,t2,'b');
elseif get(handles.rbhijau,'Value')==1
    plot(t1,t2,'g');
end

if get(handles.pm,'Value')==1
   
    set(gca,'color','r');
elseif get(handles.pm,'Value')==2
    
    set(gca,'color','b');
elseif get(handles.pm,'Value')==3
   
    set(gca,'color','g');
end

if get(handles.grid,'Value')==1
    grid on;
else
    grid off;
end
% --- Executes on button press in grid.
function grid_Callback(hObject, eventdata, handles)
% hObject    handle to grid (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of grid


% --- Executes on selection change in pm.
function pm_Callback(hObject, eventdata, handles)
% hObject    handle to pm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pm contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pm


% --- Executes during object creation, after setting all properties.



function pm_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
