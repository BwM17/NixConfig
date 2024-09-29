{config, pkgs, lib, osConfig, ...}: 
{ 
  home.packages = with pkgs; [
    rofi 
    jq
  ];
  
  home.file.".config/rofi/styles.rasi".text = ''     
    /*****----- Configuration -----*****/
    configuration {
	modi:                       "drun"; 
    show-icons:                 true;
	drun-display-format:        "{name}";
}

/*****----- Global Properties -----*****/
* {
    font:                        "Iosevka Mono Nerd Font Bold 10"; 
    background:                  #161616; 
    background-alt:              #232323;
    foreground:                  #FFFAF1;
    selected:                    #B7C6E7;
    active:                      #E5EDFF;
    urgent:                      #BF616A;
}

/*****----- Main Window -----*****/
window {
    /* properties for window widget */
    transparency:                "real";
    location:                    center;
    anchor:                      center;
    fullscreen:                  false;
    width:                       700px;
    x-offset:                    0px;
    y-offset:                    0px;

    /* properties for all widgets */
    enabled:                     true;
    //border-radius:               20px;
    cursor:                      "default";
    background-color:            @background; 
}

/*****----- Main Box -----*****/
mainbox {
    enabled:                     true;
    spacing:                     0px;
    background-color:            transparent;
    orientation:                 vertical;
    children:                    [ "inputbar", "listbox" ]; 
}

listbox {
    spacing:                     20px;
    padding:                     20px;
    background-color:            transparent;
    orientation:                 vertical;
    children:                    [ "message", "listview" ];
}

/*****----- Inputbar -----*****/
inputbar {
    enabled:                     true;
    spacing:                     10px;
    padding:                     80px 60px;
    background-color:            transparent;
    background-image:            url("~/.config/i3/wallpaper/back.jpg", width);  
    text-color:                  @foreground;
    orientation:                 horizontal; 
    border-color:                      @background; 
    border:                       4px solid; 
    children:                    [ "entry" ]; 
}
entry {
    enabled:                     true;
    expand:                      false;
    width:                       550px; 
    padding:                     12px 16px;
    border-radius:               100%;
    background-color:            @background-alt;
    text-color:                  inherit;
    cursor:                      text;
    placeholder:                 "Search";
    placeholder-color:           inherit;
}
dummy {
    expand:                      true;
    background-color:            transparent;
}


/*****----- Listview -----*****/
listview {
    enabled:                     true;
    columns:                     1;
    lines:                       7;
    cycle:                       true;
    dynamic:                     true;
    scrollbar:                   false;
    layout:                      vertical;
    reverse:                     false;
    fixed-height:                true;
    fixed-columns:               true;
    
    spacing:                     10px;
    background-color:            transparent;
    text-color:                  @foreground;
    cursor:                      "default";
}

/*****----- Elements -----*****/
element {
    enabled:                     true;
    spacing:                     10px;
    padding:                     4px;
    border-radius:               100%;
    background-color:            transparent;
    text-color:                  @foreground;
    cursor:                      pointer;
}
element normal.normal {
    background-color:            inherit;
    text-color:                  inherit;
}
element normal.urgent {
    background-color:            @urgent;
    text-color:                  @foreground;
}
element normal.active {
    background-color:            @active;
    text-color:                  @foreground;
}
element selected.normal {
    background-color:            @selected;
    text-color:                  @background; 
}
element selected.urgent {
    background-color:            @urgent;
    text-color:                  @foreground;
}
element selected.active {
    background-color:            @urgent;
    text-color:                  @foreground;
}
element-icon {
    background-color:            transparent;
    text-color:                  inherit;
    size:                        32px;
    cursor:                      inherit;
}
element-text {
    background-color:            transparent;
    text-color:                  inherit;
    cursor:                      inherit;
    vertical-align:              0.5;
    horizontal-align:            0.0;
}

/*****----- Message -----*****/
message {
    background-color:            transparent;
}
textbox {
    padding:                     12px;
    border-radius:               100%;
    background-color:            @background-alt;
    text-color:                  @foreground;
    vertical-align:              0.5;
    horizontal-align:            0.0;
}
error-message {
    padding:                     12px;
    //border-radius:               20px;
    background-color:            @background;
    text-color:                  @foreground;
} 
'';

}