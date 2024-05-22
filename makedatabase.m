% Read all MP3 files in 'dir' and add them to the database training if they are not already in 'songid'
dir = 'music'; % This is the folder that the MP3 files must be placed in.
songs = getMp3List(dir);
hashTableSize = 100000; % This can be adjusted. Setting it too small will cause more accidental collisions.
global hashtable
% Check if we have a database in the workspace
if ~exist('songid')
% Load database if one exists
if exist('SONGID.mat')
load('SONGID.mat');
load('HASHTABLE.mat');
else
% Create new database
songid = cell(0);
hashtable = cell(hashTableSize,2); %
end
end
songIndex = length(songid); % This becomes the song ID number.
