function varargout = Menu(varargin)
% MENU MATLAB code for Menu.fig
%      MENU, by itself, creates a new MENU or raises the existing
%      singleton*.
%
%      H = MENU returns the handle to a new MENU or the handle to
%      the existing singleton*.
%
%      MENU('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MENU.M with the given input arguments.
%
%      MENU('Property','Value',...) creates a new MENU or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Menu_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Menu_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Menu

% Last Modified by GUIDE v2.5 14-May-2022 18:48:05

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Menu_OpeningFcn, ...
                   'gui_OutputFcn',  @Menu_OutputFcn, ...
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


% --- Executes just before Menu is made visible.
function Menu_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Menu (see VARARGIN)

% Choose default command line output for Menu
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Menu wait for user response (see UIRESUME)
% uiwait(handles.figure1);
set(handles.cb1,'Enable','off');
set(handles.cb2,'Enable','off');
set(handles.cb3,'Enable','off');
set(handles.cb4,'Enable','off');
set(handles.cb5,'Enable','off');
set(handles.ongkos,'Enable','off');

if get(handles.rb2,'Value')== 1
    set(handles.ongkos,'Enable','on');
else
    set(handles.ongkos,'Value',0,'Enable','off');
end

% --- Outputs from this function are returned to the command line.
function varargout = Menu_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function namatxt_Callback(hObject, eventdata, handles)
% hObject    handle to namatxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of namatxt as text
%        str2double(get(hObject,'String')) returns contents of namatxt as a double


% --- Executes during object creation, after setting all properties.
function namatxt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to namatxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in cb.
function cb_Callback(hObject, eventdata, handles)
% hObject    handle to cb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cb

if get(hObject,'Value') == 1
   set(handles.cb1,'Enable','on');
     set(handles.cb2,'Enable','on');
      set(handles.cb3,'Enable','on');
       set(handles.cb4,'Enable','on');
        set(handles.cb5,'Enable','on');
else
    set(handles.cb1,'Value',0,'Enable','off');
     set(handles.cb2,'Value',0,'Enable','off');
      set(handles.cb3,'Value',0,'Enable','off');
       set(handles.cb4,'Value',0,'Enable','off');
        set(handles.cb5,'Value',0,'Enable','off');

end

% --- Executes on button press in exitpb.
function exitpb_Callback(hObject, eventdata, handles)
% hObject    handle to exitpb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close all;

% --- Executes on button press in cb1.
function cb1_Callback(hObject, eventdata, handles)
% hObject    handle to cb1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cb1


% --- Executes on button press in cb2.
function cb2_Callback(hObject, eventdata, handles)
% hObject    handle to cb2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cb2


% --- Executes on button press in cb3.
function cb3_Callback(hObject, eventdata, handles)
% hObject    handle to cb3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cb3


% --- Executes on button press in cb3.
function cb4_Callback(hObject, eventdata, handles)
% hObject    handle to cb3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cb3


% --- Executes on button press in cb5.
function cb5_Callback(hObject, eventdata, handles)
% hObject    handle to cb5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cb5


% --- Executes on button press in rb1.
function rb1_Callback(hObject, eventdata, handles)
% hObject    handle to rb1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rb1


% --- Executes on button press in rb2.
function rb2_Callback(hObject, eventdata, handles)
% hObject    handle to rb2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rb2



function total_Callback(hObject, eventdata, handles)
% hObject    handle to total (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of total as text
%        str2double(get(hObject,'String')) returns contents of total as a double


% --- Executes during object creation, after setting all properties.
function total_CreateFcn(hObject, eventdata, handles)
% hObject    handle to total (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ongkos_Callback(hObject, eventdata, handles)
% hObject    handle to ongkos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ongkos as text
%        str2double(get(hObject,'String')) returns contents of ongkos as a double


% --- Executes during object creation, after setting all properties.
function ongkos_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ongkos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bayar_Callback(hObject, eventdata, handles)
% hObject    handle to bayar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bayar as text
%        str2double(get(hObject,'String')) returns contents of bayar as a double


% --- Executes during object creation, after setting all properties.
function bayar_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bayar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function rb2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rb2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in ok.
function ok_Callback(hObject, eventdata, handles)
% hObject    handle to ok (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

totals=0;
if get(handles.cb1,'Value')==1
    a=12000;
    totals=totals+a;
end
if get(handles.cb2,'Value')==1
    b=15000;
    totals=totals+b;
end
if get(handles.cb3,'Value')==1
    c=20000;
    totals=totals+c;
end
if get(handles.cb4,'Value')==1
    d=23000;
    totals=totals+d;
end
if get(handles.cb5,'Value')==1
    e=25000;
    totals=totals+e;
end
set(handles.total,'String',num2str(totals));
totalo=0;
if get(handles.rb1,'Value')==1
    f=0;
    totalo=totalo+f;
elseif get(handles.rb2,'Value')==1
    g=5000;
    totalo=totalo+g;
end
set(handles.ongkos,'String',num2str(totalo));
totalb=totals+totalo;
set(handles.bayar,'String',num2str(totalb));


% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


set(handles.namatxt,'String',' ');
set(handles.cb,'Value',0);
set(handles.cb1,'Value',0);
set(handles.cb2,'Value',0);
set(handles.cb3,'Value',0);
set(handles.cb4,'Value',0);
set(handles.cb5,'Value',0);
set(handles.rb1,'Value',0);
set(handles.rb2,'Value',0);
set(handles.total,'String',' ');
set(handles.ongkos,'String',' ');
set(handles.bayar,'String',' ');
