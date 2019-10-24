function varargout = bid(varargin)
% BID MATLAB code for bid.fig
%      BID, by itself, creates a new BID or raises the existing
%      singleton*.
%
%      H = BID returns the handle to a new BID or the handle to
%      the existing singleton*.
%
%      BID('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BID.M with the given input arguments.
%
%      BID('Property','Value',...) creates a new BID or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before bid_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to bid_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help bid

% Last Modified by GUIDE v2.5 22-Oct-2019 15:00:02

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @bid_OpeningFcn, ...
                   'gui_OutputFcn',  @bid_OutputFcn, ...
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


% --- Executes just before bid is made visible.
function bid_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to bid (see VARARGIN)

% Choose default command line output for bid
handles.output = hObject;

dollarImg = imread('dollar.jpg');
dollarImg2 = imread('dollar2.jpg');

axes(handles.dollar);
imshow(dollarImg);

axes(handles.dollar2);
imshow(dollarImg2);

logFile = dir('log.mat');
if ~isempty(logFile)
    load(logFile.name);
    if exist('PAR','var')
        set(handles.bidRangeMin,'String',num2str(PAR.bidRangeMin));
        set(handles.bidRangeMax,'String',num2str(PAR.bidRangeMax));
        set(handles.bidSpeed,'String',num2str(PAR.bidRangeMax));
        set(handles.onlookerTimes,'String',num2str(PAR.onlookerTimes));
        set(handles.bidTimes,'String',num2str(PAR.bidTimes));
        set(handles.trialNum,'String',num2str(PAR.trialNum));
        set(handles.cost,'String',num2str(PAR.cost));
        set(handles.eyelinkRecording,'Value',PAR.eyelinkRecording);
        set(handles.floatCost,'Value',PAR.floatCost);
        set(handles.autoCalibration,'Value',PAR.autoCalibration);
    end
end

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes bid wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = bid_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function subjectName_Callback(hObject, eventdata, handles)
% hObject    handle to subjectName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of subjectName as text
%        str2double(get(hObject,'String')) returns contents of subjectName as a double


% --- Executes during object creation, after setting all properties.
function subjectName_CreateFcn(hObject, eventdata, handles)
% hObject    handle to subjectName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bidRangeMin_Callback(hObject, eventdata, handles)
% hObject    handle to bidRangeMin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bidRangeMin as text
%        str2double(get(hObject,'String')) returns contents of bidRangeMin as a double


% --- Executes during object creation, after setting all properties.
function bidRangeMin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bidRangeMin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bidSpeed_Callback(hObject, eventdata, handles)
% hObject    handle to bidSpeed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bidSpeed as text
%        str2double(get(hObject,'String')) returns contents of bidSpeed as a double


% --- Executes during object creation, after setting all properties.
function bidSpeed_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bidSpeed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function onlookerTimes_Callback(hObject, eventdata, handles)
% hObject    handle to onlookerTimes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of onlookerTimes as text
%        str2double(get(hObject,'String')) returns contents of onlookerTimes as a double


% --- Executes during object creation, after setting all properties.
function onlookerTimes_CreateFcn(hObject, eventdata, handles)
% hObject    handle to onlookerTimes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bidTimes_Callback(hObject, eventdata, handles)
% hObject    handle to bidTimes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bidTimes as text
%        str2double(get(hObject,'String')) returns contents of bidTimes as a double


% --- Executes during object creation, after setting all properties.
function bidTimes_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bidTimes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function trialNum_Callback(hObject, eventdata, handles)
% hObject    handle to trialNum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of trialNum as text
%        str2double(get(hObject,'String')) returns contents of trialNum as a double


% --- Executes during object creation, after setting all properties.
function trialNum_CreateFcn(hObject, eventdata, handles)
% hObject    handle to trialNum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bidRangeMax_Callback(hObject, eventdata, handles)
% hObject    handle to bidRangeMax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bidRangeMax as text
%        str2double(get(hObject,'String')) returns contents of bidRangeMax as a double


% --- Executes during object creation, after setting all properties.
function bidRangeMax_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bidRangeMax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in hidden.
function hidden_Callback(hObject, eventdata, handles)
% hObject    handle to hidden (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of hidden
hidden = get(handles.hidden,'Value');
if hidden
    set(handles.bidRangeMin,'Visible','off');
    set(handles.bidRangeMax,'Visible','off');
    set(handles.toText,'Visible','off');
    set(handles.cost,'Visible','off');
    set(handles.floatCost,'Visible','off');
    set(handles.rangeText,'Visible','off');
    set(handles.costText,'Visible','off');
else
    set(handles.bidRangeMin,'Visible','on');
    set(handles.bidRangeMax,'Visible','on');
    set(handles.toText,'Visible','on');
    set(handles.cost,'Visible','on');
    set(handles.floatCost,'Visible','on');
    set(handles.rangeText,'Visible','on');
    set(handles.costText,'Visible','on');
end


function cost_Callback(hObject, eventdata, handles)
% hObject    handle to cost (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cost as text
%        str2double(get(hObject,'String')) returns contents of cost as a double


% --- Executes during object creation, after setting all properties.
function cost_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cost (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in floatCost.
function floatCost_Callback(hObject, eventdata, handles)
% hObject    handle to floatCost (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of floatCost


% --- Executes on button press in eyelinkRecording.
function eyelinkRecording_Callback(hObject, eventdata, handles)
% hObject    handle to eyelinkRecording (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of eyelinkRecording


% --- Executes on button press in autoCalibration.
function autoCalibration_Callback(hObject, eventdata, handles)
% hObject    handle to autoCalibration (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of autoCalibration


% --- Executes on button press in dollar.
function dollar_Callback(hObject, eventdata, handles)
% hObject    handle to dollar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in go.
function go_Callback(hObject, eventdata, handles)
% hObject    handle to go (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
logFile = dir('log.mat');
if isempty(logFile)
    errordlg('Please input your screen parameters first.','Error','modal');
    return
else
    load(logFile.name);
end

subjectName = get(handles.subjectName,'String');
if isempty(subjectName)
    subjectName = 'test';
end
fileName = ['bid_' subjectName '_' datestr(now,'yymmddHHMM')];
saveDir = fullfile(pwd,'data');
mkdir(saveDir);
curdir = pwd;

% set keyboard
KbName('UnifyKeyNames');
skipKey   = KbName('space');
escape    = KbName('ESCAPE');
leftKey   = KbName('LeftArrow');
rightKey  = KbName('RightArrow');
upArror   = KbName('UpArrow');
cKey      = KbName('c'); % force calibration
enter     = KbName('Return');

% for debuf and test
eyelink = get(handles.eyelinkRecording,'Value');

% extract value
PAR.bidRangeMin = str2double(get(handles.bidRangeMin,'String'));
PAR.bidRangeMax = str2double(get(handles.bidRangeMax,'String'));
PAR.bidSpeed = str2double(get(handles.bidSpeed,'String'));
PAR.onlookTimes = str2double(get(handles.onlookTimes,'String'));
PAR.bidTimes = str2double(get(handles.bidTimes,'String'));
PAR.trialNum = str2double(get(handles.trialNum,'String'));
PAR.cost = str2double(get(handles.cost,'string'));
PAR.floatCost = get(handles.floatCost,'Value');
PAR.eyelinkRecording = get(handles.eyelinkRecording,'Value');
PAR.autoCalibration = get(handles.autoCalibration,'Value');

PAR.bidInterval = 1; % s
PAR.trialInterval = 1; % s
% random seed
seedStr = get(handles.seed,'String');
if strcmp(seedStr,'shuffle') || strcmp(seedStr,'default')
    seed = seedStr;
elseif isempty(seedStr)
    seed = ceil(rand()*1000000);
    set(handles.seed,'String',num2str(seed));
else
    seed = str2double(seedStr);
end
rng(seed);

save('log.mat','SCREEN','PAR','seed');

timePredicted = ((PAR.bidTimes + PAR.onlookTimes)*PAR.bidSpeed + PAR.bidInterval + PAR.trialInterval)  * PAR.trialNum;
fprintf(1,'This block will cost  ');
fprintf(2,[num2str(timePredicted/60) ' '] );
fprintf(1,'minutes \n');

disp('Continue?')

% terminate the block if you feel it is too long
tic
while toc<2 % unit second
    [~, ~, keyCode]=KbCheck;
    if keyCode(escape)
        return
    end
end

%% initial opengl
if eyelink
    Screen('Preference', 'SkipSyncTests', 0); % for recording
else
    Screen('Preference', 'SkipSyncTests', 1); % for debug/test
end

AssertOpenGL;
InitializeMatlabOpenGL;

if max(Screen('Screens')) > 1
    SCREEN.screenId = max(Screen('Screens'))-1;
else
    SCREEN.screenId = max(Screen('Screens'));
end
PsychImaging('PrepareConfiguration');

% Define background color:
whiteBackground = WhiteIndex(SCREEN.screenId);
blackBackground = BlackIndex(SCREEN.screenId);
grayBackground = GrayIndex(SCREEN.screenId);

% Open a double-buffered full-screen window on the main displays screen.
[win , winRect] = PsychImaging('OpenWindow', SCREEN.screenId, grayBackground);
SCREEN.widthPix = winRect(3);
SCREEN.heightPix = winRect(4);
SCREEN.center = [SCREEN.widthPix/2, SCREEN.heightPix/2];

PAR.noiseSizeH = SCREEN.heightPix/2;
PAR.noiseSizeW = SCREEN.widthPix/2;

TRIALINFO.fixationSizeP = degree2pix(TRIALINFO.fixationSizeD/2);
TRIALINFO.fixationPosition = [SCREEN.widthPix/2,SCREEN.heightPix/2];

SCREEN.refreshRate = Screen('NominalFrameRate', SCREEN.screenId);

Screen('BeginOpenGL', win);
glViewport(0, 0, RectWidth(winRect), RectHeight(winRect));
glColorMask(GL.TRUE, GL.TRUE, GL.TRUE, GL.TRUE);
% glEnable(GL_BLEND);
% glEnable(GL_ALPHA_BLEND_CORRECTLY);
% glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
Screen('EndOpenGL', win);
Screen('FillRect', win ,grayBackground,[0 0 SCREEN.widthPix SCREEN.heightPix]);
Screen('BlendFunction', win, GL_ONE, GL_ZERO);

noiseSreen = Screen('OpenOffscreenWindow', win, [0 0 0 0]);
% Enable standard additive blending:
glBlendEquation(GL.FUNC_ADD);

% We use the alpha-channels of the offscreen windows to define the
% modulationgains for the noise. Example: Alpha value zero = contrast
% zero. Alpha value 255 = Maximum contrast of 1.0, Alpha value 128 =
% Contrast of 128/255 == about 50% or 0.5.
% First we need to initialize the whole windows alpha-channel with the
% default "background" contrast bgcontrast. We disable alpha-blending
% for this purpose:

Screen('Blendfunction', noiseSreen, GL_ONE, GL_ZERO);
Screen('FillRect', noiseSreen, [0 0 0 255 * 1]);

% Now we overdraw some regions of the alpha-channel with our "modulation"
% image - a image that contains alpha values which encode a different
% contrast 'fgcontrast'. After this drawing op, the alpha-channel will
% contain the final "contrast modulation landscape":
%Screen('DrawDots', positivenoise, [x y], 50, [0 0 0 255 * fgcontrast], [], 1);
Screen('FillOval', noiseSreen, [0 0 0 255 * fgcontrast], dstrect);

% Now we draw the positivenoise texture and use alpha-blending of
% the drawn noise color pixels with the destination alpha-channel,
% thereby multiplying the incoming color values with the stored
% alpha values -- effectively a contrast modulation:
Screen('Blendfunction', noiseSreen, GL_DST_ALPHA, GL_ZERO);
        
HideCursor;

%% initial eyelink
if eyelink
    tempName = 'TEMP1'; % need temp name because Eyelink only know hows to save names with 8 chars or less. Will change name using matlab's moveFile later.
    dummymode=0;
    
    el=EyelinkInitDefaults(win);
    %     el.backgroundcolour = BlackIndex(el.window);
    %     el.foregroundcolour = GrayIndex(el.window);
    %     el.msgfontcolour    = WhiteIndex(el.window);
    %     el.imgtitlecolour   = WhiteIndex(el.window);
    el.calibrationtargetsize=1;  % size of calibration target as percentage of screen
    el.calibrationtargetwidth=0.5; % width of calibration target's border as percentage of screen
    
    if ~EyelinkInit(dummymode)
        fprintf('Eyelink Init aborted.\n');
        cleanup;  % cleanup function
        Eyelink('ShutDown');
        Screen('CloseAll');
        return
    end
    
    testi = Eyelink('Openfile', tempName);
    if testi~=0
        fprintf('Cannot create EDF file ''%s'' ', fileName);
        cleanup;
        Eyelink('ShutDown');
        Screen('CloseAll');
        return
    end
    
    %   SET UP TRACKER CONFIGURATION
    Eyelink('command', 'calibration_type = HV9');
    %	set parser (conservative saccade thresholds)
    Eyelink('command', 'saccade_velocity_threshold = 35');
    Eyelink('command', 'saccade_acceleration_threshold = 9500');
    Eyelink('command', 'link_event_filter = LEFT,RIGHT,FIXATION,SACCADE,BLINK,MESSAGE,BUTTON,FIXUPDATE,INPUT');
    Eyelink('command', 'link_sample_data  = LEFT,RIGHT,GAZE,HREF,GAZERES,AREA,STATUS,INPUT,HTARGET');
    Eyelink('command', 'online_dcorr_refposn = %1d, %1d', SCREEN.center(1), SCREEN.center(2));
    Eyelink('command', 'online_dcorr_maxangle = %1d', 30.0);
    % you must call this function to apply the changes from above
    EyelinkUpdateDefaults(el);
    
    % Calibrate the eye tracker
    EyelinkDoTrackerSetup(el);
    
    % do a final check of calibration using driftcorrection
    EyelinkDoDriftCorrection(el);
    
    Eyelink('StartRecording');
    
    Eyelink('message', 'SYNCTIME');	 	 % zero-plot time for EDFVIEW
    eye_used = Eyelink('EyeAvailable'); % get eye that's tracked
    if eye_used == el.BINOCULAR % if both eyes are tracked
        eye_used = el.LEFTEYE; % use left eye
    end
    errorCheck=Eyelink('checkrecording'); 		% Check recording status */
    if(errorCheck~=0)
        fprintf('Eyelink checked wrong status.\n');
        cleanup;  % cleanup function
        Eyelink('ShutDown');
        Screen('CloseAll');
    end
    
    pause(1); % wait a little bit, in case the key press during calibration influence the following keyboard check
end

while triali < PAR.trialNum + 1 
    noiseMatrix = (randn(PAR.noiseSizeH,PAR.noiseSizeW)+1)/2*255;
    
    % The extra zero at the end forcefully disables bilinear filtering. This is
    % not strictly neccessary on correctly working hardware, but an extra
    % precaution to make sure that the noise values are blitted
    % one-to-one into the offscreen window:
    Screen('DrawTexture', noiseSreen, noiseMatrix, [], [], [], 0);
end

% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over go.
function go_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to go (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function seed_Callback(hObject, eventdata, handles)
% hObject    handle to seed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of seed as text
%        str2double(get(hObject,'String')) returns contents of seed as a double


% --- Executes during object creation, after setting all properties.
function seed_CreateFcn(hObject, eventdata, handles)
% hObject    handle to seed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in seedGenerator.
function seedGenerator_Callback(hObject, eventdata, handles)
% hObject    handle to seedGenerator (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
randNum = ceil(rand()*1000000);
set(handles.seed,'String',num2str(randNum));


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
screenPar();
