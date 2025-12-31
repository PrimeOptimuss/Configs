#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

#Auto start fastfetch with terminal
fastfetch

#GPU offload for whenever prime-run is needed
alias prime-run="__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia __VK_LAYER_NV_optimus=NVIDIA_only"

#Apps
alias bambustudio="flatpak run com.bambulab.BambuStudio"
alias blender="flatpak run org.blender.Blender"
alias androidstudio="flatpak run com.google.AndroidStudio"

