# LSApplication

LSApplication is an access to all the current mobile phone application information.


## Installation

#### Installation with CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Objective-C and swift, which automates and simplifies the process of using 3rd-party libraries like PHImageKit.

``` ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '8.0'
use_frameworks!

target :'TargetName' do
    pod 'LSApplication'
end
```

Then, run the following command:

``` bash
$ pod install
```

## Usage

introduce header files.

```objective-c
#import <LSApplication/LSApplicationProxy.h>
#import <LSApplication/LSApplicationWorkspace.h>
```

And that's it.

## Requirements

iOS 8.0+
Xcode 7.0 or above

## To Do

- Make this framework support `use_frameworks`

**[MIT License](https://github.com/aimobier/LSApplication/blob/master/LICENSE)**
