# Change Log
All notable changes to this project will be documented in this file.
`SwiftyVIPER` adheres to [Semantic Versioning](http://semver.org/).
All changes are ordered: Added, Updated, Removed, Fixed

---

## [1.2.2](https://github.com/codytwinton/SwiftyVIPER/releases/tag/1.2.2)
#### Improved VIPER Templates
Released on 2016-12-24

#### Updated
- Changed template Interactor from `struct` to `class`
	- Updated by [Cody Winton](https://github.com/codytwinton)

---

## [1.2.1](https://github.com/codytwinton/SwiftyVIPER/releases/tag/1.2.1)
#### Improved VIPER Templates
Released on 2016-12-18

#### Added
- Added `final` to certain template classes
	- Added by [Cody Winton](https://github.com/codytwinton)

#### Updated
- Changed all template classes from `NSObject` subclasses to a plain Swift `class`
	- Updated by [Cody Winton](https://github.com/codytwinton)
- Changed template Interactor from `class` to `struct`
	- Updated by [Cody Winton](https://github.com/codytwinton)

#### Fixed
- Removed old `ViewPresenterProtocol` functions from Templates
	- Fixed by [Cody Winton](https://github.com/codytwinton)

---

## [1.2.0](https://github.com/codytwinton/SwiftyVIPER/releases/tag/1.2.0)
#### Improved Presenter Interaction
Released on 2016-12-01

#### Updated
- `viewLoaded()` no longer optional for Presenters conforming to `ViewPresenterProtocol`
	- Updated by [Cody Winton](https://github.com/codytwinton)
- `CompletionBlock` was renamed `CodeBlock`
	- Updated by [Cody Winton](https://github.com/codytwinton)

#### Removed
- `ViewPresenterProtocol.viewAppearing()`
	- Removed by [Cody Winton](https://github.com/codytwinton)
- `ViewPresenterProtocol.viewAppeared()`
	- Removed by [Cody Winton](https://github.com/codytwinton)
- `ViewPresenterProtocol.viewDisappeared()`
	- Removed by [Cody Winton](https://github.com/codytwinton)

---

## [1.1](https://github.com/codytwinton/SwiftyVIPER/releases/tag/1.1)
#### Improved Storyboard Interaction
Released on 2016-11-29

#### Added
- `StoryboardIdentifiable` extension to enable default `storyboardID` value for a `UIViewController`
	- Added by [Cody Winton](https://github.com/codytwinton)

#### Updated
- The protocol `ViewStoryboardProtocol` was renamed `StoryboardIdentifiable`
	- Updated by [Cody Winton](https://github.com/codytwinton)

---

## [1.0.1](https://github.com/codytwinton/SwiftyVIPER/releases/tag/1.0.1)
#### Minor Podspec Update
Released on 2016-11-21

#### Fixed
- Officially requires automatic reference counting
	- Fixed by [Cody Winton](https://github.com/codytwinton)

---

## [1.0](https://github.com/codytwinton/SwiftyVIPER/releases/tag/1.0)
#### Official Release
Released on 2016-11-16

#### Added
- iOS & tvOS Support
	- Fixed by [Cody Winton](https://github.com/codytwinton)
- Cocoapods, Carthage, and Manual Support
	- Fixed by [Cody Winton](https://github.com/codytwinton)

#### Updated
- Improved VIPER Templates
	- Fixed by [Cody Winton](https://github.com/codytwinton)
