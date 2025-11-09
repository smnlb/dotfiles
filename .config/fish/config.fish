if status is-interactive
    # Commands to run in interactive sessions can go here
    set -x RESTIC_REPOSITORY "/mnt/mega/backups"
    set -x RESTIC_PASSWORD_FILE "/home/user/.config/restic/password"
    export "MICRO_TRUECOLOR=1"
end
