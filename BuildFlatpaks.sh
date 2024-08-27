#!/bin/bash
# Build Flatpaks in repo directory
flatpak run org.flatpak.Builder --force-clean --repo=repo build-dir org.winehq.WineDevelopment.yml

# Build Flatpak bundles for WineDevelopment. WineDevelopment.mono and WineDevelopment.gecko
flatpak build-bundle repo WineDevelopment9.16.flatpak org.winehq.WineDevelopment stable-23.08
flatpak build-bundle --runtime repo WineDevelopment.mono9.3.0.flatpak org.winehq.WineDevelopment.mono stable-23.08
flatpak build-bundle --runtime repo WineDevelopment.gecko2.47.4.flatpak org.winehq.WineDevelopment.gecko stable-23.08