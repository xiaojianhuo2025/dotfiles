if status is-interactive
    # Commands to run in interactive sessions can go here
end

# set -gx http_proxy http://127.0.0.1:12334
# set -gx https_proxy $http_proxy

set -gx GCM_CREDENTIAL_STORE cache

set -gx VISUAL nvim
set -gx EDITOR $VISUAL

