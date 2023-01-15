## Add password feedback to terminal

```
cd /etc/ 
sudo -s
EDITOR=nano visudo

// Update line
env_reset,pwfeedback
```


## Create SSH key
```
ssh-keygen -t ed25519 -C "ovinibortoletto@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519.pub
```
