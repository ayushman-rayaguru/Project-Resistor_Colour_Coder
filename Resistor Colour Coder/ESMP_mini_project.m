function varargout = ESMP_mini_project(varargin)
% ESMP_MINI_PROJECT MATLAB code for ESMP_mini_project.fig
%      ESMP_MINI_PROJECT, by itself, creates a new ESMP_MINI_PROJECT or raises the existing
%      singleton*.
%
%      H = ESMP_MINI_PROJECT returns the handle to a new ESMP_MINI_PROJECT
%      or the handle to
%      the existing singleton*.
%
%      ESMP_MINI_PROJECT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ESMP_MINI_PROJECT.M with the given input arguments.
%
%      ESMP_MINI_PROJECT('Property','Value',...) creates a new ESMP_MINI_PROJECT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ESMP_mini_project_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ESMP_mini_project_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ESMP_mini_project

% Last Modified by GUIDE v2.5 25-May-2021 15:08:02

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ESMP_mini_project_OpeningFcn, ...
                   'gui_OutputFcn',  @ESMP_mini_project_OutputFcn, ...
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


% --- Executes just before ESMP_mini_project is made visible.
function ESMP_mini_project_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ESMP_mini_project (see VARARGIN)
%-----------
% changeIcon
%jFrame=get(handles.figure1,'javaframe');
%jIcon=javax.swing.ImageIcon('respng.png');
%jFrame.setFigureIcon(jIcon);
%-----------
ha = axes('units','pixels', ...
            'position',[0, 0, 1280, 640],'Visible','off');
% Move the background axes to the bottom
uistack(ha,'bottom');
% Load in a background image and display it using the correct colors
% The image used below, is in the Image Processing Toolbox.  If you do not have %access to this toolbox, you can use another image file instead.
I=imread('esm.jpg');
imagesc(I)
% Choose default command line output for ESMP_mini_project
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ESMP_mini_project wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ESMP_mini_project_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function screen_Callback(hObject, eventdata, handles)
% hObject    handle to screen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of screen as text
%        str2double(get(hObject,'String')) returns contents of screen as a double


% --- Executes during object creation, after setting all properties.
%function screen_CreateFcn(hObject, eventdata, handles)
% hObject    handle to screen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
%if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
 %  set(hObject,'BackgroundColor','white');
%end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(handles.screen,'String');
set(handles.screen,'string',strcat(S,'1'));

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(handles.screen,'String');
set(handles.screen,'string',strcat(S,'2'));

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(handles.screen,'String');
set(handles.screen,'string',strcat(S,'3'));

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(handles.screen,'String');
set(handles.screen,'string',strcat(S,'4'));

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(handles.screen,'String');
set(handles.screen,'string',strcat(S,'5'));

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(handles.screen,'String');
set(handles.screen,'string',strcat(S,'6'));

% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(handles.screen,'String');
set(handles.screen,'string',strcat(S,'7'));

% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(handles.screen,'String');
set(handles.screen,'string',strcat(S,'8'));

% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(handles.screen,'String');
set(handles.screen,'string',strcat(S,'9'));

% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(handles.screen,'String');
set(handles.screen,'string',strcat(S,'0'));

% --- Executes on button press in pushreset.
function pushreset_Callback(hObject, eventdata, handles)
% hObject    handle to pushreset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.screen,'string','');
set(handles.screen2,'string','');
set(handles.black,'BackgroundColor',[0.95 0.95 0.95]);
set(handles.brown,'BackgroundColor',[0.95 0.95 0.95]);
set(handles.red,'BackgroundColor',[0.95 0.95 0.95]);
set(handles.orange,'BackgroundColor',[0.95 0.95 0.95]);
set(handles.yellow,'BackgroundColor',[0.95 0.95 0.95]);
set(handles.green,'BackgroundColor',[0.95 0.95 0.95]);
set(handles.blue,'BackgroundColor',[0.95 0.95 0.95]);
set(handles.violet,'BackgroundColor',[0.95 0.95 0.95]);
set(handles.grey,'BackgroundColor',[0.95 0.95 0.95]);
set(handles.white,'BackgroundColor',[0.95 0.95 0.95]);

