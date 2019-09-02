# Xcode Templates

This repository contains useful Xcode templates to simplify new projects up and running.

## Installation

Clone this project and navigate to it via terminal. Run install script:

    chmod +x install.sh
    ./install.sh

This script will copy the templates to `~/Library/Developer/Xcode/Templates/Project Templates/Private` where Xcode will be able to find them. 

## Templates usage

### HandsApp iOS App Template

This template creates iOS project with [SurfMVP](https://github.com/surfstudio/Surf-iOS-Developers/blob/master/Surf_MVP.md) structure with some userful features:

* `.gitignore` file;
* [SwiftLint](https://github.com/realm/SwiftLint) build phase integration and configuration file;
* [SwiftFormat](https://github.com/nicklockwood/SwiftFormat) build phase integration;
* [R.Swift](https://github.com/mac-cain13/R.swift) build phase integration;
* `Podfile` to install all the tools mentioned above;
* [Generamba](https://github.com/strongself/Generamba) code generator;
* `Gemfile` to install Generamba and Cocoapods.

#### Up and running

1. Open Xcode and create new project, choose *HandsApp iOS App Template* from the wizard (at the *Private* section);
2. Configure project name and other parameters as usual;
3. Close project, navigate to it via terminal and run `bundler install` to install gems. If you have no *Bundler* installed - welcome here https://bundler.io/
4. Run `pod install` to install pods;
4. Open the generated workspace, navigate to *Build Phases* of your project's main target and **move the SwiftFormat, SwiftLint, and R.Swift script phases above the compile phase** (exactly that order). We have to make this step manually due to limitations of Xcode templates;
   ![Build phases configuration](images/build_phases_configuration.png)
5. Build project and have fun!
