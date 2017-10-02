%%  RLWM + PST - new version 2014 (Anne Collins))

%%%% Anne Collins
%%%% Brown University
%%%% November 2014
%%%% anne_collins@brown.edu

%%%% get inputs, run RLWM on those inputs.


function runRLWM%(subject_id)

subject_id = input('Participant number:');
starttime=datetime;
RLWMtraining(subject_id);
endpracticetime=datetime;

local_sujet = 1+rem(subject_id-1,10);

folder = pwd;
folder = [folder,'/NewInputsLSSt/'];
load([folder,'Matrice_sujet',num2str(local_sujet)]);
%cd ..

% block/setsize assignation
blocks = matrice.blocks;
prs = matrice.prs;

% block/stimset identity assignation
stSets = matrice.stSets;
% block/stim sequence assignation
stSeqs=matrice.stSeqs;
% probabilistic feedback
prSeqs = matrice.prSeqs;

% [1 2 3]-->keys mapping
Actions=matrice.Actions;%%%%(modify: some keyboards have different keynumbers)
Actions(Actions == 13) = KbName('C');%6
Actions(Actions == 14) = KbName('V');%25
Actions(Actions == 15) = KbName('B');%5
% specific stimuli identity
stimuli=matrice.stimuli;

% stimulus/correct action mapping
rules=matrice.rules;
% get PST phase inputs
%testStimsSeq = matrice.testStimsSeqs;

save allworkspacetmp
% If bugs out before N_back, run:
% load allworkspacetmp
% [w, rect] = Screen('OpenWindow', 0);


% run experiment with these inputs: RLWM phase 
[dataT,w,rect] = FullRLWM(blocks,prs,stSets,stSeqs,prSeqs,Actions,stimuli,rules,subject_id,local_sujet);

endlearningtime=datetime;

%PST test phase
cd ExperimentDesign_NBackTask-master/

save allworkspacetmp
% If bugs out before N_back, run:
% load allworkspacetmp
% [w, rect] = Screen('OpenWindow', 0);


[dataNback,labelsNback]=Run_N_back(w,rect);
cd ..
endNback=datetime;

stimBlockSeq=matricetest.stimBlockSeq;
stimNumSeq=matricetest.stimNumSeq;
stimCorA=matricetest.stimCorA;

[dataTest] = RLWMtesting(stimBlockSeq,stimNumSeq,stimCorA,Actions,stSets,stimuli,w,rect);
endtestingtime=datetime;

% save in subject specific file
directory = 'GroupedExpeData';

save([directory,'/WMP_ID',num2str(subject_id)],...
    'dataT','matrice','dataTest','matricetest','dataNback','labelsNback',...
    'starttime','endpracticetime','endlearningtime','endNback','endtestingtime')
% 
% bonus = bonusRLWM +bonusRLWMTST;
% 
% disp(['%%%%% Experimenter: overall bonus for this task is $',bonus,'. %%%%%']);

end
