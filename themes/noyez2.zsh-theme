#!/usr/bin/env zsh
# #
# # #README
# #
# # This theme provides two customizable header functionalities : 
# # a) displaying a pseudo-random message from a database of quotations
# # (https://en.wikipedia.org/wiki/Fortune_%28Unix%29)
# # b) displaying randomly command line tips from The command line fu 
# # (http://www.commandlinefu.com) community: in order to make use of this functionality
# # you will need Internet connection. 
# # This theme provides as well information for the current user's context, like;
# # branch and status for the current version control system (git and svn currently
# # supported) and time, presented to the user in a non invasive volatile way.
# #
# # #REQUIREMENTS
# # This theme requires wget::
# # -Homebrew-osx- brew install wget
# # -Debian/Ubuntu- apt-get install wget
# # and fortune ::
# # -Homebrew-osx- brew install fortune
# # -Debian/Ubuntu- apt-get install fortune
# #
# # optionally:
# # -Oh-myzsh vcs plug-ins git and svn.
# # -Solarized theme (https://github.com/altercation/solarized/)
# # -OS X: iTerm 2 (http://www.iterm2.com/)
# # -font Source code pro (https://github.com/adobe/source-code-pro)
# # 
# # Author: Adolfo Benedetti
# # email: adolfo.benedetti@gmail.com
# # License: Public Domain
# # This theme's look and feel is based on the Aaron Toponce's zsh theme , more info: 
# # http://pthree.org/2008/11/23/727/
# # enjoy!
########## COLOR ###########
for COLOR in CYAN WHITE YELLOW MAGENTA BLACK BLUE RED DEFAULT GREEN GREY; do
    eval PR_$COLOR='%{$fg[${(L)COLOR}]%}'
    eval PR_BRIGHT_$COLOR='%{$fg_bold[${(L)COLOR}]%}'
done
PR_RESET="%{$reset_color%}"
RED_START="${PR_RESET}${PR_GREY}<${PR_RESET}${PR_RED}<${PR_BRIGHT_RED}<${PR_RESET} "
RED_END="${PR_RESET}${PR_BRIGHT_RED}>${PR_RESET}${PR_RED}>${PR_GREY}>${PR_RESET} "
GREEN_END="${PR_RESET}${PR_BRIGHT_GREEN}>${PR_RESET}${PR_GREEN}>${PR_GREY}>${PR_RESET} "
GREEN_BASE_START="${PR_RESET}${PR_GREY}>${PR_RESET}${PR_GREEN}>${PR_BRIGHT_GREEN}>${PR_RESET}"
GREEN_START_P1="${PR_RESET}${GREEN_BASE_START}${PR_RESET} "
DIVISION="${PR_RESET}${PR_RED} < ${PR_RESET}"

PROMPT_START="${PR_RESET}%B`uname -s`|%n@%m %#› %b${PR_RESET}"

VCS_DIRTY_COLOR="${PR_RESET}${PR_YELLOW}"
Vcs_CLEAN_COLOR="${PR_RESET}${PR_GREEN}"
VCS_SUFIX_COLOR="${PR_RESET}${PR_RED}› ${PR_RESET}"
# ########## COLOR ###########
# ########## SVN ###########
ZSH_THEME_SVN_PROMPT_PREFIX="${PR_RESET}${PR_RED}‹svn:"
ZSH_THEME_SVN_PROMPT_SUFFIX="›" 
ZSH_THEME_SVN_PROMPT_DIRTY="${VCS_DIRTY_COLOR} ✘${VCS_SUFIX_COLOR}"
ZSH_THEME_SVN_PROMPT_CLEAN="${VCS_CLEAN_COLOR} ✔${VCS_SUFIX_COLOR}"
# ########## SVN ###########
# ########## GIT ###########
ZSH_THEME_GIT_PROMPT_PREFIX="${PR_RESET}${PR_RED}‹git:"
ZSH_THEME_GIT_PROMPT_SUFFIX="›" 
#ZSH_THEME_GIT_PROMPT_DIRTY="${VCS_DIRTY_COLOR} ✘${VCS_SUFIX_COLOR}"
#ZSH_THEME_GIT_PROMPT_CLEAN="${VCS_CLEAN_COLOR} ✔${VCS_SUFIX_COLOR}"
#ZSH_THEME_GIT_PROMPT_ADDED="${PR_RESET}${PR_YELLOW} ✚${PR_RESET}"
#ZSH_THEME_GIT_PROMPT_MODIFIED="${PR_RESET}${PR_YELLOW} ✹${PR_RESET}"
#ZSH_THEME_GIT_PROMPT_DELETED="${PR_RESET}${PR_YELLOW} ✖${PR_RESET}"
#ZSH_THEME_GIT_PROMPT_RENAMED="${PR_RESET}${PR_YELLOW} ➜${PR_RESET}"
#ZSH_THEME_GIT_PROMPT_UNMERGED="${PR_RESET}${PR_YELLOW} ═${PR_RESET}"
#ZSH_THEME_GIT_PROMPT_UNTRACKED="${PR_RESET}${PR_YELLOW} ✭${PR_RESET}"


