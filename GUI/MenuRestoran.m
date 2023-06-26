function varargout = MenuRestoran(varargin)
% MENURESTORAN MATLAB code for MenuRestoran.fig
%      MENURESTORAN, by itself, creates a new MENURESTORAN or raises the existing
%      singleton*.
%
%      H = MENURESTORAN returns the handle to a new MENURESTORAN or the handle to
%      the existing singleton*.
%
%      MENURESTORAN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MENURESTORAN.M with the given input arguments.
%
%      MENURESTORAN('Property','Value',...) creates a new MENURESTORAN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before MenuRestoran_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to MenuRestoran_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help MenuRestoran

% Last Modified by GUIDE v2.5 08-Jun-2021 18:05:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @MenuRestoran_OpeningFcn, ...
                   'gui_OutputFcn',  @MenuRestoran_OutputFcn, ...
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


% --- Executes just before MenuRestoran is made visible.
function MenuRestoran_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to MenuRestoran (see VARARGIN)

% Choose default command line output for MenuRestoran
handles.output = hObject;
 set(handles.AyamGoreng_checkbox,'Enable' , 'Off');
 set(handles.AyamBakar_checkbox,'Enable' , 'Off');
 set(handles.AyamPenyet_checkbox,'Enable' , 'Off');
 set(handles.AyamKremes_checkbox,'Enable' , 'Off');
 
 set(handles.jAyamGoreng_edit,'Enable' , 'Off');
 set(handles.jAyamBakar_edit,'Enable' , 'Off');
 set(handles.jAyamPenyet_edit,'Enable' , 'Off');
 set(handles.jAyamKremes_edit,'Enable' , 'Off');
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes MenuRestoran wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = MenuRestoran_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function Nama_edit_Callback(hObject, eventdata, handles)
% hObject    handle to Nama_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Nama_edit as text
%        str2double(get(hObject,'String')) returns contents of Nama_edit as a double


% --- Executes during object creation, after setting all properties.
function Nama_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Nama_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in memesan_checkbox.
function memesan_checkbox_Callback(hObject, eventdata, handles)
% hObject    handle to memesan_checkbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of memesan_checkbox
checkboxStatus = get(handles.memesan_checkbox,'Value');
if(checkboxStatus)
 set(handles.AyamGoreng_checkbox,'Enable' , 'On');
 set(handles.AyamBakar_checkbox,'Enable' , 'On');
 set(handles.AyamPenyet_checkbox,'Enable' , 'On');
 set(handles.AyamKremes_checkbox,'Enable' , 'On');

else
 set(handles.AyamGoreng_checkbox,'Enable' , 'Off');
 set(handles.AyamBakar_checkbox,'Enable' , 'Off');
 set(handles.AyamPenyet_checkbox,'Enable' , 'Off');
 set(handles.AyamKremes_checkbox,'Enable' , 'Off');
end


% --- Executes on button press in exit1_pushbutton.
function exit1_pushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to exit1_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close




function Total_edit_Callback(hObject, eventdata, handles)
% hObject    handle to Total_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Total_edit as text
%        str2double(get(hObject,'String')) returns contents of Total_edit as a double


% --- Executes during object creation, after setting all properties.
function Total_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Total_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ongkir_edit_Callback(hObject, eventdata, handles)
% hObject    handle to ongkir_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ongkir_edit as text
%        str2double(get(hObject,'String')) returns contents of ongkir_edit as a double


% --- Executes during object creation, after setting all properties.
function ongkir_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ongkir_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TotalBiaya_edit_Callback(hObject, eventdata, handles)
% hObject    handle to TotalBiaya_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TotalBiaya_edit as text
%        str2double(get(hObject,'String')) returns contents of TotalBiaya_edit as a double


% --- Executes during object creation, after setting all properties.
function TotalBiaya_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TotalBiaya_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in AyamGoreng_checkbox.
function AyamGoreng_checkbox_Callback(hObject, eventdata, handles)
% hObject    handle to AyamGoreng_checkbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Menu1;
checkboxStatus = get(handles.AyamGoreng_checkbox,'Value');
if(checkboxStatus)
 set(handles.jAyamGoreng_edit,'Enable' , 'On');
 Menu1 = 20000;
else
 set(handles.jAyamGoreng_edit,'Enable' , 'Off');
 Menu1 = 0;
end


% --- Executes on button press in AyamBakar_checkbox.
function AyamBakar_checkbox_Callback(hObject, eventdata, handles)
% hObject    handle to AyamBakar_checkbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Menu2;
checkboxStatus = get(handles.AyamBakar_checkbox,'Value');
if(checkboxStatus)
 Menu2 = 25000;
 set(handles.jAyamBakar_edit,'Enable' , 'On');
else
 Menu2 = 0;
 set(handles.jAyamBakar_edit,'Enable' , 'Off');
end

% Hint: get(hObject,'Value') returns toggle state of AyamBakar_checkbox


% --- Executes on button press in AyamPenyet_checkbox.
function AyamPenyet_checkbox_Callback(hObject, eventdata, handles)
% hObject    handle to AyamPenyet_checkbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of AyamPenyet_checkbox
global Menu3;
checkboxStatus = get(handles.AyamPenyet_checkbox,'Value');
if(checkboxStatus)
 Menu3 = 23000;
 set(handles.jAyamPenyet_edit,'Enable' , 'On');
else
 Menu3 = 0;
 set(handles.jAyamPenyet_edit,'Enable' , 'Off');
end


% --- Executes on button press in AyamKremes_checkbox.
function AyamKremes_checkbox_Callback(hObject, eventdata, handles)
% hObject    handle to AyamKremes_checkbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of AyamKremes_checkbox
global Menu4;
checkboxStatus = get(handles.AyamKremes_checkbox,'Value');
if(checkboxStatus)
 Menu4 = 27000;
 set(handles.jAyamKremes_edit,'Enable' , 'On');
