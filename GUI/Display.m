function varargout = Display(varargin)
% DISPLAY MATLAB code for Display.fig
%      DISPLAY, by itself, creates a new DISPLAY or raises the existing
%      singleton*.
%
%      H = DISPLAY returns the handle to a new DISPLAY or the handle to
%      the existing singleton*.
%
%      DISPLAY('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DISPLAY.M with the given input arguments.
%
%      DISPLAY('Property','Value',...) creates a new DISPLAY or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Display_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Display_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Display

% Last Modified by GUIDE v2.5 10-Apr-2022 14:53:09

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Display_OpeningFcn, ...
                   'gui_OutputFcn',  @Display_OutputFcn, ...
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


% --- Executes just before Display is made visible.
function Display_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Display (see VARARGIN)

% Choose default command line output for Display
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Display wait for user response (see UIRESUME)
% uiwait(handles.figure1);

set(handles.fontSelect_buttongroup,'SelectionChangeFcn',@fontSelect_buttongroup_SelectionChangeFcn);

% --- Outputs from this function are returned to the command line.
function varargout = Display_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in displayText_pushbutton.
function displayText_pushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to displayText_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.display_staticText,'String','Hello World!');


% --- Executes on button press in bold_checkbox.
function bold_checkbox_Callback(hObject, eventdata, handles)
% hObject    handle to bold_checkbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of bold_checkbox

checkboxStatus = get(handles.bold_checkbox,'Value');
if (checkboxStatus)
    set (handles.display_staticText,'FontWeight','bold');
else
    set (handles.display_staticText,'FontWeight','normal');
end


% --- Executes on button press in fontsize08_radiobutton.
function fontsize08_radiobutton_Callback(hObject, eventdata, handles)
% hObject    handle to fontsize08_radiobutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of fontsize08_radiobutton


% --- Executes on button press in fontsize12_radiobutton.
function fontsize12_radiobutton_Callback(hObject, eventdata, handles)
% hObject    handle to fontsize12_radiobutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of fontsize12_radiobutton


% --- Executes on button press in fontsize16_radiobutton.
function fontsize16_radiobutton_Callback(hObject, eventdata, handles)
% hObject    handle to fontsize16_radiobutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of fontsize16_radiobutton

function fontSelect_buttongroup_SelectionChangeFcn(hObject, eventdata)
handles = guidata(hObject);
switch get(eventdata.NewValue,'Tag')
    case 'fontsize08_radiobutton'
        set(handles.display_staticText, 'fontsize', 8);
    case 'fontsize12_radiobutton'
        set(handles.display_staticText, 'fontsize', 12);
    case 'fontsize16_radiobutton'
        set(handles.display_staticText, 'fontsize', 16);
    otherwise
end