#ZSH_THEME_GIT_PROMPT_PREFIX=" ☁  %{$fg[red]%}"
#ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%} ☂" # Ⓓ
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%} ✭" # ⓣ
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%} ☀" # Ⓞ

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[cyan]%} ✚" # ⓐ ⑃
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%} ⚡"  # ⓜ ⑁
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✖" # ⓧ ⑂
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[blue]%} ➜" # ⓡ ⑄
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[magenta]%} ♒" # ⓤ ⑊
ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg[blue]%} 𝝙"

# More symbols to choose from:
# # ☀ ✹ ☄ ♆ ♀ ♁ ♐ ♇ ♈ ♉ ♚ ♛ ♜ ♝ ♞ ♟ ♠ ♣ ⚢ ⚲ ⚳ ⚴ ⚥ ⚤ ⚦ ⚒ ⚑ ⚐ ♺ ♻ ♼ ☰ ☱ ☲ ☳ ☴ ☵ ☶ ☷
# # ✡ ✔ ✖ ✚ ✱ ✤ ✦ ❤ ➜ ➟ ➼ ✂ ✎ ✐ ⨀ ⨁ ⨂ ⨍ ⨎ ⨏ ⨷ ⩚ ⩛ ⩡ ⩱ ⩲ ⩵  ⩶ ⨠ 
# # ⬅ ⬆ ⬇ ⬈ ⬉ ⬊ ⬋ ⬒ ⬓ ⬔ ⬕ ⬖ ⬗ ⬘ ⬙ ⬟  ⬤ 〒 ǀ ǁ ǂ ĭ Ť Ŧ
#
#


# ########## GIT ###########
function precmd {
    #gets the fortune
#    ps1_fortune () {
#        #Choose from all databases, regardless of whether they are considered "offensive"
#        fortune -a
#    }
    #obtains the tip 
#    ps1_command_tip () {
#        wget -qO - http://www.commandlinefu.com/commands/random/plaintext | sed 1d | sed '/^$/d'
#    }  
#    prompt_header () {
#        if [[ "true" == "$ENABLE_COMMAND_TIP" ]]; then
#            ps1_command_tip
#        else
#            ps1_fortune
#        fi 
#    }   
    PROMPT_HEAD="${RED_START}${PR_YELLOW}${PR_RESET}"
    # set a simple variable to show when in screen
    if [[ -n "${WINDOW}" ]]; then
        SCREEN=""
    fi
}

# Context: user@directory or just directory
prompt_context () {
    local user=`whoami`
    if [[ "$user" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
        echo -n "${PR_RESET}${PR_RED}$user@%m${PR_RESET}${PR_BRIGHT_YELLOW}%~%<<${PR_RESET}"
    else
        echo -n "${PR_RESET}${PR_BRIGHT_YELLOW}%~%<<${PR_RESET}"
    fi
}

set_prompt () {
    # required for the prompt
    setopt prompt_subst
    autoload colors zsh/terminfo
    if [[ "$terminfo[colors]" -gt 8 ]]; then
        colors
    fi 
    
    # ######### PROMPT #########
#    PROMPT='${PROMPT_HEAD}
#${RED_START}$(prompt_context)
#${GREEN_START_P1}'
    PROMPT='${PROMPT_START}'
    RPROMPT='${PR_RESET}$(git_prompt_info)$(svn_prompt_info)${PR_YELLOW}%D{%R} ${PR_RESET}'
    # Matching continuation prompt
#    PROMPT2='${GREEN_BASE_START}${PR_RESET} %_ ${GREEN_BASE_START}${PR_RESET} '
    # ######### PROMPT #########
}

set_prompt
