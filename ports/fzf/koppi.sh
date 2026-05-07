# Koppi theme for fzf
#
# Source this file or add its contents to your shell configuration.
#
# bash/zsh:
#   source /path/to/ports/fzf/koppi.sh
#
# fish:
#   set -x FZF_DEFAULT_OPTS "$FZF_DEFAULT_OPTS ..."  (adapt manually)

export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
  --color=fg:#e8e8e8,bg:#2e2e2e,hl:#d4b048 \
  --color=fg+:#e8e8e8,bg+:#383838,hl+:#e8c858 \
  --color=info:#909090,border:#535353,separator:#535353 \
  --color=prompt:#d4b048,pointer:#e8c858,marker:#6aa07a \
  --color=spinner:#d4b048,header:#909090,label:#d4b048 \
  --color=preview-fg:#e8e8e8,preview-bg:#2e2e2e,preview-border:#535353"