Config = {}

Config.StopAndDiscard = false -- Boolean, whether or not it lets people stop recording and discard the clip
Config.StopAndSave = false
Config.Record = false
Config.RockstarEditorOpen = false

Config.LangNotify = {
    ['STOP_RECORDING_SAVE_NOTI']    = 'You have stopped recording, the clip has been saved to rockstar',-- String
    ['STOP_RECORDING_DISCARD_NOTI'] = 'You have stopped recording, the clip has been discarded',-- String
    ['START_RECORDING_NOTI']        = 'You have started recording',-- String
    ['NOTI_TITLE']                  = 'Rockstar', -- String
}

Config.LangMenu = {
    ['START_RECORDING_TITLE']        = 'Start Recording', -- String
    ['START_RECORDING_DESC']         = 'Start Recording', -- String
    ['STOP_RECORDING_SAVE_TITLE']    = 'Stop Recording & Save',-- String
    ['STOP_RECORDING_SAVE_DESC']     = 'Stop Recording and Save',-- String
    ['STOP_RECORDING_DISCARD_TITLE'] = 'Stop Recording & Discard',-- String
    ['STOP_RECORDING_DISCARD_DESC']  = 'Stop recording and discard the clip',-- String
    ['OPEN_ROCKSTAR_TITLE']          = 'Open Rockstar Editor', -- String
    ['OPEN_ROCKSTAR_DESC']           = 'Open rockstar editor !THIS WILL DISCONNECT YOU FROM THE SERVER!', -- String
}