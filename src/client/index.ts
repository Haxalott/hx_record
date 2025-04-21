import lib from '@overextended/ox_lib/client';

lib.registerContext({
  id: 'hx_record',
  title: 'Rockstar Menu',
  options: [
    {
      title: 'Record',
      icon: 'video',
      onSelect: () => {
        StartRecording(1);
      }
    },
    {
      title: 'Save',
      icon: 'floppy-disk',
      onSelect: () => {
        StopRecordingAndSaveClip();
      }
    },
    {
      title: 'Discard',
      icon: 'trash',
      onSelect: () => {
        StopRecordingAndDiscardClip();
      }
    },
    {
      title: 'Rockstar Editor',
      icon: 'film',
      onSelect: () => {
        ActivateRockstarEditor();
      }
    }
  ]
})

RegisterCommand('record', (source: number, args: string[], rawCommand: string) => {
  if (!args || args.length === 0) {
    lib.showContext('hx_record');
    return;
  } else {
    switch (args[0]) {
      case 'record':
        StartRecording(1);
        break;
      case 'save':
        StopRecordingAndSaveClip();
        break;
      case 'discard':
        StopRecordingAndDiscardClip();
        break;
      case 'rockstar':
        ActivateRockstarEditor();
        break;
      default:
        lib.notify({
          title: 'Rockstar Editor',
          description: 'Not a valid argument',
          type: 'error'
        });
    }
  }
}, false);

emit('chat:addSuggestions', [
  {
    name: '/record',
    help: 'Record a rockstar clip',
    params: [
      { name: 'action', help: 'record | save | discard | rockstar'}
    ]
  }
])