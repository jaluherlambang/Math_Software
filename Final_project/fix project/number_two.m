
function varargout = number_two(varargin)
% NUMBER_TWO MATLAB code for number_two.fig
%      NUMBER_TWO, by itself, creates a new NUMBER_TWO or raises the existing
%      singleton*.
%
%      H = NUMBER_TWO returns the handle to a new NUMBER_TWO or the handle to
%      the existing singleton*.
%
%      NUMBER_TWO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NUMBER_TWO.M with the given input arguments.
%
%      NUMBER_TWO('Property','Value',...) creates a new NUMBER_TWO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before number_two_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to number_two_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help number_two

% Last Modified by GUIDE v2.5 13-Jun-2022 12:43:48

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @number_two_OpeningFcn, ...
                   'gui_OutputFcn',  @number_two_OutputFcn, ...
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


% --- Executes just before number_two is made visible.
function number_two_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to number_two (see VARARGIN)

% Choose default command line output for number_two
handles.output = hObject;
movegui(hObject, 'north');
set(handles.edit_alamat,'Enable' , 'Off');
set(handles.checkbox_alamat,'Enable' , 'Off');
set(handles.penambah_makanan1,'Enable' , 'Off');
set(handles.penambah_makanan2,'Enable' , 'Off');
set(handles.penambah_makanan3,'Enable' , 'Off');
set(handles.penambah_makanan4,'Enable' , 'Off');
set(handles.penambah_makanan5,'Enable' , 'Off');
set(handles.penambah_makanan6,'Enable' , 'Off');
set(handles.pengurang_makanan1,'Enable' , 'Off');
set(handles.pengurang_makanan2,'Enable' , 'Off');
set(handles.pengurang_makanan3,'Enable' , 'Off');
set(handles.pengurang_makanan4,'Enable' , 'Off');
set(handles.pengurang_makanan5,'Enable' , 'Off');
set(handles.pengurang_makanan6,'Enable' , 'Off');
set(handles.pengurang_makanan1,'Enable' , 'Off');
set(handles.penambah_minuman1,'Enable' , 'Off');
set(handles.penambah_minuman2,'Enable' , 'Off');
set(handles.penambah_minuman3,'Enable' , 'Off');
set(handles.penambah_minuman4,'Enable' , 'Off');
set(handles.pengurang_minuman1,'Enable' , 'Off');
set(handles.pengurang_minuman2,'Enable' , 'Off');
set(handles.pengurang_minuman3,'Enable' , 'Off');
set(handles.pengurang_minuman4,'Enable' , 'Off');
set(handles.edit_makanan1,'Enable' , 'Off');
set(handles.edit_makanan2,'Enable' , 'Off');
set(handles.edit_makanan3,'Enable' , 'Off');
set(handles.edit_makanan4,'Enable' , 'Off');
set(handles.edit_makanan5,'Enable' , 'Off');
set(handles.edit_makanan6,'Enable' , 'Off');
set(handles.edit_minuman1,'Enable' , 'Off');
set(handles.edit_minuman2,'Enable' , 'Off');
set(handles.edit_minuman3,'Enable' , 'Off');
set(handles.edit_minuman4,'Enable' , 'Off');
set(handles.radiobutton_makanditempat,'Enable' , 'Off');
set(handles.radiobutton_takeaway,'Enable' , 'Off');
set(handles.radiobutton_delivery,'Enable' , 'Off');
set(handles.pushbutton_hitung,'Enable' , 'Off');
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes number_two wait for user response (see UIRESUME)
% uiwait(handles.figure1);
axes(handles.gambar_rendang);
Gambar_rendang = imread('rendang.jpg');
imshow(Gambar_rendang);

axes(handles.gambar_nasigoreng);
Gambar_nasigoreng = imread("Nasigoreng.jpg");
imshow(Gambar_nasigoreng);

axes(handles.gambar_ayamgoreng);
Gambar_ayamgoreng = imread("ayamgoreng.jpg");
imshow(Gambar_ayamgoreng);

axes(handles.gambar_ayamgeprek);
Gambar_ayamgeprek = imread("ayamgeprek.jpeg");
imshow(Gambar_ayamgeprek);

axes(handles.gambar_rawon);
Gambar_rawon = imread("rawon.jpg");
imshow(Gambar_rawon);

