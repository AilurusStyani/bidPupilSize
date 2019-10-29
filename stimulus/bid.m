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

% Last Modified by GUIDE v2.5 28-Oct-2019 14:38:59

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
        set(handles.bidMeanCost,'Value',PAR.bidMeanCost);
        set(handles.bidMeanSet,'Value',PAR.bidMeanSet);
        set(handles.bidMeanSetV,'String',num2str(PAR.bidMeanSetV));
        set(handles.sigma,'String',num2str(PAR.sigma));
        set(handles.bidSpeed,'String',num2str(PAR.bidSpeed));
        set(handles.onlookerTimes,'String',num2str(PAR.onlookerTimes));
        set(handles.bidTimes,'String',num2str(PAR.bidTimes));
        set(handles.trialNum,'String',num2str(PAR.trialNum));
        set(handles.cost,'String',num2str(PAR.cost));
        set(handles.eyelinkRecording,'Value',PAR.eyelinkRecording);
        set(handles.floatCost,'Value',PAR.floatCost);
        set(handles.autoCalibration,'Value',PAR.autoCalibration);
        set(handles.refreshP,'String',num2str(PAR.refreshP));
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
    set(handles.cost,'Visible','off');
    set(handles.floatCost,'Visible','off');
    set(handles.costText,'Visible','off');
    set(handles.bidRange,'Visible','off');
else
    set(handles.cost,'Visible','on');
    set(handles.floatCost,'Visible','on');
    set(handles.costText,'Visible','on');
    set(handles.bidRange,'Visible','on')
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
global SCREEN

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
PAR.bidMeanCost = get(handles.bidMeanCost,'Value');
PAR.bidMeanSet = get(handles.bidMeanSet,'Value');
PAR.bidMeanSetV = str2double(get(handles.bidMeanSetV,'String'));
PAR.sigma = str2double(get(handles.sigma,'String'));
PAR.bidSpeed = str2double(get(handles.bidSpeed,'String'));
PAR.onlookerTimes = str2double(get(handles.onlookerTimes,'String'));
PAR.bidTimes = str2double(get(handles.bidTimes,'String'));
PAR.trialNum = str2double(get(handles.trialNum,'String'));
PAR.cost = str2double(get(handles.cost,'string'));
PAR.floatCost = get(handles.floatCost,'Value');
PAR.refreshP = str2double(get(handles.refreshP,'String'));
PAR.eyelinkRecording = get(handles.eyelinkRecording,'Value');
PAR.autoCalibration = get(handles.autoCalibration,'Value');
PAR.adapt = 1;% s
PAR.costT = 2;% s

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

timePredicted = ((PAR.bidTimes + PAR.onlookerTimes)*PAR.bidSpeed + PAR.bidInterval + PAR.trialInterval)  * PAR.trialNum;
fprintf(1,'This block will cost  ');
fprintf(2,[num2str(timePredicted/60) ' '] );
fprintf(1,'minutes \n');

disp('Continue?')
try
    [winS,winF] = audioread('coins.wav');
    winSound = 1;
catch
    warning('Sound file ''coins.wav'' can''t found in this floder.')
    winSound = 0;
end

try
    [loseS,loseF] = audioread('ohNo.wav');
    loseSound = 1;
catch
    warning('Sound file ''onHo.wav'' can''t found in this floder.')
    loseSound = 0;
end

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

% Open onscreen window: We request a 32 bit per color component
% floating point framebuffer if it supports alpha-blendig. Otherwise
% the system shall fall back to a 16 bit per color component
% framebuffer:
PsychImaging('PrepareConfiguration');
PsychImaging('AddTask', 'General', 'FloatingPoint32BitIfPossible');
[win , winRect] = PsychImaging('OpenWindow', SCREEN.screenId);

% We use a normalized color range from now on. All color values are
% specified as numbers between 0.0 and 1.0, instead of the usual 0 to
% 255 range. This is more intuitive:
Screen('ColorRange', win, 1, 0);

SCREEN.widthPix = winRect(3);
SCREEN.heightPix = winRect(4);
[SCREEN.center(1), SCREEN.center(2)] = RectCenter(winRect);

PAR.noiseSizeH = SCREEN.heightPix/2;
PAR.noiseSizeW = SCREEN.widthPix/2;

