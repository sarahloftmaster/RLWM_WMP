%%  RLWM + PST - new version 2014 (Anne Collins))

%%%% Anne Collins
%%%% Brown University
%%%% November 2014
%%%% anne_collins@brown.edu

%%%% RLWM task instructions


function    InstructionsLSSt_SLMedits(w,rect)
debug = 0;
load debugstate
textE{1} = 'Working Memory Reinforcement Learning Task';

textE{2} = 'In this experiment, you will see an image on the screen.';

textE{3} = 'You need to respond to each image by pressing one of the three buttons on the keyboard, \n\n C, V or B, with your dominant hand.';

textE{4} = '[Press SPACEBAR to go through the instructions.]';

%textE{5} = 'Your goal is to figure out which button makes you win for each image so that you can earn points.';
textE{5} = 'Your goal is to figure out which button to select for each image so that you can earn points.';

textE{6} = 'You will have a few seconds to respond.';

textE{7} = 'Please respond to every image as quickly and accurately as possible.';

textE{8} = 'If you do not respond, you will lose that trial.';

textE{9} = 'You can gain 1 point at each trial.';

%textE{10} = 'If you win a trial, you have the highest chance of earning a point.';
textE{10} = 'For each image, there is one "winning" key:\n If you select the "winning" key, you are most likely to win points.';

textE{11} = 'But sometimes, you will still earn a point even if you did not select the "winning" key.';

textE{12} = 'And sometimes, you will also NOT earn a point even if you select the "winning" key.';

%textE{12} = 'You may receive a bonus of up to $5 monetary reward, \n\nbased on how many points you win!';
textE{13} = 'Try to pick the "winning" key to win as many points as possible!';

textE{14} = '';
textD{14} = '';

nblocks = 14;
textE{15} = ['After the practice section, there will be ',num2str(nblocks),' short blocks.'];

textE{16} = 'You can rest between each block.';

textE{17} = 'At the beginning of each block, you will be shown the set of images for that block.';

textE{18} = 'Take some time to identify and name each image!';

textE{19} = 'Note the following important rules:';

textE{20} = '1. There is ONLY ONE winning key for each image.';

textE{21} = '2. Within each block, one response button MAY be the winning key for multiple images, or for no image.';

textE{22} = '3. Within each block, the winning key for each image will not change.';

textE{23} = '4. The more you select the winning key for each image, the more points you will earn.';

textE{24} = 'Press a key to begin practice:';

textE{25} = 'Press R to read the instructions again';

    text = textE;



% if debug
% [w, rect] = Screen('OpenWindow', 0, 0,[],32,2);
% end



wPtr=w;
Screen('TextSize',wPtr,28);
Screen('TextFont',wPtr,'Times');
Screen('TextStyle',wPtr,0);
Screen('TextColor',wPtr,[255 255 255]);
beginningText1 = text{1};
DrawFormattedText(wPtr,beginningText1,'center','center');
Screen(wPtr, 'Flip');
WaitSecs(3);

done = 1;

while done
% %****BEGINNING OF INSTRUCTIONS****
% %Instructions 1
Screen('TextSize',wPtr,28);
Screen('TextFont',wPtr,'Times');
Screen('TextStyle',wPtr,0);
Screen('TextColor',wPtr,[255 255 255]);


%Instructions1
textI = [text{2},'\n\n\n',text{3},'\n\n\n\n\n',text{4}];
DrawFormattedText(wPtr,textI,'center','center');
Screen(wPtr, 'Flip');
KbWait([],3); %Waits for keyboard(any) press


%Instructions 2
textI = [text{5},'\n\n\n',text{6},'\n\n\n',text{7},'\n\n\n',text{8},'\n\n\n\n\n',text{4}];
DrawFormattedText(wPtr,textI,'center','center')
Screen(wPtr, 'Flip');

KbWait([],3); %Waits for keyboard(any) press

%Instructions 3
textI = [text{9},'\n\n\n',text{10},'\n\n\n',text{11},'\n\n\n',text{12},'\n\n\n',text{13},'\n\n\n\n\n',text{4}];
DrawFormattedText(wPtr,textI,'center','center')
Screen(wPtr, 'Flip');

KbWait([],3); %Waits for keyboard(any) press

% corSound = wavread('corrSound.wav');corSound = [corSound';corSound'];
% incSound = wavread('incorSound.wav');incSound = [incSound';incSound'];
% Snd('Open')
% [keyIsDown, RT, keyCode] = KbCheck();
% while true
%     if keyIsDown 
%         if keyCode(KbName('C'))
%             Snd('Play',corSound);
%             WaitSecs(.5)
%         elseif keyCode(KbName('I'))
%             Snd('Play',incSound);
%             WaitSecs(.5)
%         elseif keyCode(KbName('R'))
%             break;
%         end
%     end % if next key detected
%     [keyIsDown, RT, keyCode] = KbCheck();
% end % endless loop
% Snd('Close')

%Instruction 4
textI = [text{15},'\n\n\n',text{16},'\n\n\n',text{17},'\n\n\n',text{18},'\n\n\n\n\n',text{4}];
DrawFormattedText(wPtr,textI,'center','center');
Screen(wPtr, 'Flip');

KbWait([],3); %Waits for keyboard(any) press

%Instruction 5
textI = [text{19},'\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n',text{4}];
DrawFormattedText(wPtr,textI,'center','center');
Screen(wPtr, 'Flip');

KbWait([],3); %Waits for keyboard(any) press
%Instruction 5
textI = [text{19},'\n\n\n',text{20},'\n\n\n\n\n\n\n\n\n\n\n\n\n\n',text{4}];
DrawFormattedText(wPtr,textI,'center','center');
Screen(wPtr, 'Flip');

KbWait([],3); %Waits for keyboard(any) press
%Instruction 5
textI = [text{19},'\n\n\n',text{20},'\n\n',text{21},'\n\n\n\n\n\n\n\n\n\n\n\n',text{4}];
DrawFormattedText(wPtr,textI,'center','center');
Screen(wPtr, 'Flip');

KbWait([],3); %Waits for keyboard(any) press
%Instruction 5
textI = [text{19},'\n\n\n',text{20},'\n\n',text{21},...
    '\n\n',text{22},'\n\n\n\n\n\n\n\n\n\n',text{4}];
DrawFormattedText(wPtr,textI,'center','center');
Screen(wPtr, 'Flip');

KbWait([],3); %Waits for keyboard(any) press
%Instruction 5
textI = [text{19},'\n\n\n',text{20},'\n\n',text{21},...
    '\n\n',text{22},'\n\n',text{23},'\n\n\n\n\n\n\n\n',text{4}];
DrawFormattedText(wPtr,textI,'center','center');
Screen(wPtr, 'Flip');

KbWait([],3); %Waits for keyboard(any) press

% Propose to repeat instructions
instructionText1 = [text{25},'\n\n\n\n\n\n\n\n\n',text{24}];
DrawFormattedText(wPtr,instructionText1,'center','center');
Screen(wPtr, 'Flip');

[keyIsDown, RT, keyCode] = KbCheck();
repeat = 0;
while repeat==0
    if keyIsDown 
        if keyCode(KbName('R'))
            repeat = 1;
        else
            repeat = -1;
        end
    end % if next key detected
    [keyIsDown, RT, keyCode] = KbCheck();
end % endless loop

if repeat == -1
    done = 0;
end
end

% textI = [text{23}];
% DrawFormattedText(wPtr,textI,'center','center');
% Screen(wPtr, 'Flip');
if debug
%Screen('CloseAll');
end
%****END OF INSTRUCTIONS****
