# Change Log
All notable changes to this project will be documented in this file.
`SwiftyVIPER` adheres to [Semantic Versioning](http://semver.org/).

---

## [1.2](https://github.com/codytwinton/SwiftyVIPER/releases/tag/1.2)
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
- Cocoapods, Carthage, and Manual Support

#### Updated
- Improved VIPER Templates