axes(handles.gambar_sotoayam);
Gambar_soto = imread("soto.jpg");
imshow(Gambar_soto);

axes(handles.gambar_esteh);
Gambar_esteh = imread("esteh.jpg");
imshow(Gambar_esteh);

axes(handles.gambar_esjeruk);
Gambar_esjeruk = imread("esjeruk.jpg");
imshow(Gambar_esjeruk);

axes(handles.gambar_esmilo);
Gambar_esmilo = imread("esmilo.jpg");
imshow(Gambar_esmilo);

axes(handles.gambar_anekajus);
Gambar_anekajus = imread("anekajus.jpg");
imshow(Gambar_anekajus);

% --- Outputs from this function are returned to the command line.
function varargout = number_two_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in exit.
function exit_Callback(hObject, eventdata, handles)
% hObject    handle to exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close


function nama_Callback(hObject, eventdata, handles)
% hObject    handle to nama (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nama as text
%        str2double(get(hObject,'String')) returns contents of nama as a double


% --- Executes during object creation, after setting all properties.
function nama_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nama (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pesan.
function pesan_Callback(hObject, eventdata, handles)
% hObject    handle to pesan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of pesan
checkboxStatus = get(handles.pesan, 'Value');
            if (checkboxStatus)
                 set(handles.penambah_makanan1,'Enable' , 'On');
                 set(handles.penambah_makanan2,'Enable' , 'On');
                 set(handles.penambah_makanan3,'Enable' , 'On');
                 set(handles.penambah_makanan4,'Enable' , 'On');
                 set(handles.penambah_makanan5,'Enable' , 'On');
                 set(handles.penambah_makanan6,'Enable' , 'On');
                 set(handles.pengurang_makanan1,'Enable' , 'On');
                 set(handles.pengurang_makanan2,'Enable' , 'On');
                 set(handles.pengurang_makanan3,'Enable' , 'On');
                 set(handles.pengurang_makanan4,'Enable' , 'On');
                 set(handles.pengurang_makanan5,'Enable' , 'On');
                 set(handles.pengurang_makanan6,'Enable' , 'On');
                 set(handles.pengurang_makanan1,'Enable' , 'On');
                 set(handles.penambah_minuman1,'Enable' , 'On');
                 set(handles.penambah_minuman2,'Enable' , 'On');
                 set(handles.penambah_minuman3,'Enable' , 'On');
                 set(handles.penambah_minuman4,'Enable' , 'On');
                 set(handles.pengurang_minuman1,'Enable' , 'On');
                 set(handles.pengurang_minuman2,'Enable' , 'On');
                 set(handles.pengurang_minuman3,'Enable' , 'On');
                 set(handles.pengurang_minuman4,'Enable' , 'On');
                 set(handles.edit_makanan1,'Enable' , 'On');
                 set(handles.edit_makanan2,'Enable' , 'On');
                 set(handles.edit_makanan3,'Enable' , 'On');
                 set(handles.edit_makanan4,'Enable' , 'On');
                 set(handles.edit_makanan5,'Enable' , 'On');
                 set(handles.edit_makanan6,'Enable' , 'On');
                 set(handles.edit_minuman1,'Enable' , 'On');
                 set(handles.edit_minuman2,'Enable' , 'On');
                 set(handles.edit_minuman3,'Enable' , 'On');
                 set(handles.edit_minuman4,'Enable' , 'On');
                 set(handles.radiobutton_makanditempat,'Enable' , 'On');
                 set(handles.radiobutton_takeaway,'Enable' , 'On');
                 set(handles.radiobutton_delivery,'Enable' , 'On');
                 set(handles.pushbutton_hitung,'Enable' , 'On');
            else
                  set(handles.penambah_makanan1,'Enable' , 'Off');
                  set(handles.penambah_makanan2,'Enable' , 'Off');
                  set(handles.penambah_makanan3,'Enable' , 'Off');
                  set(handles.penambah_makanan4,'Enable' , 'Off');
                  set(handles.penambah_makanan5,'Enable' , 'Off');
                  set(handles.penambah_makanan6,'Enable' , 'Off');
                  set(handles.pengurang_makanan1,'Enable' , 'Off');
                  set(handles.pengurang_makanan2,'Enable' , 'Off');
                  set(handles.pengurang_makanan3,'Enable' , 'Off');
                  set(handles.pengurang_makanan4,'Enable' , 'Off');
                  set(handles.pengurang_makanan5,'Enable' , 'Off');
                  set(handles.pengurang_makanan6,'Enable' , 'Off');
                  set(handles.pengurang_makanan1,'Enable' , 'Off');
                  set(handles.penambah_minuman1,'Enable' , 'Off');
                  set(handles.penambah_minuman2,'Enable' , 'Off');
                  set(handles.penambah_minuman3,'Enable' , 'Off');
                  set(handles.penambah_minuman4,'Enable' , 'Off');
                  set(handles.pengurang_minuman1,'Enable' , 'Off');
                  set(handles.pengurang_minuman2,'Enable' , 'Off');
                  set(handles.pengurang_minuman3,'Enable' , 'Off');
                  set(handles.pengurang_minuman4,'Enable' , 'Off');
                  set(handles.edit_makanan1,'Enable' , 'Off');
                  set(handles.edit_makanan2,'Enable' , 'Off');
                  set(handles.edit_makanan3,'Enable' , 'Off');
                  set(handles.edit_makanan4,'Enable' , 'Off');
                  set(handles.edit_makanan5,'Enable' , 'Off');
                  set(handles.edit_makanan6,'Enable' , 'Off');
                  set(handles.edit_minuman1,'Enable' , 'Off');
                  set(handles.edit_minuman2,'Enable' , 'Off');
                  set(handles.edit_minuman3,'Enable' , 'Off');
                  set(handles.edit_minuman4,'Enable' , 'Off');
                  set(handles.radiobutton_makanditempat,'Enable' , 'Off');
                  set(handles.radiobutton_takeaway,'Enable' , 'Off');
                  set(handles.radiobutton_delivery,'Enable' , 'Off');
                  set(handles.pushbutton_hitung,'Enable' , 'Off');
            end
            
function pesan_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to pesan (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)


function edit_makanan1_Callback(hObject, eventdata, handles)
% hObject    handle to edit_makanan1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_makanan1 as text
%        str2double(get(hObject,'String')) returns contents of edit_makanan1 as a double


% --- Executes during object creation, after setting all properties.
function edit_makanan1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_makanan1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in penambah_makanan1.
function penambah_makanan1_Callback(hObject, eventdata, handles)
% hObject    handle to penambah_makanan1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
jumlah_makanan = str2num(get(handles.edit_makanan1, 'string'));
a = jumlah_makanan + 1;
jumlah_makanan = num2str(a);
set(handles.edit_makanan1, 'string', jumlah_makanan);
total_makanan1 = 17000*a;
tot = num2str(total_makanan1);
set(handles.edit_total1, 'string', tot);

function pengurang_makanan1_Callback(hObject, eventdata, handles)
% hObject    handle to pengurang_makanan1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
jumlah_makanan = str2num(get(handles.edit_makanan1, 'string'));
if jumlah_makanan > 0
    a = jumlah_makanan - 1;
end
jumlah_makanan = num2str(a);
set(handles.edit_makanan1, 'string', jumlah_makanan);
total_makanan1 = 17000*a;
tot = num2str(total_makanan1);
set(handles.edit_total1, 'string', tot);

function edit_makanan2_Callback(hObject, eventdata, handles)
% hObject    handle to edit_makanan2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_makanan2 as text
%        str2double(get(hObject,'String')) returns contents of edit_makanan2 as a double


% --- Executes during object creation, after setting all properties.
function edit_makanan2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_makanan2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in penambah_makanan2.
function penambah_makanan2_Callback(hObject, eventdata, handles)
% hObject    handle to penambah_makanan2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
angka = str2num(get(handles.edit_makanan2, 'string'));
a = angka+1;
angka = num2str(a);
set(handles.edit_makanan2, 'string', angka);
total_makanan2 = 13000*a;
tot = num2str(total_makanan2);
set(handles.edit_total2, 'string', tot);

% --- Executes on button press in pengurang_makanan2.
function pengurang_makanan2_Callback(hObject, eventdata, handles)
% hObject    handle to pengurang_makanan2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
angka = str2num(get(handles.edit_makanan2, 'string'));
if angka > 0
    a = angka-1;
end
angka = num2str(a);
set(handles.edit_makanan2, 'string', angka);
total_makanan2 = 13000*a;
tot = num2str(total_makanan2);
set(handles.edit_total2, 'string', tot);

function edit_makanan3_Callback(hObject, eventdata, handles)
% hObject    handle to edit_makanan3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_makanan3 as text
%        str2double(get(hObject,'String')) returns contents of edit_makanan3 as a double


% --- Executes during object creation, after setting all properties.
function edit_makanan3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_makanan3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in penambah_makanan3.
function penambah_makanan3_Callback(hObject, eventdata, handles)
% hObject    handle to penambah_makanan3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
jumlah_makanan = str2num(get(handles.edit_makanan3, 'string'));
a = jumlah_makanan + 1;
jumlah_makanan = num2str(a);
set(handles.edit_makanan3, 'string', jumlah_makanan);
total_makanan3 = 15000*a;
tot = num2str(total_makanan3);
set(handles.edit_total3, 'string', tot);

% --- Executes on button press in pengurang_makanan3.
function pengurang_makanan3_Callback(hObject, eventdata, handles)
% hObject    handle to pengurang_makanan3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
jumlah_makanan = str2num(get(handles.edit_makanan3, 'string'));
if jumlah_makanan > 0
    a = jumlah_makanan - 1;
end
jumlah_makanan = num2str(a);
set(handles.edit_makanan3, 'string', jumlah_makanan);
total_makanan3 = 15000*a;
tot = num2str(total_makanan3);
set(handles.edit_total3, 'string', tot);

function edit_makanan4_Callback(hObject, eventdata, handles)
% hObject    handle to edit_makanan4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_makanan4 as text
%        str2double(get(hObject,'String')) returns contents of edit_makanan4 as a double


% --- Executes during object creation, after setting all properties.
function edit_makanan4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_makanan4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in penambah_makanan4.
function penambah_makanan4_Callback(hObject, eventdata, handles)
% hObject    handle to penambah_makanan4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
jumlah_makanan = str2num(get(handles.edit_makanan4, 'string'));
a = jumlah_makanan + 1;
jumlah_makanan = num2str(a);
set(handles.edit_makanan4, 'string', jumlah_makanan);
total_makanan4 = 15000*a;
tot = num2str(total_makanan4);
set(handles.edit_total4, 'string', tot);

% --- Executes on button press in pengurang_makanan4.
function pengurang_makanan4_Callback(hObject, eventdata, handles)
% hObject    handle to pengurang_makanan4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
jumlah_makanan = str2num(get(handles.edit_makanan4, 'string'));
if jumlah_makanan > 0
    a = jumlah_makanan - 1;
end
jumlah_makanan = num2str(a);
set(handles.edit_makanan4, 'string', jumlah_makanan);
total_makanan4 = 15000*a;
tot = num2str(total_makanan4);
set(handles.edit_total4, 'string', tot);

function edit_makanan5_Callback(hObject, eventdata, handles)
% hObject    handle to edit_makanan5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_makanan5 as text
%        str2double(get(hObject,'String')) returns contents of edit_makanan5 as a double


% --- Executes during object creation, after setting all properties.
function edit_makanan5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_makanan5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in penambah_makanan5.
function penambah_makanan5_Callback(hObject, eventdata, handles)
% hObject    handle to penambah_makanan5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
jumlah_makanan = str2num(get(handles.edit_makanan5, 'string'));
a = jumlah_makanan + 1;
jumlah_makanan = num2str(a);
set(handles.edit_makanan5, 'string', jumlah_makanan);
total_makanan5 = 17000*a;
tot = num2str(total_makanan5);
set(handles.edit_total5, 'string', tot);

% --- Executes on button press in pengurang_makanan5.
function pengurang_makanan5_Callback(hObject, eventdata, handles)
% hObject    handle to pengurang_makanan5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
jumlah_makanan = str2num(get(handles.edit_makanan5, 'string'));
if jumlah_makanan > 0
    a = jumlah_makanan - 1;
end
jumlah_makanan = num2str(a);
set(handles.edit_makanan5, 'string', jumlah_makanan);
total_makanan5 = 17000*a;
tot = num2str(total_makanan5);
set(handles.edit_total5, 'string', tot);

function edit_makanan6_Callback(hObject, eventdata, handles)
% hObject    handle to edit_makanan6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_makanan6 as text
%        str2double(get(hObject,'String')) returns contents of edit_makanan6 as a double


% --- Executes during object creation, after setting all properties.
function edit_makanan6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_makanan6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in penambah_makanan6.
function penambah_makanan6_Callback(hObject, eventdata, handles)
% hObject    handle to penambah_makanan6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
jumlah_makanan = str2num(get(handles.edit_makanan6, 'string'));
a = jumlah_makanan + 1;
jumlah_makanan = num2str(a);
set(handles.edit_makanan6, 'string', jumlah_makanan);
total_makanan6 = 15000*a;
tot = num2str(total_makanan6);
set(handles.edit_total6, 'string', tot);

% --- Executes on button press in pengurang_makanan6.
function pengurang_makanan6_Callback(hObject, eventdata, handles)
% hObject    handle to pengurang_makanan6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
jumlah_makanan = str2num(get(handles.edit_makanan6, 'string'));
if jumlah_makanan > 0
    a = jumlah_makanan - 1;
end
jumlah_makanan = num2str(a);
set(handles.edit_makanan6, 'string', jumlah_makanan);
total_makanan6 = 15000*a;
tot = num2str(total_makanan6);
set(handles.edit_total6, 'string', tot);


function edit_minuman1_Callback(hObject, eventdata, handles)
% hObject    handle to edit_minuman1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_minuman1 as text
%        str2double(get(hObject,'String')) returns contents of edit_minuman1 as a double


% --- Executes during object creation, after setting all properties.
function edit_minuman1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_minuman1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in penambah_minuman1.
function penambah_minuman1_Callback(hObject, eventdata, handles)
% hObject    handle to penambah_minuman1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
jumlah_minuman = str2num(get(handles.edit_minuman1, 'string'));
a = jumlah_minuman + 1;
jumlah_minuman = num2str(a);
set(handles.edit_minuman1, 'string', jumlah_minuman);
total_minuman1 = 3000*a;
tot = num2str(total_minuman1);
set(handles.edit_total7, 'string', tot);


% --- Executes on button press in pengurang_minuman1.
function pengurang_minuman1_Callback(hObject, eventdata, handles)
% hObject    handle to pengurang_minuman1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
jumlah_minuman = str2num(get(handles.edit_minuman1,'string'));
if jumlah_minuman > 0
    a = jumlah_minuman - 1;
end
jumlah_minuman = num2str(a);
set(handles.edit_minuman1, 'string',jumlah_minuman);
total_minuman1 = 3000*a;
tot = num2str(total_minuman1);
set(handles.edit_total7, 'string', tot);


function edit_minuman2_Callback(hObject, eventdata, handles)
% hObject    handle to edit_minuman2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_minuman2 as text
%        str2double(get(hObject,'String')) returns contents of edit_minuman2 as a double


% --- Executes during object creation, after setting all properties.
function edit_minuman2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_minuman2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in penambah_minuman2.
function penambah_minuman2_Callback(hObject, eventdata, handles)
% hObject    handle to penambah_minuman2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
jumlah_minuman = str2num(get(handles.edit_minuman2, 'string'));
a = jumlah_minuman + 1;
jumlah_minuman = num2str(a);
set(handles.edit_minuman2, 'string', jumlah_minuman);
total_minuman2 = 4000*a;
tot = num2str(total_minuman2);
set(handles.edit_total8, 'string', tot);

% --- Executes on button press in pengurang_minuman2.
function pengurang_minuman2_Callback(hObject, eventdata, handles)
% hObject    handle to pengurang_minuman2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
jumlah_minuman = str2num(get(handles.edit_minuman2,'string'));
if jumlah_minuman > 0
    a = jumlah_minuman - 1;
end
jumlah_minuman = num2str(a);
set(handles.edit_minuman2, 'string',jumlah_minuman);
total_minuman2 = 4000*a;
tot = num2str(total_minuman2);
set(handles.edit_total8, 'string', tot);

function edit_minuman3_Callback(hObject, eventdata, handles)
% hObject    handle to edit_minuman3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_minuman3 as text
%        str2double(get(hObject,'String')) returns contents of edit_minuman3 as a double


% --- Executes during object creation, after setting all properties.
function edit_minuman3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_minuman3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in penambah_minuman3.
function penambah_minuman3_Callback(hObject, eventdata, handles)
% hObject    handle to penambah_minuman3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
jumlah_minuman = str2num(get(handles.edit_minuman3, 'string'));
a = jumlah_minuman + 1;
jumlah_minuman = num2str(a);
set(handles.edit_minuman3, 'string', jumlah_minuman);
total_minuman3 = 5000*a;
tot = num2str(total_minuman3);
set(handles.edit_total9, 'string', tot);

% --- Executes on button press in pengurang_minuman3.
function pengurang_minuman3_Callback(hObject, eventdata, handles)
% hObject    handle to pengurang_minuman3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
jumlah_minuman = str2num(get(handles.edit_minuman3,'string'));
if jumlah_minuman > 0
    a = jumlah_minuman - 1;
end
jumlah_minuman = num2str(a);
set(handles.edit_minuman3, 'string',jumlah_minuman);
total_minuman3 = 5000*a;
tot = num2str(total_minuman3);
set(handles.edit_total9, 'string', tot);

function edit_minuman4_Callback(hObject, eventdata, handles)
% hObject    handle to edit_minuman4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_minuman4 as text
%        str2double(get(hObject,'String')) returns contents of edit_minuman4 as a double


% --- Executes during object creation, after setting all properties.
function edit_minuman4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_minuman4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in penambah_minuman4.
function penambah_minuman4_Callback(hObject, eventdata, handles)
% hObject    handle to penambah_minuman4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
jumlah_minuman = str2num(get(handles.edit_minuman4, 'string'));
a = jumlah_minuman + 1;
jumlah_minuman = num2str(a);
set(handles.edit_minuman4, 'string', jumlah_minuman);
total_minuman4 = 10000*a;
tot = num2str(total_minuman4);
set(handles.edit_total10, 'string', tot);

% --- Executes on button press in pengurang_minuman4.
function pengurang_minuman4_Callback(hObject, eventdata, handles)
% hObject    handle to pengurang_minuman4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
jumlah_minuman = str2num(get(handles.edit_minuman4,'string'));
if jumlah_minuman > 0
    a = jumlah_minuman - 1;
end
jumlah_minuman = num2str(a);
set(handles.edit_minuman4, 'string',jumlah_minuman);
total_minuman4 = 10000*a;
tot = num2str(total_minuman4);
set(handles.edit_total10, 'string', tot);


function edit_total1_Callback(hObject, eventdata, handles)
% hObject    handle to edit_total1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_total1 as text
%        str2double(get(hObject,'String')) returns contents of edit_total1 as a double


% --- Executes during object creation, after setting all properties.
function edit_total1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_total1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_total7_Callback(hObject, eventdata, handles)
% hObject    handle to edit_total7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_total7 as text
%        str2double(get(hObject,'String')) returns contents of edit_total7 as a double


% --- Executes during object creation, after setting all properties.
function edit_total7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_total7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_total9_Callback(hObject, eventdata, handles)
% hObject    handle to edit_total9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_total9 as text
%        str2double(get(hObject,'String')) returns contents of edit_total9 as a double


% --- Executes during object creation, after setting all properties.
function edit_total9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_total9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_total8_Callback(hObject, eventdata, handles)
% hObject    handle to edit_total8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_total8 as text
%        str2double(get(hObject,'String')) returns contents of edit_total8 as a double


% --- Executes during object creation, after setting all properties.
function edit_total8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_total8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_total10_Callback(hObject, eventdata, handles)
% hObject    handle to edit_total10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_total10 as text
%        str2double(get(hObject,'String')) returns contents of edit_total10 as a double


% --- Executes during object creation, after setting all properties.
function edit_total10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_total10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_total2_Callback(hObject, eventdata, handles)
% hObject    handle to edit_total2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_total2 as text
%        str2double(get(hObject,'String')) returns contents of edit_total2 as a double


% --- Executes during object creation, after setting all properties.
function edit_total2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_total2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_total3_Callback(hObject, eventdata, handles)
% hObject    handle to edit_total3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_total3 as text
%        str2double(get(hObject,'String')) returns contents of edit_total3 as a double


% --- Executes during object creation, after setting all properties.
function edit_total3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_total3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_total4_Callback(hObject, eventdata, handles)
% hObject    handle to edit_total4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_total4 as text
%        str2double(get(hObject,'String')) returns contents of edit_total4 as a double


% --- Executes during object creation, after setting all properties.
function edit_total4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_total4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_total5_Callback(hObject, eventdata, handles)
% hObject    handle to edit_total5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_total5 as text
%        str2double(get(hObject,'String')) returns contents of edit_total5 as a double


% --- Executes during object creation, after setting all properties.
function edit_total5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_total5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_total6_Callback(hObject, eventdata, handles)
% hObject    handle to edit_total6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_total6 as text
%        str2double(get(hObject,'String')) returns contents of edit_total6 as a double


% --- Executes during object creation, after setting all properties.
function edit_total6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_total6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in radiobutton_makanditempat.
function radiobutton_makanditempat_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton_makanditempat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton_makanditempat


% --- Executes on button press in radiobutton_takeaway.
function radiobutton_takeaway_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton_takeaway (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton_takeaway


% --- Executes on button press in radiobutton_delivery.
function radiobutton_delivery_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton_delivery (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton_delivery

% --- Executes when selected object is changed in uibuttongroup1.
function uibuttongroup1_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uibuttongroup1 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles = guidata(hObject);

switch get(eventdata.NewValue, 'Tag');
    case 'radiobutton_makanditempat'
        biaya = 0;
    case 'radiobutton_takeaway'
        biaya = 1000;
    case 'radiobutton_delivery'
        biaya = 5000;
        radiobuttonStatus = get(handles.radiobutton_delivery, 'Value');
            if (radiobuttonStatus)
                 set(handles.checkbox_alamat, 'Enable', 'On');
            else
                  set(handles.checkbox_alamat, 'Enable', 'Off');
            end
end
b = num2str(biaya);
set(handles.edit_biaya, 'string', biaya);



function edit_total_Callback(hObject, eventdata, handles)
% hObject    handle to edit_total (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_total as text
%        str2double(get(hObject,'String')) returns contents of edit_total as a double


% --- Executes during object creation, after setting all properties.
function edit_total_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_total (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_biaya_Callback(hObject, eventdata, handles)
% hObject    handle to edit_biaya (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_biaya as text
%        str2double(get(hObject,'String')) returns contents of edit_biaya as a double


% --- Executes during object creation, after setting all properties.
function edit_biaya_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_biaya (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in checkbox_alamat.
function checkbox_alamat_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox_alamat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox_alamat
checkboxStatus = get(handles.checkbox_alamat, 'Value');
if (checkboxStatus)
    set(handles.edit_alamat, 'Enable', 'On');
else
    set(handles.edit_alamat, 'Enable', 'Off');
end



function edit_grandtotal_Callback(hObject, eventdata, handles)
% hObject    handle to edit_grandtotal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_grandtotal as text
%        str2double(get(hObject,'String')) returns contents of edit_grandtotal as a double


% --- Executes during object creation, after setting all properties.
function edit_grandtotal_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_grandtotal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton_hitung.
function pushbutton_hitung_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_hitung (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
totalmakanan1 = str2num(get(handles.edit_total1, 'string'));
totalmakanan2 = str2num(get(handles.edit_total2, 'string'));
totalmakanan3 = str2num(get(handles.edit_total3, 'string'));
totalmakanan4 = str2num(get(handles.edit_total4, 'string'));
totalmakanan5 = str2num(get(handles.edit_total5, 'string'));
totalmakanan6 = str2num(get(handles.edit_total6, 'string'));
totalminuman1 = str2num(get(handles.edit_total7, 'string'));
totalminuman2 = str2num(get(handles.edit_total8, 'string'));
totalminuman3 = str2num(get(handles.edit_total9, 'string'));
totalminuman4 = str2num(get(handles.edit_total10, 'string'));
total_menu = totalmakanan1+totalmakanan2+totalmakanan3+totalmakanan4+totalmakanan5+totalmakanan6+totalminuman1+totalminuman2+totalminuman3+totalminuman4;
total_menuu= num2str(total_menu);
set(handles.edit_total, 'string',total_menuu);

biaya = str2num(get(handles.edit_biaya, 'string'));
grandtotal = total_menu+biaya;
sgrandtotal=num2str(grandtotal);
set(handles.edit_grandtotal,'string',sgrandtotal);
