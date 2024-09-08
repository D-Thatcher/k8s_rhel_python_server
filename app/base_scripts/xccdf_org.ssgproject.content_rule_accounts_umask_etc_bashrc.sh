#!/bin/sh
set -e

(>&2 echo "Remediating: 'xccdf_org.ssgproject.content_rule_accounts_umask_etc_bashrc'")


var_accounts_user_umask='077'


grep -q "^\s*umask" /etc/bashrc && \
  sed -i -E -e "s/^(\s*umask).*/\1 $var_accounts_user_umask/g" /etc/bashrc
if ! [ $? -eq 0 ]; then
    echo "umask $var_accounts_user_umask" >> /etc/bashrc
fi
