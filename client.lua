print('hx_record 1.0.1 has been started.')
  
  Citizen.CreateThread(function()
    lib.registerContext({
      id = 'hx_rockstar',
      title = 'Rockstar Menu',
      options = {
        {
          title = 'Record',
          icon = 'play',
          event = 'hx_record:record',
          description = 'Start Recording'
        },
        {
          title = 'Stop Recording',
          icon = 'stop',
          event = 'hx_record:save',
          description = 'Stop Recording & Save Clip'
        },
        {
          title = 'Open Rockstar Editor',
          icon = 'clapperboard',
          event = 'hx_record:rockstar',
          description = 'Open Rockstar Editor (This will disconnect you from the server)'
        }
      }
    })
  end)


RegisterCommand('rockstar', function()
  lib.showContext('hx_rockstar')
end)

RegisterNetEvent('hx_record:record', function()
  StartRecording(1)
  lib.notify({
    title = 'Recording Started!',
    description = 'The recording has been started',
    type = 'inform',
    icon = 'play',
    position = 'top-center',
    style = {
      backgroundColor = '#141517',
      color = '#C1C2C5',
      ['.description'] = {
        color = '#909296'
      }
  },
    iconColor = 'white'
  })
end)

RegisterNetEvent('hx_record:save', function()
  StopRecordingAndSaveClip()
  lib.notify({
    title = 'Recording Saved!',
    description = 'The recording has been saved to your rockstar collection',
    type = 'inform',
    icon = 'stop',
    position = 'top-center',
    style = {
      backgroundColor = '#141517',
      color = '#C1C2C5',
      ['.description'] = {
        color = '#909296'
      }
  },
    iconColor = 'white'
  })
end)

RegisterNetEvent('hx_record:rockstar', function()
  ActivateRockstarEditor()
end)