% --- Executes on button press in pushResult.
function pushResult_Callback(hObject, eventdata, handles)
% hObject    handle to pushResult (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%x = 9876;
%
%x = str2num(get(handles.screen,'String'));
%xstr = num2str(x);
%xarray = zeros(1,numel(xstr));
%for i=1:numel(xstr)
%xarray(i) = str2num(xstr(i));
%end
%----------------------------
x = str2num(get(handles.screen,'String'));
y = x;
c = 0;
while mod(y,10) == 0 %Count trailing zeroes
    c = c + 1;
    y = y/10;
end
xstr = num2str(x);
xarray = zeros(1,numel(xstr));
for i=1:numel(xstr)
xarray(i) = str2num(xstr(i));
end

if c == 0
    ok = 0;
elseif c == i-1
    xarray(length(xarray) - (c - 2)) = c - 1;
    xarray = xarray(1:length(xarray) - (c - 2));
else
    xarray(length(xarray) - (c - 1)) = c;
    xarray = xarray(1:length(xarray) - (c - 1));
end
%

l = length(xarray);
i = 0;
while l >= 0
    l = l - 1;
    i = i + 1;
    if xarray(i) == 0
        set(handles.black,'BackgroundColor',[0 0 0]);%Black
        S2 = get(handles.screen2,'String');
        set(handles.screen2,'string',strcat(S2,'Black >'));
    elseif xarray(i) == 1
        set(handles.brown,'BackgroundColor',[0.6350 0.0780 0.1840]);%Brown
        S2 = get(handles.screen2,'String');
        set(handles.screen2,'string',strcat(S2,'Brown >'));
    elseif xarray(i) == 2
        set(handles.red,'BackgroundColor','red');%red
        S2 = get(handles.screen2,'String');
        set(handles.screen2,'string',strcat(S2,'Red >'));
    elseif xarray(i) == 3
        set(handles.orange,'BackgroundColor',[1 0.5 0]);%orange
        S2 = get(handles.screen2,'String');
        set(handles.screen2,'string',strcat(S2,'Orange >'));
    elseif xarray(i) == 4
        set(handles.yellow,'BackgroundColor','yellow');%yellow
        S2 = get(handles.screen2,'String');
        set(handles.screen2,'string',strcat(S2,'Yellow >'));
    elseif xarray(i) == 5
        set(handles.green,'BackgroundColor','green');%green
        S2 = get(handles.screen2,'String');
        set(handles.screen2,'string',strcat(S2,'Green >'));
    elseif xarray(i) == 6
        set(handles.blue,'BackgroundColor','blue');%blue
        S2 = get(handles.screen2,'String');
        set(handles.screen2,'string',strcat(S2,'Blue >'));
    elseif xarray(i) == 7
        set(handles.violet,'BackgroundColor',[0.75 0 0.75]);%violet
        S2 = get(handles.screen2,'String');
        set(handles.screen2,'string',strcat(S2,'Violet >'));
    elseif xarray(i) == 8
        set(handles.grey,'BackgroundColor',[0.5 0.5 0.5]); %grey
        S2 = get(handles.screen2,'String');
        set(handles.screen2,'string',strcat(S2,'Grey >'));
    elseif xarray(i) == 9
        set(handles.white,'BackgroundColor',[1 1 1]); %white
        S2 = get(handles.screen2,'String');
        set(handles.screen2,'string',strcat(S2,'White >'));
    
    end
end



function screen2_Callback(hObject, eventdata, handles)
% hObject    handle to screen2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of screen2 as text
%        str2double(get(hObject,'String')) returns contents of screen2 as a double


% --- Executes during object creation, after setting all properties.
function screen2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to screen2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes on button press in pushblack.
function pushblack_Callback(hObject, eventdata, handles)
% hObject    handle to pushblack (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S1 = get(handles.screenohm,'String');
set(handles.screenohm,'string',strcat(S1,'0'));

% --- Executes on button press in pushbrown.
function pushbrown_Callback(hObject, eventdata, handles)
% hObject    handle to pushbrown (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S1 = get(handles.screenohm,'String');
set(handles.screenohm,'string',strcat(S1,'1'));

% --- Executes on button press in pushred.
function pushred_Callback(hObject, eventdata, handles)
% hObject    handle to pushred (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S1 = get(handles.screenohm,'String');
set(handles.screenohm,'string',strcat(S1,'2'));

% --- Executes on button press in pushorange.
function pushorange_Callback(hObject, eventdata, handles)
% hObject    handle to pushorange (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S1 = get(handles.screenohm,'String');
set(handles.screenohm,'string',strcat(S1,'3'));

% --- Executes on button press in pushyellow.
function pushyellow_Callback(hObject, eventdata, handles)
% hObject    handle to pushyellow (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S1 = get(handles.screenohm,'String');
set(handles.screenohm,'string',strcat(S1,'4'));

% --- Executes on button press in pushgreen.
function pushgreen_Callback(hObject, eventdata, handles)
% hObject    handle to pushgreen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S1 = get(handles.screenohm,'String');
set(handles.screenohm,'string',strcat(S1,'5'));

% --- Executes on button press in pushblue.
function pushblue_Callback(hObject, eventdata, handles)
% hObject    handle to pushblue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S1 = get(handles.screenohm,'String');
set(handles.screenohm,'string',strcat(S1,'6'));

% --- Executes on button press in pushviolet.
function pushviolet_Callback(hObject, eventdata, handles)
% hObject    handle to pushviolet (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S1 = get(handles.screenohm,'String');
set(handles.screenohm,'string',strcat(S1,'7'));

% --- Executes on button press in pushgrey.
function pushgrey_Callback(hObject, eventdata, handles)
% hObject    handle to pushgrey (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S1 = get(handles.screenohm,'String');
set(handles.screenohm,'string',strcat(S1,'8'));

% --- Executes on button press in pushwhite.
function pushwhite_Callback(hObject, eventdata, handles)
% hObject    handle to pushwhite (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S1 = get(handles.screenohm,'String');
set(handles.screenohm,'string',strcat(S1,'9'));

% --- Executes on button press in tolbrown.
function tolbrown_Callback(hObject, eventdata, handles)
% hObject    handle to tolbrown (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S1 = get(handles.screenohm,'String');
set(handles.screenohm,'string',strcat(S1,'1'));

% --- Executes on button press in tolred.
function tolred_Callback(hObject, eventdata, handles)
% hObject    handle to tolred (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S1 = get(handles.screenohm,'String');
set(handles.screenohm,'string',strcat(S1,'2'));

% --- Executes on button press in tolgreen.
function tolgreen_Callback(hObject, eventdata, handles)
% hObject    handle to tolgreen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S1 = get(handles.screenohm,'String');
set(handles.screenohm,'string',strcat(S1,'5'));

% --- Executes on button press in tolblue.
function tolblue_Callback(hObject, eventdata, handles)
% hObject    handle to tolblue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S1 = get(handles.screenohm,'String');
set(handles.screenohm,'string',strcat(S1,'6'));

% --- Executes on button press in tolviolet.
function tolviolet_Callback(hObject, eventdata, handles)
% hObject    handle to tolviolet (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S1 = get(handles.screenohm,'String');
set(handles.screenohm,'string',strcat(S1,'7'));

% --- Executes on button press in tolgold.
function tolgold_Callback(hObject, eventdata, handles)
% hObject    handle to tolgold (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S1 = get(handles.screenohm,'String');
set(handles.screenohm,'string',strcat(S1,'3'));

% --- Executes on button press in tolsilver.
function tolsilver_Callback(hObject, eventdata, handles)
% hObject    handle to tolsilver (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S1 = get(handles.screenohm,'String');
set(handles.screenohm,'string',strcat(S1,'4'));

% --- Executes on button press in tolnone.
function tolnone_Callback(hObject, eventdata, handles)
% hObject    handle to tolnone (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S1 = get(handles.screenohm,'String');
set(handles.screenohm,'string',strcat(S1,'0'));

% --- Executes during object creation, after setting all properties.


% --- Executes on button press in pushcalculate.
function pushcalculate_Callback(hObject, eventdata, handles)
% hObject    handle to pushcalculate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x1 = str2num(get(handles.screenohm,'String'));
xstr1 = num2str(x1);
xarray1 = zeros(1,numel(xstr1));
for i=1:numel(xstr1)
xarray1(i) = str2num(xstr1(i));
end

l = length(xarray1);
il = 0;
sum = 0;
while il < l-2      %skipping multiplier and tolerance band
   il = il + 1;
   sum = sum * 10 + xarray1(il);
end
res = sum * (10.^xarray1(l-1));

if xarray1(l) == 1
    tol = res * (1/100);
elseif xarray1(l) == 2
    tol = res * (2/100);
elseif xarray1(l) == 5
    tol = res * (0.5/100);
elseif xarray1(l) == 6
    tol = res * (0.25/100);
elseif xarray1(l) == 7
    tol = res * (0.1/100);
elseif xarray1(l) == 3
    tol = res * (5/100);
elseif xarray1(l) == 4
    tol = res * (10/100);
else
    tol = res * (20/100);
end

resstr = num2str(res);
tolstr = num2str(tol);

set(handles.screenohm,'string','');
S1 = get(handles.screenohm,'String');
set(handles.screenohm,'string',strcat(S1,resstr));      %resistance
S1 = get(handles.screenohm,'String');
set(handles.screenohm,'string',strcat(S1,' +-'));       %plus minus
S1 = get(handles.screenohm,'String');
set(handles.screenohm,'string',strcat(S1,tolstr));      %tolerance
set(handles.screenohm,'ForegroundColor',[0 0 0]);



function screenohm_Callback(hObject, eventdata, handles)
% hObject    handle to screenohm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of screenohm as text
%        str2double(get(hObject,'String')) returns contents of screenohm as a double


% --- Executes during object creation, after setting all properties.
function screenohm_CreateFcn(hObject, eventdata, handles)
% hObject    handle to screenohm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in colreset.
function colreset_Callback(hObject, eventdata, handles)
% hObject    handle to colreset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.screenohm,'string','');
set(handles.screenohm,'ForegroundColor',[1 1 1]);
