function productivity --wraps=tmux\ new-session\ -d\ -s\ \"playlist\"\ fish\ -c\ \"playlist\ \'https://www.youtube.com/playlist\?list=PLxmNTgb6VxBz3v4cGYtKydbgtABn68pjo\'\" --description alias\ productivity=tmux\ new-session\ -d\ -s\ \"playlist\"\ fish\ -c\ \"playlist\ \'https://www.youtube.com/playlist\?list=PLxmNTgb6VxBz3v4cGYtKydbgtABn68pjo\'\"
  tmux new-session -d -s "playlist" fish -c "playlist 'https://www.youtube.com/playlist?list=PLxmNTgb6VxBz3v4cGYtKydbgtABn68pjo'" $argv
        
end
