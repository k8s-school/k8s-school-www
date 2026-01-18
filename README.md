# Install

- Install hugo **Extended** (required for image processing)
- Install theme

## Hugo Extended Installation

The modern `hugo-up-business` theme requires Hugo Extended for image processing features.

Install Hugo Extended using Go:
```shell
go install -tags extended github.com/gohugoio/hugo@latest
```

Verify installation:
```shell
hugo version
# Should show "hugo v... +extended"
```

**Note**: Standard Hugo will fail with errors like "this feature is not available in your current Hugo version" when processing images.

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
