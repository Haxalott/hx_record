local Record = 'Start Recording'

  Citizen.CreateThread(function()
    lib.registerContext({
      id = 'hx_rockstar',
      title = 'Rockstar Menu',
      options = {
        {
          title = 'Record',
          icon = 'play',
          event = 'record',
          description = 'Start Recording'
        },
        {
          title = 'Stop Recording',
          icon = 'stop',
          event = 'save',
          description = 'Stop Recording & Save Clip'
        },
        {
          title = 'Open Rockstar Editor',
          icon = 'clapperboard',
          event = 'rockstar',
          description = 'Open Rockstar Editor (This will disconnect you from the server)'
        }
      }
    })
  end)


RegisterCommand('rockstar', function()
  TriggerEvent('rockstarmenu')
end)

RegisterNetEvent('rockstarmenu')
AddEventHandler('rockstarmenu', function()
  lib.showContext('hx_rockstar')
end)

RegisterNetEvent('record', function()
  TriggerEvent('record')
  StartRecording(1)
end)

RegisterNetEvent('save', function()
  TriggerEvent('save')
  StopRecordingAndSaveClip()
end)

RegisterNetEvent('rockstar', function()
  TriggerEvent('rockstar')
  ActivateRockstarEditor()
end)