SCREEN.refreshRate = Screen('NominalFrameRate', SCREEN.screenId);

% Fill the whole onscreen window with a neutral 50% intensity
% background color and an alpha channel value of 'bgcontrast'.
% This becomes the clear color. After each Screen('Flip'), the
% backbuffer will be cleared to this neutral 50% intensity gray
% and a default 'bgcontrast' background noise contrast level:
Screen('FillRect', win, [0.5 0.5 0.5]);
        
HideCursor;

% set text font, style and size,etc
Screen('TextFont',win, 'Tahoma');
Screen('TextStyle',win, 1); % 0=normal,1=bold,2=italic,4=underline,8=outline,32=condense,64=extend.


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

Screen('Flip',win);

triali = 1;
breakFlag = 0;
noiseMatrix = randn(PAR.noiseSizeH,PAR.noiseSizeW);
    
frameRateIndex = [];
PRICE.onlooker = cell(1,PAR.trialNum);
PRICE.bid = cell(2,PAR.trialNum);
PRICE.cost = nan(1,PAR.trialNum);
balance = 0;
while triali < PAR.trialNum + 1 
    [~, ~, keycode] = KbCheck;
    if keycode(escape)
        breakFlag = 1;
        break;
    end
    if eyelink
        Eyelink('message', ['Trial Start ' num2str(triali)]);
        frameN = 1;
    end
    
    % show cost
    showCostT = tic;
    if PAR.floatCost
        cost = ceil(PAR.cost+sqrt(PAR.sigma).*randn());
    else
        cost = ceil(PAR.cost);
    end
    while toc(showCostT) < PAR.costT
        drawNoise(win,noiseMatrix);
        Screen('TextSize',win, 70/1280*SCREEN.widthPix);
        [~, ~, ~] = DrawFormattedText(win, ['Your cost is: ' num2str(cost)],'center','center',[0.2 0.6 0.7],15,0,0,2);
        Screen('TextBackgroundColor',win, [0.5 0.5 0.5 1]);
        Screen('DrawingFinished',win);
        
        Screen('Flip',win,0,0);
        if eyelink
            if frameN
                Eyelink('message',['Show Cost ' num2str(cost) ' in trial ' num2str(traili)]);
                frameN = 0;
            end
        end
        [~, ~, keycode] = KbCheck;
        if keycode(escape)
            breakFlag = 1;
            break;
        end
        [a,b] = size(noiseMatrix);
        matrixNum = a*b;
        randM = rand(matrixNum,1);
        randIndex = randM <= PAR.refreshP/100;
        noiseMatrix(randIndex) = randn(sum(randIndex),1);
    end
    
    if eyelink
        Eyelink('message',['Adapt Start ' num2str(triali)]);
    end
    
    adaptTime = tic;
    % noise background for adapt
    while toc(adaptTime) < PAR.adapt
        drawNoise(win,noiseMatrix)
        Screen('Flip', win);
        [~, ~, keycode] = KbCheck;
        if keycode(escape)
            breakFlag = 1;
            break;
        end
        
        [a,b] = size(noiseMatrix);
        matrixNum = a*b;
        randM = rand(matrixNum,1);
        randIndex = randM <= PAR.refreshP/100;
        noiseMatrix(randIndex) = randn(sum(randIndex),1);
    end
    
    if eyelink
        Eyelink('message',['Adapt 1 Done ' num2str(triali)]);
    end
    
    % onlooker period
    if PAR.bidMeanCost
        onlookerPrice = ceil(PAR.cost + sqrt(PAR.sigma).*randn(1,PAR.onlookerTimes));
    elseif PAR.bidMeanSet
        onlookerPrice = ceil(PAR.bidMeanSetV + sqrt(PAR.sigma).*randn(1,PAR.onlookerTimes));
    end
    for onlookerI = 1:PAR.onlookerTimes
        onlookerBidT = tic;
        if eyelink
            frameN = 1;
        end
        while toc(onlookerBidT) < PAR.bidSpeed
            drawNoise(win,noiseMatrix);
            Screen('TextSize',win, 70/1280*SCREEN.widthPix);
            [~, ~, ~] = DrawFormattedText(win, num2str(onlookerPrice(onlookerI)),'center','center',[0.5 0.5 0.5]);
            Screen('TextBackgroundColor',win, [0.5 0.5 0.5 1]);
            Screen('DrawingFinished',win);
            
            Screen('Flip',win,0,0);
            if eyelink
                if frameN
                    Eyelink('message',['Onlooker Price Num. ' num2str(onlookerI) ' is ' num2str(onlookerPrice(onlookerI)) ' in trial ' num2str(triali)]);
                    frameN = 0;
                end
            end
            if keycode(escape)
                breakFlag = 1;
                break;
            end
            
            [a,b] = size(noiseMatrix);
            matrixNum = a*b;
            randM = rand(matrixNum,1);
            randIndex = randM <= PAR.refreshP/100;
            noiseMatrix(randIndex) = randn(sum(randIndex),1);
        end
        if breakFlag
            break
        end
    end
    
    if breakFlag
        break
    end
    
    % cue
    adaptTime = tic;
    while toc(adaptTime) < PAR.adapt
        drawNoise(win,noiseMatrix);
        Screen('TextSize',win, 50/1280*SCREEN.widthPix);
        [~, ~, ~] = DrawFormattedText(win, 'Now you can accept the offer.','center','center',[0.15 0.85 0.2],15,0,0,2);
        Screen('TextBackgroundColor',win, [0.5 0.5 0.5 1]);
        Screen('DrawingFinished',win);
        Screen('Flip', win);
        [~, ~, keycode] = KbCheck;
        if keycode(escape)
            breakFlag = 1;
            break;
        end
        
        [a,b] = size(noiseMatrix);
        matrixNum = a*b;
        randM = rand(matrixNum,1);
        randIndex = randM <= PAR.refreshP/100;
        noiseMatrix(randIndex) = randn(sum(randIndex),1);
    end
    
    adaptTime = tic;
    % noise background for adapt
    while toc(adaptTime) < PAR.adapt
        drawNoise(win,noiseMatrix)
        Screen('Flip', win);
        [~, ~, keycode] = KbCheck;
        if keycode(escape)
            breakFlag = 1;
            break;
        end
        
        [a,b] = size(noiseMatrix);
        matrixNum = a*b;
        randM = rand(matrixNum,1);
        randIndex = randM <= PAR.refreshP/100;
        noiseMatrix(randIndex) = randn(sum(randIndex),1);
    end
    
    
    if eyelink
        Eyelink('message',['Adapt 2 Done ' num2str(triali)]);
    end
    
    % bid period
    offerAccept = 0;
    if PAR.bidMeanCost
        bidPrice = ceil(PAR.cost + sqrt(PAR.sigma).*randn(1,PAR.bidTimes));
    elseif PAR.bidMeanSet
        bidPrice = ceil(PAR.bidMeanSetV + sqrt(PAR.sigma).*randn(1,PAR.bidTimes));
    end
    for bidI = 1:PAR.bidTimes
        onlookerBidT = tic;
        if eyelink
            frameN = 1;
        end
        while toc(onlookerBidT) < PAR.bidSpeed
            drawNoise(win,noiseMatrix)
            Screen('TextSize',win, 70/1280*SCREEN.widthPix);
            [~, ~, ~] = DrawFormattedText(win, num2str(bidPrice(bidI)),'center','center',[0.5 0.5 0.5]);
            Screen('TextBackgroundColor',win, [0.5 0.5 0.5 1]);
            Screen('DrawingFinished',win);
            Screen('Flip',win,0,0);
            if eyelink
                if frameN
                    Eyelink('message',['Num. ' num2str(bidI) ' Bid Price is ' num2str(bidPrice(bidI)) ' in trial ' num2str(triali)]);
                    frameN = 0;
                end
            end
            [~, ~, keycode] = KbCheck;
            if keycode(escape)
                breakFlag = 1;
                break;
            elseif keycode(enter)
                if eyelink
                    Eyelink('message',['Offer accepted As ' num2str(bidPrice(bidI)) ' in trial ' num2str(triali)]);
                end
                offerAccept = 1;
                acceptPrice = bidPrice(bidI);
                topUp = acceptPrice - cost;
                break
            end
            
            [a,b] = size(noiseMatrix);
            matrixNum = a*b;
            randM = rand(matrixNum,1);
            randIndex = randM <= PAR.refreshP/100;
            noiseMatrix(randIndex) = randn(sum(randIndex),1);
        end
        if breakFlag
            break
        elseif offerAccept
            break
        end
    end
    
    if breakFlag
        break
    end
    if offerAccept
        PRICE.cost(triali) = cost;
        PRICE.onlooker{triali} = onlookerPrice;
        PRICE.bid{1,triali} = bidPrice;
        PRICE.bid{2,triali} = bidI;
        
        if topUp>=0
            if winSound
                sound(winS,winF);
            end
        elseif topUp < 0
            if loseSound
                sound(loseS,loseF)
            end
        end
        
        addIndex = ceil(0:topUp/(SCREEN.refreshRate*2):topUp);
        % noise background for adapt
        for topUpi = 1:length(addIndex)
            drawNoise(win,noiseMatrix)
            Screen('TextSize',win, 70/1280*SCREEN.widthPix);
            if topUp>=0
                [~, ~, ~] = DrawFormattedText(win, num2str(balance+addIndex(topUpi)),'center','center',[0.2 0.8 0.2]);
            else
                [~, ~, ~] = DrawFormattedText(win, num2str(balance+addIndex(topUpi)),'center','center',[0.8 0.2 0.2]);
            end
            Screen('TextBackgroundColor',win, [0.5 0.5 0.5 1]);
            Screen('DrawingFinished',win);
            Screen('Flip', win);
            [~, ~, keycode] = KbCheck;
            if keycode(escape)
                breakFlag = 1;
                break;
            end
            
            [a,b] = size(noiseMatrix);
            matrixNum = a*b;
            randM = rand(matrixNum,1);
            randIndex = randM <= PAR.refreshP/100;
            noiseMatrix(randIndex) = randn(sum(randIndex),1);
        end
        balance = balance + topUp;
        clear sound
    else
        Eyelink('message',['Trial abort ' num2str(triali)]);
    end
    triali = triali+1;
