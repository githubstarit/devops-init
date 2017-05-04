function exe_cmd() {
echo $1
eval $1
    }

    function ensure_dir()
    {
        if [ ! -d $1 ]; then
            exe_cmd "mkdir -p $1"
        fi
    }

    function intall_basic_tools() {
    if [ ! -d ~/git/work-anywhere/ ]; then
        exe_cmd "cd ~/git"
        exe_cmd "git clone https://github.com/githubstarit/work-anywhere.git"
        exe_cmd "cd ~/git/work-anywhere/"
        exe_cmd "sh tools/update-git-config.sh"
    fi

    if [ ! -d ~/git/vim_anywhere/ ]; then
        exe_cmd "cd ~/git"
        exe_cmd "git clone https://github.com/githubstarit/vim_anywhere.git"
        exe_cmd "cd ~/git/vim_anywhere/"
        exe_cmd "sh setup.sh"
    fi

}

ensure_dir ~/git
intall_basic_tools
