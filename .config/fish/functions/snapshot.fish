function snapshot --wraps=backup --description 'Snapshot of Root & Home'
    Sudo sh -c '/usr/bin/snapper --config home create --cleanup-algorithm number --description "Manual Snapshot"'
    Sudo sh -c '/usr/bin/snapper --config root create --cleanup-algorithm number --description "Manual Snapshot"'
    # echo Done
end
