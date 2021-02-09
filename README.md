## www.tgifelix.com
This article was originally posted on [my website](https://www.tgifelix.com/).
### Install (at own risk)
```
git clone https://github.com/tgifelix/dotfiles "$HOME/dotfiles" && bash $HOME/dotfiles/scripts/bootstrap.sh
```

I came across a `dotfiles` repository on GitHub the other day and it instantly made me realize I've been backing up mine wrong! Let’s set up our own GitHub repo and start doing it the right way, today.

> Dotfiles are text-based configuration files for Unix tools. By backing them up to GitHub we make sure all our favorite configurations, hacks, and tweaks don’t get lost in case of a system crash. 

## Let’s go!
Create a folder called dotfiles and copy the files we want to back up.
#### Create the folder
```
mkdir dotfiles
```

#### Copy the files you want to backup
```
cp ~/.<filename> ~/dotfiles/.<filename>
```
For example, I’ve added my `.zshrc`, `.bashrc` and `.vimrc` files
```
cp ~/.zshrc ~/dotfiles/.zshrc
cp ~/.bashrc ~/dotfiles/.bashrc
cp ~/.vimrc ~/dotfiles/.vimrc
```

## First commit 
Create a new repository called `dotfiles` on GitHub or use the [GitHub CLI tool](https://cli.github.com): `gh repo create dotfiles`

#### Initialize and add the files
```
$ git init
$ git add .
```
#### Commit and push
```
$ git commit -m “first commit”
$ git push origin master
```


## Automate it!
Let’s create a simple bash script and add it to `crontabs` to run automatically.

#### create the script
```
echo -e "#!/bin/bash/" >> backup_dotfiles.sh
```

#### Open the file in your favorite editor and add the following
```
# create a timestamp alias for the commit message
timestamp() {
  date +"%d-%m-%Y @ %T"
}

# files to backup
cp ~/.zshrc ~/dotfiles/.zshrc
cp ~/.bashrc ~/dotfiles/.bashrc
cp ~/.vimrc ~/dotfiles/.vimrc

# pull & push
if [[ `git status --porcelain` ]]; then
    git pull origin master
    git add .
    git commit -m "Update: $(timestamp)"
    git push origin master
fi
```
As you can see I’ve added the `.zshrc`, `.bashrc` and `.vimrc` files again. You can add any (config)files you want here!

#### To add the job to cron, type
```
crontab -e
```
You can use [crontab.guru](https://crontab.guru) to generate how frequent you want the backup script to run. Let’s do every Monday at 10:00 by adding the following line to the cron file and save it
```
0 10 * * 1 bash backup_dotfiles.sh
```


### That’s it!

We’ve created a [GitHub repo](https://github.com/tgifelix/dotfiles) to back up dotfiles to, and automated the process with a bash script that runs periodically with cron. As always, drop your feedback in the comments! ✌️
