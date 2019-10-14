# Install

## Theme management

```shell
cd themes
rmdir hugo-serif-theme
git clone https://github.com/k8s-school/hugo-serif-theme.git
cd hugo-serif-theme
git checkout k8s-school

# Update master to upstream
git remote add upstream https://github.com/JugglerX/hugo-serif-theme
git checkout master
git pull
# Then rebase branch k8s-school on master
```
# Google drive management

See https://developers.google.com/admin-sdk/directory/v1/quickstart/go
