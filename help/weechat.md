weechat
--------

hotlist
-------
https://weechat.org/files/doc/devel/weechat_user.en.html#notify_levels

<M-a>			Next in hotlist

/set weechat.notify*	List hotlist rules
/buffer notify <type>	Set hotlist trigger for buffer

---

main
----
M ←	Previous buffer
M →	Next buffer
M ↑	Previous buffer
M ↓	Next buffer
Ctrl n	Next buffer
Ctrl p	Previous buffer

<M-g>	Go to buffer
<M-w> 	Close buffer

<M-l>	Bare mode

/save	Persist settings
/exit	Exit weechat

/iset	Preferences
/script	Load script manager

<S-M+M1> Paste

/autojoin --run
/layout store
/save

---

slack
-----
/slack talk [username]
/slack join [channel]

/slack channels
/slack users

/help layout

---

notifications
-------------
/exec -bg /usr/bin/osascript -e 'display notification "Your highlight was triggered in Weechat" with title "Highlight"'

terminal-notifier -title 'Weechat Highlight' -message 'Your highlight was triggered in Weechat' -sender org.macports.X11 -sound Submarine -activate org.macports.X11

/set trigger.trigger.beep.command "/print -beep;/exec -bg /Users/carlos/.macports/bin/terminal-notifier -title 'Weechat Highlight' -message 'Your highlight was triggered in Weechat' -sender org.macports.X11 -sound Submarine -activate org.macports.X11"

***