else
 Menu4 = 0;
 set(handles.jAyamKremes_edit,'Enable' , 'Off');
end



function jAyamGoreng_edit_Callback(hObject, eventdata, handles)
% hObject    handle to jAyamGoreng_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of jAyamGoreng_edit as text
%        str2double(get(hObject,'String')) returns contents of jAyamGoreng_edit as a double


% --- Executes during object creation, after setting all properties.
function jAyamGoreng_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to jAyamGoreng_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function jAyamBakar_edit_Callback(hObject, eventdata, handles)
% hObject    handle to jAyamBakar_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of jAyamBakar_edit as text
%        str2double(get(hObject,'String')) returns contents of jAyamBakar_edit as a double


% --- Executes during object creation, after setting all properties.
function jAyamBakar_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to jAyamBakar_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function jAyamPenyet_edit_Callback(hObject, eventdata, handles)
% hObject    handle to jAyamPenyet_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of jAyamPenyet_edit as text
%        str2double(get(hObject,'String')) returns contents of jAyamPenyet_edit as a double


% --- Executes during object creation, after setting all properties.
function jAyamPenyet_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to jAyamPenyet_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function jAyamKremes_edit_Callback(hObject, eventdata, handles)
% hObject    handle to jAyamKremes_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of jAyamKremes_edit as text
%        str2double(get(hObject,'String')) returns contents of jAyamKremes_edit as a double


% --- Executes during object creation, after setting all properties.
function jAyamKremes_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to jAyamKremes_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in exit2_pushbutton.
function exit2_pushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to exit2_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close


% --- Executes on button press in ok_pushbutton.
function ok_pushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to ok_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Menu1; global Menu2; global Menu3; global Menu4;
global HargaM1; global HargaM2; global HargaM3; global HargaM4;
global Total;
global Ongkir;
global TotalBiaya;
jumlahMenu1 = get(handles.jAyamGoreng_edit,'String');
jumlahMenu2 = get(handles.jAyamBakar_edit,'String');
jumlahMenu3 = get(handles.jAyamPenyet_edit,'String');
jumlahMenu4 = get(handles.jAyamKremes_edit,'String');

if isempty(jumlahMenu1)
    HargaM1 = 0;
else
    HargaM1 = Menu1*str2num(jumlahMenu1);
end
if isempty(jumlahMenu2)
    HargaM2 = 0;
else
    HargaM2 = Menu2*str2num(jumlahMenu2);
end
if isempty(jumlahMenu3)
    HargaM3 = 0;
else
    HargaM3 = Menu3*str2num(jumlahMenu3);
end
if isempty(jumlahMenu4)
    HargaM4 = 0;
else
    HargaM4 = Menu4*str2num(jumlahMenu4);
end
Total = HargaM1 + HargaM2 + HargaM3 + HargaM4;
TotalBiaya = Total + Ongkir;

%Mengubah ke string untuk menampilkan ke edit text
sTotal= num2str(Total);
sOngkir = num2str(Ongkir);
sTotalBiaya = num2str(TotalBiaya);

%Menampilkan ke edittext
set(handles.Total_edit,'String',sTotal);
set(handles.ongkir_edit,'String',sOngkir);
set(handles.TotalBiaya_edit,'String',sTotalBiaya);
guidata(hObject,handles);



% --- Executes on button press in bayar_pushbutton.
function bayar_pushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to bayar_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Total;
global Ongkir;
global TotalBiaya;
Nama = get(handles.Nama_edit,'String');
fID = fopen('RekapRestoran.txt','a');
        fprintf(fID,'%s\t %.0f\n',Nama,TotalBiaya);
fclose(fID);
type RekapRestoran.txt
set(handles.Nama_edit,'String','');
set(handles.jAyamGoreng_edit,'String','');
set(handles.jAyamBakar_edit,'String','');
set(handles.jAyamPenyet_edit,'String','');
set(handles.jAyamKremes_edit,'String','');
set(handles.Total_edit,'String','');
set(handles.ongkir_edit,'String','');
set(handles.TotalBiaya_edit,'String','');
set(handles.memesan_checkbox,'Value',0);
set(handles.AyamGoreng_checkbox,'Value',0);
set(handles.AyamBakar_checkbox,'Value',0);
set(handles.AyamPenyet_checkbox,'Value',0);
set(handles.AyamKremes_checkbox,'Value',0);



% --- Executes on button press in Delivery_radiobutton.
function Delivery_radiobutton_Callback(hObject, eventdata, handles)
% hObject    handle to Delivery_radiobutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Delivery_radiobutton


% --- Executes on button press in TakeAway_checkbox.
function TakeAway_checkbox_Callback(hObject, eventdata, handles)
% hObject    handle to TakeAway_checkbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of TakeAway_checkbox
checkboxStatus = get(handles.TakeAway_checkbox,'Value');
global Ongkir;
if(checkboxStatus)
 Ongkir=0;
 set(handles.Delivery_checkbox,'Enable' , 'Off');
else
 set(handles.Delivery_checkbox,'Enable' , 'On');
 Ongkir=15000;
end



% --- Executes on button press in Delivery_checkbox.
function Delivery_checkbox_Callback(hObject, eventdata, handles)
% hObject    handle to Delivery_checkbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Delivery_checkbox
global Ongkir;
checkboxStatus = get(handles.Delivery_checkbox,'Value');
if(checkboxStatus)
 Ongkir=15000;
 set(handles.TakeAway_checkbox,'Enable' , 'Off');
else
 set(handles.TakeAway_checkbox,'Enable' , 'On');
 Ongkir=0;
end
