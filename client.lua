local function notify(description, title, icon)
  lib.notify({
    title = title,
    description = description,
    icon = icon
  })
end

local function rockstarMenu()
  ActivateRockstarEditor()
end

local function saveRecording()
  notify(Config.LangNotify['STOP_RECORDING_SAVE_NOTI'], Config.LangNotify['NOTI_TITLE'], 'floppy-disk')
  StopRecordingAndSaveClip()
end

local function startRecording()
  notify(Config.LangNotify['START_RECORDING_NOTI'], Config.LangNotify['NOTI_TITLE'], 'clapperboard')
  StartRecording(1)
end

local function discardRecording()
  StopRecordingAndDiscardClip()
  notify(Config.LangNotify['STOP_RECORDING_DISCARD_NOTI'], Config.LangNotify['NOTI_TITLE'], 'trash')
end

RegisterCommand('rockstar', function()
  local Menu = {}
  if Config.Record then
    Menu[#Menu + 1] = {
      title = Config.LangMenu['START_RECORDING_TITLE'],
      description = Config.LangMenu['START_RECORDING_DESC'],
      icon = 'clapperboard',
      onSelect = function()
        startRecording()
      end,
    }
  end
  if Config.StopAndSave then
    Menu[#Menu + 1] = {
      title = Config.LangMenu['STOP_RECORDING_SAVE_TITLE'],
      description = Config.LangMenu['STOP_RECORDING_SAVE_DESC'],
      icon = 'floppy-disk',
      onSelect = function()
        saveRecording()
      end,
    }
  end
  if Config.StopAndDiscard then
    Menu[#Menu + 1] = {
      title = Config.LangMenu['STOP_RECORDING_DISCARD_TITLE'],
      description = Config.LangMenu['STOP_RECORDING_DISCARD_DESC'],
      icon = 'trash',
      onSelect = function()
        discardRecording()
      end,
    }
  end
  if Config.RockstarEditorOpen then
    Menu[#Menu + 1] = {
      title = Config.LangMenu['OPEN_ROCKSTAR_TITLE'],
      description = Config.LangMenu['OPEN_ROCKSTAR_DESC'],
      icon = 'video',
      onSelect = function()
        rockstarMenu()
      end,
    }
  end
  lib.registerContext({
    id = 'hx_rockstar:rockstarMenu',
    title = 'Rockstar Menu',
    options = Menu
  })
  lib.showContext('hx_rockstar:rockstarMenu')
end)
