#!/bin/sh

PANE_PATH=`tmux display-message -p -F "#{pane_current_path}"`
if [ -f "$PANE_PATH/.nvmrc" ]
then
  echo "#[fg=colour2] #[fg=colour20]`/bin/cat $PANE_PATH/.nvmrc` "
fi
