if status --is-interactive 
    # function sync_pre_history --on-event fish_preexec
        # history --save
        # history --merge
        # echo 🐧
    # end
    # function sync_post_history --on-event fish_posexec
        # history --save
        # history --merge
        # echo 🐧
    # end
    function sync_post_history --on-event fish_prompt
        history --save
        history --merge
    end
end
