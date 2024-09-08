FROM registry.access.redhat.com/ubi9:9.4

COPY base_scripts /dsop-fix/

RUN echo Update packages and install DISA STIG fixes && \
    sed -i "s/enabled=1/enabled=0/" /etc/dnf/plugins/subscription-manager.conf && \
    echo "exclude=filesystem-*" >> /etc/dnf/dnf.conf && \
    chmod +x /dsop-fix/*.sh && \
    dnf repolist && \
    dnf update -y && \
    dnf install -y cracklib-dicts nss && \
    echo "* hard maxlogins 10" > /etc/security/limits.d/maxlogins.conf && \
    /dsop-fix/xccdf_org.ssgproject.content_rule_account_disable_post_pw_expiration.sh && \
    /dsop-fix/xccdf_org.ssgproject.content_rule_accounts_logon_fail_delay.sh && \
    /dsop-fix/xccdf_org.ssgproject.content_rule_accounts_max_concurrent_login_sessions.sh && \
    /dsop-fix/xccdf_org.ssgproject.content_rule_accounts_maximum_age_login_defs.sh && \
    /dsop-fix/xccdf_org.ssgproject.content_rule_accounts_minimum_age_login_defs.sh && \
    /dsop-fix/xccdf_org.ssgproject.content_rule_accounts_password_minlen_login_defs.sh && \
    /dsop-fix/xccdf_org.ssgproject.content_rule_accounts_password_pam_dcredit.sh && \
    /dsop-fix/xccdf_org.ssgproject.content_rule_accounts_password_pam_dictcheck.sh && \
    /dsop-fix/xccdf_org.ssgproject.content_rule_accounts_password_pam_difok.sh && \
    /dsop-fix/xccdf_org.ssgproject.content_rule_accounts_password_pam_lcredit.sh && \
    /dsop-fix/xccdf_org.ssgproject.content_rule_accounts_password_pam_maxclassrepeat.sh && \
    /dsop-fix/xccdf_org.ssgproject.content_rule_accounts_password_pam_maxrepeat.sh && \
    /dsop-fix/xccdf_org.ssgproject.content_rule_accounts_password_pam_minclass.sh && \
    /dsop-fix/xccdf_org.ssgproject.content_rule_accounts_password_pam_minlen.sh && \
    /dsop-fix/xccdf_org.ssgproject.content_rule_accounts_password_pam_ocredit.sh && \
    /dsop-fix/xccdf_org.ssgproject.content_rule_accounts_password_pam_pwhistory_remember_password_auth.sh && \
    /dsop-fix/xccdf_org.ssgproject.content_rule_accounts_password_pam_pwhistory_remember_system_auth.sh && \
    /dsop-fix/xccdf_org.ssgproject.content_rule_accounts_password_pam_ucredit.sh && \
    /dsop-fix/xccdf_org.ssgproject.content_rule_accounts_password_pam_unix_remember.sh && \
    /dsop-fix/xccdf_org.ssgproject.content_rule_accounts_password_pam_enforce_root.sh && \
    /dsop-fix/xccdf_org.ssgproject.content_rule_accounts_passwords_pam_faillock_deny.sh && \
    /dsop-fix/xccdf_org.ssgproject.content_rule_accounts_passwords_pam_faillock_deny_root.sh && \
    /dsop-fix/xccdf_org.ssgproject.content_rule_accounts_passwords_pam_faillock_interval.sh && \
    /dsop-fix/xccdf_org.ssgproject.content_rule_accounts_passwords_pam_faillock_unlock_time.sh && \
    /dsop-fix/xccdf_org.ssgproject.content_rule_accounts_passwords_pam_faillock.sh && \
    /dsop-fix/xccdf_org.ssgproject.content_rule_accounts_umask_etc_bashrc.sh && \
    /dsop-fix/xccdf_org.ssgproject.content_rule_accounts_umask_etc_csh_cshrc.sh && \
    /dsop-fix/xccdf_org.ssgproject.content_rule_accounts_umask_etc_login_defs.sh && \
    /dsop-fix/xccdf_org.ssgproject.content_rule_accounts_umask_etc_profile.sh && \
    /dsop-fix/xccdf_org.ssgproject.content_rule_package_crypto-policies_installed.sh && \
    /dsop-fix/xccdf_org.ssgproject.content_rule_package_gnutls-utils_installed.sh && \
    /dsop-fix/xccdf_org.ssgproject.content_rule_configure_crypto_policy.sh && \
    /dsop-fix/xccdf_org.ssgproject.content_rule_configure_kerberos_crypto_policy.sh && \
    /dsop-fix/xccdf_org.ssgproject.content_rule_configure_openssl_crypto_policy.sh && \
    /dsop-fix/xccdf_org.ssgproject.content_rule_configure_gnutls_tls_crypto_policy.sh && \
    /dsop-fix/xccdf_org.ssgproject.content_rule_harden_sshd_ciphers_openssh_conf_crypto_policy.sh && \
    /dsop-fix/xccdf_org.ssgproject.content_rule_harden_sshd_ciphers_opensshserver_conf_crypto_policy.sh && \
    /dsop-fix/xccdf_org.ssgproject.content_rule_harden_sshd_macs_openssh_conf_crypto_policy.sh && \
    /dsop-fix/xccdf_org.ssgproject.content_rule_harden_sshd_macs_opensshserver_conf_crypto_policy.sh && \
    /dsop-fix/xccdf_org.ssgproject.content_rule_coredump_disable_backtraces.sh && \
    /dsop-fix/xccdf_org.ssgproject.content_rule_coredump_disable_storage.sh && \
    /dsop-fix/xccdf_org.ssgproject.content_rule_disable_ctrlaltdel_burstaction.sh && \
    /dsop-fix/xccdf_org.ssgproject.content_rule_disable_users_coredumps.sh && \
    /dsop-fix/xccdf_org.ssgproject.content_rule_display_login_attempts.sh && \
    /dsop-fix/xccdf_org.ssgproject.content_rule_ensure_gpgcheck_local_packages.sh && \
    /dsop-fix/xccdf_org.ssgproject.content_rule_file_groupownership_system_commands_dirs.sh && \
    /dsop-fix/xccdf_org.ssgproject.content_rule_network_configure_name_resolution.sh && \
    /dsop-fix/xccdf_org.ssgproject.content_rule_no_empty_passwords.sh && \
    /dsop-fix/xccdf_org.ssgproject.content_rule_openssl_use_strong_entropy.sh && \
    /dsop-fix/xccdf_org.ssgproject.content_rule_package_iptables_installed.sh && \
    chmod +t /tmp /var/tmp && \
    chmod -s /var/lib/tpm2-tss/system/keystore && \
    update-ca-trust && \
    update-ca-trust force-enable && \
    dnf remove -y vim-minimal && \
    dnf clean all && \
    rm -rf /dsop-fix/ /var/cache/dnf/ /var/tmp/* /tmp/* /var/tmp/.???* /tmp/.???*

RUN set -eux; \
    disabledAlgorithms=' \
       TLS_CHACHA20_POLY1305_SHA256, \
       TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256, \
       TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256, \
       TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256, \
    '; \
    disabledAlgorithms="${disabledAlgorithms//[[:space:]]/}"; \
    sed -i "s/^jdk\.tls\.disabledAlgorithms=/jdk.tls.disabledAlgorithms=$disabledAlgorithms/" \
       /usr/share/crypto-policies/FIPS/java.txt;

ENV container oci
ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

ARG APP_ROOT=/opt/app-root
ENV PYTHON_VERSION=3.9 \
    APP_ROOT=$APP_ROOT \
    HOME=${APP_ROOT}/src \
    PATH=$HOME/.local/bin/:/opt/app-root/src/bin:/opt/app-root/bin:$PATH \
    PYTHONUNBUFFERED=1 \
    PYTHONIOENCODING=UTF-8 \
    PIP_NO_CACHE_DIR=off \
    LANG=en_US.UTF-8


ENV BASH_ENV=${APP_ROOT}/etc/py_enable \
    ENV=${APP_ROOT}/etc/py_enable \
    PROMPT_COMMAND=". ${APP_ROOT}/etc/py_enable"


COPY ./scripts /

RUN INSTALL_PKGS="python3 python3-devel python3-setuptools python3-pip" && \
    dnf -y upgrade-minimal --setopt=tsflags=nodocs --security && \
    dnf -y --setopt=tsflags=nodocs install $INSTALL_PKGS && \
    rpm -V $INSTALL_PKGS && \
    dnf -y clean all --enablerepo="*" && \
    rm -rf /var/cache/dnf && \
    pip3 install --upgrade setuptools


RUN fix-permissions ${APP_ROOT} -P && \
    rpm-file-permissions && \
    groupadd -g 1001 default && \
    useradd -u 1001 -r -g 1001 -d ${HOME} -s /sbin/nologin \
       -c "Default Application User" default && \
    chown -R default:default ${APP_ROOT} && \
    chmod -R 0750 ${APP_ROOT} && \
    df --local -P | awk '{if (NR!=1) print $6}' \
        | xargs -I '{}' find '{}' -xdev -type d \
        \( -perm -0002 -a ! -perm -1000 \) 2>/dev/null \
        | xargs -I '{}' chmod a+t && \
    chmod 755 \
        /usr/bin/container-entrypoint \
        /usr/bin/fix-permissions \
        /usr/bin/rpm-file-permissions

WORKDIR ${HOME}
USER 1001

RUN python3.9 -m venv ${APP_ROOT}
COPY ./backend ./backend

RUN pip install --no-cache-dir -r ./backend/requirements.txt
EXPOSE 8080

CMD ["gunicorn", "--chdir","./backend", "-b", "0.0.0.0:8080", "main:app"]
