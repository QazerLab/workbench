The Keymap
==========

The Openbox configuration is carefully designed to be usable without changes both with full-size
and 60% keyboards (namely Vortex Pok3r).

This keymap adheres to the following principles:

* all WM and system management actions start with, or, at least, include the `Win` key;
  all other combinations of modifier keys are reserved for use in applications;
* the most frequent actions should use only one modifier key (i.e. `Win`);
* the most frequent actions should tend to the home row or the most comfortable top/bottom row keys;
* the F-row is banned due to being unusable and uncomfy crap even on full-sized keyboards;
* dangerous hotkeys (shutdown, reboot, etc.) should be hard to mess with other ones, but still should be simple.

The most lucky and extremely useful findings here are

* `Win-Esc` for shutdown;
* `Win-W` for window termination;
* `Win-A` for window maximization toggling;
* `Win-<>/` for volume tuning.



Complete Layout
---------------

The only hotkey from F-row which is allowed to exist as an exception:

Base Key | Win-\<Key\>                      | Ctrl-Win-\<Key\>       | Comment
---------|----------------------------------|------------------------|-----------------------------
Esc      | Shutdown                         | Reboot                 | Really nice to hit blindly


The numeric row keymap includes only rare actions:

Base Key | Win-\<Key\>                      | Ctrl-Win-\<Key\>       | Comment
---------|----------------------------------|------------------------|-----------------------------
~        | Toggle Tilda                     |                        | Delegated to app (exception)
1        | Go to desktop 1                  |                        |
2        | Go to desktop 2                  |                        |
3        | Go to desktop 3                  |                        |
4        | Go to desktop 4                  |                        |
5...0    |                                  |                        |
\-       |                                  |                        |
=        |                                  |                        |
Bksp     | Suspend                          | Hibernate              |


The top row:

Base Key | Win-\<Key\>                      | Ctrl-Win-\<Key\>       | Comment
---------|----------------------------------|------------------------|-----------------------------
Tab      | Cycle windows                    |                        | Better than `Alt-Tab`!
Q        | Reconfigure Openbox              |                        |
W        | Close window                     | Run Wireshark          | `W-W` beats `Alt-F4`
E        | Show window menu                 | Run editor (Sublime)   |
R        | Open quick run window (gmrun)    |                        | `W-R` is from Windows
T        | Run terminal                     | Run Transmission       |
Y        |                                  |                        |
U        | Move to desktop left             |                        |
I        | Reconfigure screens (optional)   | Run IDEA               |
O        | Move to desktop right            | Run Vivaldi            |
P        |                                  |                        |
[        |                                  |                        |
]        |                                  |                        |
\        |                                  |                        |


The home row:

Base Key | Win-\<Key\>                      | Ctrl-Win-\<Key\>       | Comment
---------|----------------------------------|------------------------|-----------------------------
A        | Toggle maximize                  |                        | Incredibly useful
S        |                                  | Run Skype              |
D        | Toggle show desktop              | Run DoubleCmd          | `W-D` is from Windows
F        | Toggle fullscreen                | Run Firefox            |
G        |                                  | Run Gimp               |
H        | Go to desktop left               |                        |
J        | Minimize window                  |
K        | Maximize window                  |
L        | Go to desktop right              | Run Slack
;        | Lock screen                      |
'        |                                  |


Finally, the bottom row:

Base Key | Win-\<Key\>                      | Ctrl-Win-\<Key\>       | Comment
---------|----------------------------------|------------------------|-----------------------------
Z        | Move to edge left                | Run Kiwix              |
X        | Move to edge down                | Run Xournalpp          |
C        | Move to edge up                  |                        |
V        | Move to edge right               | Run VisualVM           |
B        |                                  |                        |
N        | Change window size               | Run Netbeans           |
M        | Move window                      | Run Chromium           |
\<       | Volume down                      |                        | One more awesome finding
\>       | Volume up                        |                        | Two more awesome findings...
/        | Volume mute                      |                        | Three more awesome findings!



Some legacy hotkeys are still kept alive and may be used along main hotkeys:

* `Alt-Tab` (superceded by `Win-Tab`);
* `Alt-F4` (superceded by `Win-W`);
* `Win-Down/Up` (superceded by `Win-J/K`, but actually `Win-A` is used for both actions in 99% of cases).

Someday these will be gone due to uselessness.
