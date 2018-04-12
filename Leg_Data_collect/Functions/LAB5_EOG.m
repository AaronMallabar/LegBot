function varargout = LAB5_EOG(varargin)
% Edited by: Akram Marseet
% am9550@rit.edu 
% BioRobotics. Spring 2018

% LAB5_EOG M-file for LAB5_EOG.fig
%      LAB5_EOG, by itself, creates a new LAB5_EOG or raises the existing
%      singleton*.
%
%      H = LAB5_EOG returns the handle to a new LAB5_EOG or the handle to
%      the existing singleton*.
%
%      LAB5_EOG('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LAB5_EOG.M with the given input arguments.
%
%      LAB5_EOG('Property','Value',...) creates a new LAB5_EOG or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before LAB5_EOG_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to LAB5_EOG_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help LAB5_EOG

% Last Modified by GUIDE v2.5 20-Mar-2018 03:14:55

% Begin initialization code - DO NOT EDIT

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @LAB5_EOG_OpeningFcn, ...
                   'gui_OutputFcn',  @LAB5_EOG_OutputFcn, ...
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


% --- Executes just before LAB5_EOG is made visible.
function LAB5_EOG_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to LAB5_EOG (see VARARGIN)

% Choose default command line output for LAB5_EOG
handles.output = hObject;
% set(handles.ch1,'visible','on')
set(handles.P1,'visible','off')
set(handles.P2,'visible','off')
set(handles.P3,'visible','off')
guidata(hObject, handles);

% UIWAIT makes LAB5_EOG wait for user response (see UIRESUME)
% uiwait(handles.figMain);

initGlobals();


% --- Outputs from this function are returned to the command line.
function varargout = LAB5_EOG_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function txtDLLPath_Callback(hObject, eventdata, handles)
% hObject    handle to txtDLLPath (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtDLLPath as text
%        str2double(get(hObject,'String')) returns contents of txtDLLPath as a double


% --- Executes during object creation, after setting all properties.
function txtDLLPath_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtDLLPath (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtConfigPath_Callback(hObject, eventdata, handles)
% hObject    handle to txtConfigPath (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtConfigPath as text
%        str2double(get(hObject,'String')) returns contents of txtConfigPath as a double


% --- Executes during object creation, after setting all properties.
function txtConfigPath_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtConfigPath (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btnDLLPath.
function btnDLLPath_Callback(hObject, eventdata, handles)
% hObject    handle to btnDLLPath (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get and Set the DLL Path name
[FileName,PathName] = uigetfile('*.dll','Select BioRadio DLL');
set(handles.txtDLLPath,'String',PathName);

% --- Executes on button press in btnConfigPath.
function btnConfigPath_Callback(hObject, eventdata, handles)
% hObject    handle to btnConfigPath (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

[FileName,PathName] = uigetfile('*.ini','Select BioRadio Config File');
%set(handles.txtConfigPath,'String',strcat(PathName,FileName));

% --- Executes on selection change in cboPortName.
function cboPortName_Callback(hObject, eventdata, handles)
% hObject    handle to cboPortName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)




% --- Executes during object creation, after setting all properties.
function cboPortName_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cboPortName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btnConnect.
function btnConnect_Callback(hObject, eventdata, handles)
% hObject    handle to btnConnect (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global bioRadioHandle isCollecting;
%global channelNumbers Fs hl  hh hn windowSize rawData;

buttonString = get(handles.btnConnect,'String');

if( strcmp(buttonString,'Connect') )
        
    % Get Configuration info
    dllPath = get(handles.txtDLLPath,'String');
    
    portNames = get(handles.cboPortName,'String');
    portSel = get(handles.cboPortName,'Value');
    portName = portNames{portSel};

    % Change the Button
    set(handles.btnConnect,'String', 'Connecting');
    set(handles.btnConnect,'Enable','off');

    pause(0.1);

    % Connect to the Radio
    bioRadioHandle = connectBioRadio(dllPath,portName);

    % Change the Button
    set(handles.btnConnect,'String', 'Disconnect');
    set(handles.btnConnect,'Enable','on');
    pause(0.1);

    % Set the collecting flag
    isCollecting = 1;
    % Setup the intial collectio interval
    collectionInterval = str2double(get(handles.txtCollectionInt,'String'));
    currentData = collectBioRadioData();          % Collected Data
    channelNumbers=length(currentData(:,1));      % Number of Cannels received from BioRadio 150
    rawData = zeros( channelNumbers,collectionInterval); % Initial Data Matrix
    %% Sampling Frequency
    %
    fsvec = str2double(get(handles.fs,'String'));
    fsi = get(handles.fs,'Value');
    Fs = fsvec(fsi) ;     % Read the Sampling Frequency  
    
    
    
    
    %% panel Parents
    % Starting X axis for each Panel parent
    XP1=160; 
    XP2=685;
    XP3=1190;    
    % Width of all Panel parents
    WP=500;
    HGUI =920; % High of the GUI
     %% Offsets of the axes figures with respect to the parent panels
    DXA=50;
    DYA=30;
    DWA=25;
    Div=[2 1.2 1.2 1 1 1 1 1];
    %
    % Hight of all Panel parents    
    HP=fix(HGUI/Div(channelNumbers));
    % Starting Y of all Panel parents
    YP=(HGUI-HP)/2; 
    %  
    %% Width of all figures 
    WA=WP-DXA-DWA;
    %% Parent Panels
    pan1=uipanel('Units', 'pixels','Position',[XP1 YP WP HP]); % Panel Parent for the rawData
    set(handles.P1,'visible','on')
    set(handles.P1,'position',[XP1+DXA+(WA-150)/2 HP+YP+20 150 30])
    pan2=uipanel('Units', 'pixels','Position',[XP2 YP WP HP]); % Panel Parent for the Filtered_rawData
    set(handles.P2,'visible','on')
    set(handles.P2,'position',[XP2+DXA+(WA-160)/2 HP+YP+20 160.0 30])
    pan3=uipanel('Units', 'pixels','Position',[XP3 YP WP HP]); % Panel Parent for the FFT_Filtered_rawData
    set(handles.P3,'visible','on')
    set(handles.P3,'position',[XP3+DXA+(WA-210)/2 HP+YP+20 210.0 30])
    %
    %% Hight of each Figure
    HA=fix((HP-DYA/1.5)/channelNumbers)-DYA-20;
    %
    %% Initial Vector of the starting Y axis for each figure
    YA=zeros(1,channelNumbers);
    % Axes handles
     for i=1:channelNumbers
         %% Starting Y Axis for all the lowest figures with respect to their panel Parents
         YA(i)=i*DYA+(i-1)*HA+15*(i-1);
         rawAxes(i)=axes('Parent', pan1,'Units', 'pixels','Position',[DXA+10 YA(i) WA HA]);
    
         filterAxes(i)=axes('Parent', pan2,'Units', 'pixels','Position',[DXA-15 YA(i) WA HA]);
         
         fftAxes(i)=axes('Parent', pan3,'Units', 'pixels','Position',[DXA-5 YA(i) WA HA]);
     end 
    while( isCollecting == 1 )

        %% Get the current collection interval size
        windowSize = str2double(get(handles.txtCollectionInt,'String'));
        %
        %% Collect the channel data from the BioRadio
        %
        currentData = collectBioRadioData();
        %
        %% 
        %
        rawData = horzcat(rawData, currentData);
        %
        %% Get the total Size of the concatinated data
        tSize= length( rawData(1,:) );
    if windowSize > tSize
        % Pad with zeros
        rawData = horzcat( zeros(channelNumbers,windowSize-tSize), rawData );
    else
        % Resize data to specified window size padding zeros if need be
        rawData = rawData(1:channelNumbers,tSize-windowSize+1:tSize);
    end     
    
    %% Band Pass Filter
    
    
   
       
        %% Implement Filtering
        
        filteredData(1, :) = wden(rawData(1, :),'modwtsqtwolog','s','mln',4,'sym4');
        filteredData(2, :) = wden(rawData(2, :),'modwtsqtwolog','s','mln',4,'sym4');
        filteredData(3, :) = wden(rawData(3, :),'modwtsqtwolog','s','mln',4,'sym4');
        filteredData(4, :) = wden(rawData(4, :),'modwtsqtwolog','s','mln',4,'sym4');
        % ############################################
        
        %% Normalization
        NfilteredData(1, :) = filteredData(1, :) - mean(filteredData(1, :));
        NfilteredData(2, :) = filteredData(2, :) - mean(filteredData(2, :));
        NfilteredData(3, :) = filteredData(3, :) - mean(filteredData(3, :));
        NfilteredData(4, :) = filteredData(4, :) - mean(filteredData(4, :));
        
        sum1=sum(abs(NfilteredData(1, :)));
        sum2=sum(NfilteredData(2, :))
        sum3=sum(abs(NfilteredData(3, :)));
        sum4=sum(NfilteredData(4, :))
        
        % ############################################
        %% Calculate FFT
        
         t = (0:length(rawData)-1)/Fs;
         Lt=length(t);
         f=(-Lt/2+1:Lt/2)*Fs/Lt;
      
         fft_1 = abs(fftshift(fft(NfilteredData(1, :))))/Lt;
         fft_2 = abs(fftshift(fft(NfilteredData(2, :))))/Lt;
         fft_3 = abs(fftshift(fft(rawData(3, :))))/Lt;
         fft_4 = abs(fftshift(fft(rawData(4, :))))/Lt;



   % Plot Raw Data
    plot(rawAxes(4),rawData(4,:));
    ylabel(rawAxes(4),['Ch',num2str(4),''])
    axis(rawAxes(4),[0 Inf -5 0]);
    
    plot(rawAxes(3),rawData(3,:));
    ylabel(rawAxes(3),['Ch',num2str(3),''])
    axis(rawAxes(3),[0 Inf -5 0]);
    
    plot(rawAxes(2),rawData(2,:));
    ylabel(rawAxes(2),['Ch',num2str(2),''])
    axis(rawAxes(2),[0 Inf -5 0]);
    
    plot(rawAxes(1),rawData(1,:));
    ylabel(rawAxes(1),['Ch',num2str(1),''])
    axis(rawAxes(1),[0 Inf -10 -5]);
    
    %% Plot filtered Data
    plot(filterAxes(4),NfilteredData(4, :));
    axis(filterAxes(4),[0 Inf -2 2]);
    plot(filterAxes(3),NfilteredData(3, :));
    axis(filterAxes(3),[0 Inf -2 2]);
    
    plot(filterAxes(2),NfilteredData(2, :));
    axis(filterAxes(2),[0 Inf -2 2]);
    plot(filterAxes(1),NfilteredData(1, :));
    axis(filterAxes(1),[0 Inf -2 2]);
        % ############################################
    % Plot fft
    plot(fftAxes(4),f, fft_4);
    axis(fftAxes(4),[-200 200 , 0 .5])
    plot(fftAxes(3),f, fft_3);
    axis(fftAxes(3),[-200 200 , 0 .5])
    plot(fftAxes(2),f, fft_2);
    axis(fftAxes(2),[-200 200 , 0 .5])
    plot(fftAxes(1),f, fft_1);
    axis(fftAxes(1),[-200 200 , 0 .5])

    %%EOG Classification
        %These numbers are for 10000 samples
    kick_out_thresh = 22100; 
    kick_in_thresh = 50;
    ankle_extend_thresh = 350;
    ankle_retract_thresh = 250;
   
    %
     %set(handles.Exc,'string','#########')
    %
%     %Where ############ is 'Move In' or "Move Out'
%      if sum1 >= kick_out_thresh
%           set(handles.Exc,'string','Kick out');
%           %csvwrite('Kick_Out_Data_8.csv',NfilteredData(1,:)');
%      elseif sum2 <= kick_in_thresh
%           set(handles.Exc,'string','kick in'); 
%          % csvwrite('Kick_In_Data_20.csv',NfilteredData(1,:)');
% %     elseif sum3 >= ankle_extend_thresh
% %      set(handles.Exc,'string','ankle extend'); 
% %     elseif sum4 >= ankle_retrack_thresh
% %      set(handles.Exc,'string','ankle retract');
%      else
%        set(handles.Exc,'string','Ummm....');  
%      end 
           set(handles.Exc,'string','Ready to Save');
           csvwrite('A_Relax_41.csv',NfilteredData(:,:)');
    
        % Wait for 1 ms
        pause(.080);
    end
else
    
    % Change the Button
    set(handles.btnConnect,'String', 'Disconnecting');
    set(handles.btnConnect,'Enable','off');
    pause(0.1);
    
    disconnectBioRadio(bioRadioHandle);
    
    isCollecting = 0;
     
    % Flag that radio is disconnected
    bioRadioHandle = -1;
    
    % Change the Button
    set(handles.btnConnect,'String', 'Connect');
    set(handles.btnConnect,'Enable','on');
    pause(0.1);
    
end

% --- Executes when user attempts to close figMain.
function figMain_CloseRequestFcn(hObject, eventdata, handles)
% hObject    handle to figMain (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: delete(hObject) closes the figure
delete(hObject);

global bioRadioHandle;
global isCollecting;

isCollecting = 0;

if( bioRadioHandle ~= -1 )
    disconnectBioRadio(bioRadioHandle);
end



function txtCollectionInt_Callback(hObject, eventdata, handles)
% hObject    handle to txtCollectionInt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtCollectionInt as text
%        str2double(get(hObject,'String')) returns contents of txtCollectionInt as a double


% --- Executes during object creation, after setting all properties.
function txtCollectionInt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtCollectionInt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btnFiltdemo.
function btnFiltdemo_Callback(hObject, eventdata, handles)
% hObject    handle to btnFiltdemo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

filterdesign();


% --- Executes on button press in btnSetFilterCoeff.
function btnSetFilterCoeff_Callback(hObject, eventdata, handles)
% hObject    handle to btnSetFilterCoeff (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function txtLeftThreshold_Callback(hObject, eventdata, handles)
% hObject    handle to txtLeftThreshold (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtLeftThreshold as text
%        str2double(get(hObject,'String')) returns contents of txtLeftThreshold as a double


% --- Executes during object creation, after setting all properties.
function txtLeftThreshold_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtLeftThreshold (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtRightThreshold_Callback(hObject, eventdata, handles)
% hObject    handle to txtRightThreshold (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtRightThreshold as text
%        str2double(get(hObject,'String')) returns contents of txtRightThreshold as a double


% --- Executes during object creation, after setting all properties.
function txtRightThreshold_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtRightThreshold (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function rawChannel1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rawChannel1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate rawChannel1



function NCH_Callback(hObject, eventdata, handles)
% hObject    handle to NCH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of NCH as text
%        str2double(get(hObject,'String')) returns contents of NCH as a double


% --- Executes during object creation, after setting all properties.
function NCH_CreateFcn(hObject, eventdata, handles)
% hObject    handle to NCH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fs_Callback(hObject, eventdata, handles)
% hObject    handle to fs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fs as text
%        str2double(get(hObject,'String')) returns contents of fs as a double


% --- Executes during object creation, after setting all properties.
function fs_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fu_Callback(hObject, eventdata, handles)
% hObject    handle to fu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fu as text
%        str2double(get(hObject,'String')) returns contents of fu as a double


% --- Executes during object creation, after setting all properties.
function fu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fl_Callback(hObject, eventdata, handles)
% hObject    handle to fl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fl as text
%        str2double(get(hObject,'String')) returns contents of fl as a double


% --- Executes during object creation, after setting all properties.
function fl_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in nl.
function nl_Callback(hObject, eventdata, handles)
% hObject    handle to nl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns nl contents as cell array
%        contents{get(hObject,'Value')} returns selected item from nl


% --- Executes during object creation, after setting all properties.
function nl_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in nh.
function nh_Callback(hObject, eventdata, handles)
% hObject    handle to nh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns nh contents as cell array
%        contents{get(hObject,'Value')} returns selected item from nh


% --- Executes during object creation, after setting all properties.
function nh_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit15_Callback(hObject, eventdata, handles)
% hObject    handle to NCH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of NCH as text
%        str2double(get(hObject,'String')) returns contents of NCH as a double


% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to NCH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ymin1_Callback(hObject, eventdata, handles)
% hObject    handle to ymin1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ymin1 as text
%        str2double(get(hObject,'String')) returns contents of ymin1 as a double


% --- Executes during object creation, after setting all properties.
function ymin1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ymin1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ymax1_Callback(hObject, eventdata, handles)
% hObject    handle to ymax1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ymax1 as text
%        str2double(get(hObject,'String')) returns contents of ymax1 as a double


% --- Executes during object creation, after setting all properties.
function ymax1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ymax1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in nl.
function nf_Callback(hObject, eventdata, handles)
% hObject    handle to nl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns nl contents as cell array
%        contents{get(hObject,'Value')} returns selected item from nl


% --- Executes during object creation, after setting all properties.
function nf_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit19_Callback(hObject, eventdata, handles)
% hObject    handle to fl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fl as text
%        str2double(get(hObject,'String')) returns contents of fl as a double


% --- Executes during object creation, after setting all properties.
function edit19_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in nl.
function popupmenu6_Callback(hObject, eventdata, handles)
% hObject    handle to nl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns nl contents as cell array
%        contents{get(hObject,'Value')} returns selected item from nl


% --- Executes during object creation, after setting all properties.
function popupmenu6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in nh.
function popupmenu7_Callback(hObject, eventdata, handles)
% hObject    handle to nh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns nh contents as cell array
%        contents{get(hObject,'Value')} returns selected item from nh


% --- Executes during object creation, after setting all properties.
function popupmenu7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit20_Callback(hObject, eventdata, handles)
% hObject    handle to fu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fu as text
%        str2double(get(hObject,'String')) returns contents of fu as a double


% --- Executes during object creation, after setting all properties.
function edit20_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in NotchFiler.
function NotchFiler_Callback(hObject, eventdata, handles)
% hObject    handle to NotchFiler (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns NotchFiler contents as cell array
%        contents{get(hObject,'Value')} returns selected item from NotchFiler


% --- Executes during object creation, after setting all properties.
function NotchFiler_CreateFcn(hObject, eventdata, handles)
% hObject    handle to NotchFiler (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in qf.
function qf_Callback(hObject, eventdata, handles)
% hObject    handle to qf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns qf contents as cell array
%        contents{get(hObject,'Value')} returns selected item from qf


% --- Executes during object creation, after setting all properties.
function qf_CreateFcn(hObject, eventdata, handles)
% hObject    handle to qf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Onf_Callback(hObject, eventdata, handles)
% hObject    handle to Onf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Onf as text
%        str2double(get(hObject,'String')) returns contents of Onf as a double


% --- Executes during object creation, after setting all properties.
function Onf_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Onf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




% --- Executes during object creation, after setting all properties.
function ch1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ch1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function P1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to P1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function P2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to P2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function P3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to P3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on selection change in nf.
function popupmenu12_Callback(hObject, eventdata, handles)
% hObject    handle to nf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns nf contents as cell array
%        contents{get(hObject,'Value')} returns selected item from nf


% --- Executes during object creation, after setting all properties.
function popupmenu12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Exc_Callback(hObject, eventdata, handles)
% hObject    handle to Exc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Exc as text
%        str2double(get(hObject,'String')) returns contents of Exc as a double


% --- Executes during object creation, after setting all properties.
function Exc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Exc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
