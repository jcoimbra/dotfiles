# dotfiles

Hello. These are my dotfiles. Most likely they are of little or no use to you,
but it might inspire you to work on your own dotfiles :)

In this case, I decided to rely heavily on ansible to install and configure all
aspects of my environment.

To install and configure everything:
```
$ ./main.sh
```

To install or configure only parts, use ansible directly with tags. To know the 
list of tags:
```
$ ansible-playbook --list-tags
```
You'll get an output like the following:
```
/home/jcoimbra/dotfiles (main) $ ansible-playbook main.yml --list-tags
[WARNING]: No inventory was parsed, only implicit localhost is available
[WARNING]: provided hosts list is empty, only localhost is available. Note that the implicit localhost does not match
'all'

playbook: main.yml

  play #1 (localhost): configure local environment	TAGS: []
      TASK TAGS: [aws, flux, general_config, git, gnome, helm, intellij, java, kubectl, multimedia, node, postman, slack, spotify, ssh, teams, terraform, todoist, vagrant, virtualbox]
```
I tried to choose names for the tags that are self-explanatory. In doubt, 
check the code where that tag is used. The play is simple enough to 
understand it, even for someone not used to ansible.  
```
$ ansible-playbook main.yml --diff --ask-become-pass --tags
```