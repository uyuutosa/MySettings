# Created by newuser for 5.1.1

if [ -f ~/.zsh_aliases ]; then
    source ~/.zsh_aliases
fi

if [ -f ~/.zsh_environs ]; then
    source ~/.zsh_environs
fi

export LANG=ja_JP.UTF-8
set -o vi
# Vi ライクな操作が好みであれば `bindkey -v` とする
bindkey -v
#
# # 自動補完を有効にする
# # コマンドの引数やパス名を途中まで入力して <Tab> を押すといい感じに補完してくれる
# # 例： `cd path/to/<Tab>`, `ls -<Tab>`
autoload -U compinit; compinit
#
# # 入力したコマンドが存在せず、かつディレクトリ名と一致するなら、ディレクトリに cd する
# # 例： /usr/bin と入力すると /usr/bin ディレクトリに移動
setopt auto_cd
#
# # ↑を設定すると、 .. とだけ入力したら1つ上のディレクトリに移動できるので……
# # 2つ上、3つ上にも移動できるようにする
# alias ...='cd ../..'
alias ....='cd ../../..'
#
# # cd した先のディレクトリをディレクトリスタックに追加する
# # ディレクトリスタックとは今までに行ったディレクトリの履歴のこと
# # `cd +<Tab>` でディレクトリの履歴が表示され、そこに移動できる
setopt auto_pushd
#
# # pushd したとき、ディレクトリがすでにスタックに含まれていればスタックに追加しない
setopt pushd_ignore_dups
#
# # 拡張 glob を有効にする
# # glob とはパス名にマッチするワイルドカードパターンのこと
# # （たとえば `mv hoge.* ~/dir` における "*"）
# # 拡張 glob を有効にすると # ~ ^ もパターンとして扱われる
# # どういう意味を持つかは `man zshexpn` の FILENAME GENERATION を参照
setopt extended_glob
#
# # 入力したコマンドがすでにコマンド履歴に含まれる場合、履歴から古いほうのコマンドを削除する
# # コマンド履歴とは今まで入力したコマンドの一覧のことで、上下キーでたどれる
setopt hist_ignore_all_dups
#
# # コマンドがスペースで始まる場合、コマンド履歴に追加しない
# # 例： <Space>echo hello と入力
setopt hist_ignore_space

# <Tab> でパス名の補完候補を表示したあと、
# 続けて <Tab> を押すと候補からパス名を選択できるようになる
# 候補を選ぶには <Tab> か Ctrl-N,B,F,P
zstyle ':completion:*:default' menu select=1

# 単語の一部として扱われる文字のセットを指定する
# ここではデフォルトのセットから / を抜いたものとする
# こうすると、 Ctrl-W でカーソル前の1単語を削除したとき、 / までで削除が止まる
WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

# completion
bindkey "^P" up-line-or-search

# History settings

autoload history-search-end

zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end

bindkey "^p" history-beginning-search-backward-end

bindkey "^p" history-beginning-search-forward-end

export HISTFILE=${HOME}/.zsh_history

export HISTSIZE=10000

export SAVEHIST=100000

setopt hist_ignore_dups

setopt EXTENDED_HISTORY




