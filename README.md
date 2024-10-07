# WineDevelopment, WineDevelopment.mono, and WineDevelopment.gecko Flatpaks
## Installing
- Download WineDevelopment9.19.flatpak, WineDevelopment.mono9.3.0.flatpak, and WineDevelopment.gecko2.47.4.flatpak from releases
- Install WineDevelopment9.19.flatpak, WineDevelopment.mono9.3.0.flatpak, and WineDevelopment.gecko2.47.4.flatpak (sudo needed for installing single use Flatpak bundle)
```console
sudo flatpak install WineDevelopment9.19.flatpak
```
```console
sudo flatpak install WineDevelopment.mono9.3.0.flatpak
```
```console
sudo flatpak install WineDevelopment.gecko2.47.4.flatpak
```
## Using
- Launch the WineDevelopment Flatpak with a exe file
```console
flatpak run org.winehq.WineDevelopment example.exe
```
or
- Install a Flatpak that uses WineDevelopment as a base and launch that Flatpak itself
## Uninstalling
- Remove WineDevelopment, WineDevelopment.mono, and WineDevelopment.gecko Flatpaks
```console
flatpak remove org.winehq.WineDevelopment org.winehq.WineDevelopment.mono org.winehq.WineDevelopment.gecko
```
## Downloading/Cloning this repo
- Click the green button to download zip and extract once downloaded or clone repo with
```console
git clone --recurse-submodules https://github.com/ChrisHobday/org.winehq.WineDevelopment
```
## Building
- Install Flatpak builder
```console
flatpak install flathub org.flatpak.Builder
```
- Install the platform this Flatpak will be using
```console
flatpak install flathub org.freedesktop.Platform//23.08 org.freedesktop.Sdk//23.08
```
- Build the Flatpak with flatpak-builder (Run this from within the org.winehq.WineDevelopment directory)
```console
flatpak run org.flatpak.Builder --force-clean --repo=repo build-dir org.winehq.WineDevelopment.yml
```
## User installation while building
- Replace last Building step with
```console
flatpak run org.flatpak.Builder --force-clean --repo=repo --user --install build-dir org.winehq.WineDevelopment.yml
```
## Building single use Flatpak bundles like in the releases (After having followed the Building steps above)
- Build the Flatpak bundles (Run this from within the org.winehq.WineDevelopment directory after having followed the Building steps above)
```console
flatpak build-bundle repo WineDevelopment9.19.flatpak org.winehq.WineDevelopment stable-23.08
```
```console
flatpak build-bundle --runtime repo WineDevelopment.mono9.3.0.flatpak org.winehq.WineDevelopment.mono stable-23.08
```
```console
flatpak build-bundle --runtime repo WineDevelopment.gecko2.47.4.flatpak org.winehq.WineDevelopment.gecko stable-23.08
```
## Troubleshooting
- Check if Flatpaks are installed
```console
flatpak list | grep WineDevelopment
```