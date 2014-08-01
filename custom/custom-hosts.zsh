# Add yourself some shortcuts to projects you often work on
# Example:
#
# brainstormr=/Users/robbyrussell/Projects/development/planetargon/brainstormr
#

#
# Currently function does not work.
#
function load_local_plugins() {
    # Add all defined plugins to fpath. This must be done
    # before running compinit.
    echo  "loading plugin $local_plugins"
    for plugin in $local_plugins; do
      echo  "loading plugin $plugin"
      if is_plugin $ZSH_CUSTOM $plugin; then
        echo  "loading plugin $plugin"
        fpath=($ZSH_CUSTOM/plugins/$plugin $fpath)
      elif is_plugin $ZSH $plugin; then
        echo  "loading plugin $plugin"
        fpath=($ZSH/plugins/$plugin $fpath)
      else
        echo  "NOT loading plugin $plugin"
      fi
    done
}

echo " -- on host `hostname` -- "
CUSTOM_ZSH_LOCAL=$HOME/.zsh.local.`hostname`
if [ -e $CUSTOM_ZSH_LOCAL ] ; then
    echo "sourcing $CUSTOM_ZSH_LOCAL" 
    source $CUSTOM_ZSH_LOCAL
else
    echo "No local zsh fil:e $CUSTOM_ZSH_LOCAL" 
fi

##if [ `hostname` = "bkn" ]; then
##    echo " -- on host `hostname` -- "
###    source ~/.zshrc_android
##elif [ `hostname` = "noyez" ]; then
##    echo " -- on host `hostname` -- "
##    source ~/.zsh.local
###    echo $fpath
###    local_plugins=( svn git )
###    echo $local_plugins
###    load_local_plugins 
###    echo $fpath
##else 
##    echo " -- on host `hostname` (not custom section) -- "
##fi