end
% frameRate = 1/mean(frameRateIndex);
% disp(['Frame rate is ' num2str(frameRate)]);

Screen('Flip', win);

if eyelink
    Eyelink('StopRecording');
    Eyelink('CloseFile');
    try
        fprintf('Receiving data file ''%s''\n',fileName);
        status=Eyelink('ReceiveFile',tempName ,saveDir,1);
        if status > 0
            fprintf('ReceiveFile status %d\n ', status);
        end
        if exist(fileName, 'file')==2
            fprintf('Data file ''%s'' can be found in '' %s\n',fileName, pwd);
        end
    catch
        fprintf('Problem receiving data file ''%s''\n',fileName);
    end
    
    cd (saveDir);
    save(fullfile(saveDir,fileName));
    movefile([saveDir,'\',tempName,'.edf'],[saveDir,'\',fileName,'.edf']);
    
    % shut down the eyelink
    Eyelink('ShutDown');
end

CloseOpenAL;
Screen('CloseAll');

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



function refreshP_Callback(hObject, eventdata, handles)
% hObject    handle to refreshP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of refreshP as text
%        str2double(get(hObject,'String')) returns contents of refreshP as a double


% --- Executes during object creation, after setting all properties.
function refreshP_CreateFcn(hObject, eventdata, handles)
% hObject    handle to refreshP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in bidMeanCost.
function bidMeanCost_Callback(hObject, eventdata, handles)
% hObject    handle to bidMeanCost (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of bidMeanCost


% --- Executes on button press in bidMeanSet.
function bidMeanSet_Callback(hObject, eventdata, handles)
% hObject    handle to bidMeanSet (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of bidMeanSet



function bidMeanSetV_Callback(hObject, eventdata, handles)
% hObject    handle to bidMeanSetV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bidMeanSetV as text
%        str2double(get(hObject,'String')) returns contents of bidMeanSetV as a double


% --- Executes during object creation, after setting all properties.
function bidMeanSetV_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bidMeanSetV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sigma_Callback(hObject, eventdata, handles)
% hObject    handle to sigma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sigma as text
%        str2double(get(hObject,'String')) returns contents of sigma as a double


% --- Executes during object creation, after setting all properties.
function sigma_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sigma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
