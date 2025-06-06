{host, ...}: let
  inherit
    (import ../../../hosts/${host}/variables.nix)
    browser
    terminal
    ;
in {
  wayland.windowManager.hyprland.settings = {
    bind = [
      "$modifier,Return,exec,${terminal}"
      "$modifier,K,exec,list-keybinds"
      "$modifier SHIFT,Return,exec,rofi-launcher"
      "$modifier SHIFT,W,exec,web-search"
      "$modifier ALT,W,exec,wallsetter"
      "$modifier SHIFT,N,exec,swaync-client -rs"
      "$modifier,W,exec,${browser}"
      "$modifier,Y,exec,kitty -e yazi"
      "$modifier,E,exec,emopicker9000"
      "$modifier,S,exec,screenshootin"
      "$modifier,D,exec,discord"
      "$modifier,O,exec,obs"
      "$modifier,C,exec,hyprpicker -a"
      "$modifier,G,exec,gimp"
      "$modifier,T,exec,pypr toggle term"
      "$modifier,M,exec,pavucontrol"
      "$modifier,Q,killactive,"
      "$modifier,P,pseudo,"
      "$modifier,V,exec, cliphist list | rofi -dmenu | cliphist decode | wl-copy"
      "$modifier SHIFT,I,togglesplit,"
      "$modifier,F,fullscreen,"
      "$modifier SHIFT,F,togglefloating,"
      "$modifier ALT,F,workspaceopt, allfloat"
      "$modifier SHIFT,C,exit,"
      "$modifier SHIFT,left,movewindow,l"
      "$modifier SHIFT,right,movewindow,r"
      "$modifier SHIFT,up,movewindow,u"
      "$modifier SHIFT,down,movewindow,d"
      "$modifier SHIFT,h,movewindow,l"
      "$modifier SHIFT,l,movewindow,r"
      "$modifier SHIFT,k,movewindow,u"
      "$modifier SHIFT,j,movewindow,d"
      "$modifier ALT, left, swapwindow,l"
      "$modifier ALT, right, swapwindow,r"
      "$modifier ALT, up, swapwindow,u"
      "$modifier ALT, down, swapwindow,d"
      "$modifier ALT, 43, swapwindow,l"
      "$modifier ALT, 46, swapwindow,r"
      "$modifier ALT, 45, swapwindow,u"
      "$modifier ALT, 44, swapwindow,d"
      "$modifier,left,movefocus,l"
      "$modifier,right,movefocus,r"
      "$modifier,up,movefocus,u"
      "$modifier,down,movefocus,d"
      "$modifier,h,movefocus,l"
      "$modifier,l,movefocus,r"
      "$modifier,k,movefocus,u"
      "$modifier,j,movefocus,d"
      "$modifier,ampersand,workspace,1"
      "$modifier,eacute,workspace,2"
      "$modifier,quotedbl,workspace,3"
      "$modifier,apostrophe,workspace,4"
      "$modifier,parenleft,workspace,5"
      "$modifier,minus,workspace,6"
      "$modifier,egrave,workspace,7"
      "$modifier,underscore,workspace,8"
      "$modifier,ccedilla,workspace,9"
      "$modifier,agrave,workspace,10"
      "$modifier SHIFT,SPACE,movetoworkspace,special"
      "$modifier,SPACE,togglespecialworkspace"
      "$modifier SHIFT,ampersand,movetoworkspace,1"
      "$modifier SHIFT,eacute,movetoworkspace,2"
      "$modifier SHIFT,quotedbl,movetoworkspace,3"
      "$modifier SHIFT,apostrophe,movetoworkspace,4"
      "$modifier SHIFT,parenleft,movetoworkspace,5"
      "$modifier SHIFT,minus,movetoworkspace,6"
      "$modifier SHIFT,egrave,movetoworkspace,7"
      "$modifier SHIFT,underscore,movetoworkspace,8"
      "$modifier SHIFT,ccedilla,movetoworkspace,9"
      "$modifier SHIFT,agrave,movetoworkspace,10"
      "$modifier CONTROL,right,workspace,e+1"
      "$modifier CONTROL,left,workspace,e-1"
      "$modifier,mouse_down,workspace, e+1"
      "$modifier,mouse_up,workspace, e-1"
      "ALT,Tab,cyclenext"
      "ALT,Tab,bringactivetotop"
      ",XF86AudioRaiseVolume,exec,wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"
      ",XF86AudioLowerVolume,exec,wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
      " ,XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
      ",XF86AudioPlay, exec, playerctl play-pause"
      ",XF86AudioPause, exec, playerctl play-pause"
      ",XF86AudioNext, exec, playerctl next"
      ",XF86AudioPrev, exec, playerctl previous"
      ",XF86MonBrightnessDown,exec,brightnessctl set 5%-"
      ",XF86MonBrightnessUp,exec,brightnessctl set +5%"
    ];

    bindm = [
      "$modifier, mouse:272, movewindow"
      "$modifier, mouse:273, resizewindow"
    ];
  };
}
