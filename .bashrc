# This file runs once each time an interactive shell is started.
#
# Do:
#    Add Aliases
#    Set environent preferences for development
#
# Do NOT:
#    Add PATH(s), those belong in .bash_profile


export COLUMNS=250
export HISTSIZE=100
export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:*.c=00;32:*.cc=00;32:*.cpp=00;32:*.h=00;33:'
export LS_OPTIONS='-la -F -b -T 0 --color=auto'
export PS1='\u@\h:\w\$ '

# MSBuild Creature Comforts
alias badebug='MSBuild.exe /target:rebuild /property:Configuration=debug /property:Platform="AnyCPU"'
alias barelease='MSBuild.exe /target:rebuild /property:Configuration=release /property:Platform="AnyCPU"'
alias barelease='MSBuild.exe /target:rebuild /property:Configuration=release /property:Platform="AnyCPU"'
alias bx86debug='MSBuild.exe /target:rebuild /property:Configuration=debug /property:Platform=x86'
alias bx86release='MSBuild.exe /target:rebuild /property:Configuration=release /property:Platform=x86'
alias bx64debug='MSBuild.exe /target:rebuild /property:Configuration=debug /property:Platform=x64'
alias bx64release='MSBuild.exe /target:rebuild /property:Configuration=release /property:Platform=x64'
alias NuGetRestore='MSBuild.exe /target:restore /property:Configuration=release'

# BASH Creature Comforts
alias diff='diff -yw --suppress-common-lines'
alias l='ls -lah --color'
alias less='less -R'
alias restart='exec bash'

# Various Tools
alias code='estart VSCODE 64 IBARAKI'
alias slick='estart.exe SLICKEDIT 64 IBARKI'
alias trim="sed -i 's/[[:space:]]*$//'"
