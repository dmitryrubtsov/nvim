"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
""
"                                                                              "
"                                 .::::.                                       "
"                    ___________ :;;;;:`____________                           "
"                    \_________/ ?????L \__________/                           "
"                      |.....| ????????> :.......'                             "
"                      |:::::| $$$$$$"`.:::::::' ,                             "
"                     ,|:::::| $$$$"`.:::::::' .OOS.                           "
"                   ,7D|;;;;;| $$"`.;;;;;;;' .OOO888S.                         "
"                 .GDDD|;;;;;| ?`.;;;;;;;' .OO8DDDDDNNS.                       "
"                  'DDO|IIIII| .7IIIII7' .DDDDDDDDNNNF`                        "
"                    'D|IIIIII7IIIII7' .DDDDDDDDNNNF`                          "
"                      |EEEEEEEEEE7' .DDDDDDDNNNNF`                            "
"                      |EEEEEEEEZ' .DDDDDDDDNNNF`                              "
"                      |888888Z' .DDDDDDDDNNNF`                                "
"                      |8888Z' ,DDDDDDDNNNNF`                                  "
"                      |88Z'    "DNNNNNNN"                                     "
"                      '"'        "MMMM"                                       "
"                                   ""                                         "
"                                                                              "
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
"
" User configuration directory. The init.vim is stored here.
let $VIMCONFIG = stdpath('config')
" User data directory. The shada-file is stored here.
let $VIMDATA = stdpath('data')

source $VIMCONFIG/init.d/plugins.vim
source $VIMCONFIG/init.d/basic.vim
source $VIMCONFIG/init.d/filetypes.vim
source $VIMCONFIG/init.d/plugin_config.vim
