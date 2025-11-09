if status is-interactive
    # Commands to run in interactive sessions can go here
    set -x RESTIC_REPOSITORY "/mnt/mega/backups"
    set -x RESTIC_PASSWORD_FILE "/home/user/.config/restic/password"
    # Добавляем локальную папку с бинарниками в PATH, если ее там еще нет
    if not contains /root/.local/bin $fish_user_paths
        fish_add_path /root/.local/bin
    end
    export "MICRO_TRUECOLOR=1"
end
