![Header](Assets/SwiftVIPER.png)

# SwiftVIPER
> Edited with [StackEdit](https://stackedit.io/).

![Swift Version](https://img.shields.io/badge/Swift-3.0-orange.svg)
![Plaforms](https://img.shields.io/badge/Platform-iOS-lightgrey.svg)

---

## What is VIPER?

Great question! VIPER is a [backronym](https://en.wikipedia.org/wiki/Backronym) which stands for:

 - View
 - Interactor
 - Presenter
 - Entity
 - Router

If all of this is totally knew for you, check out my running list of [VIPER Resources](#resources)

I've always been excited about clean, beautiful code, and I think Test Driven Development is a solid approach to develop iOS apps. When a colleague ([@iamMehedi](https://github.com/iamMehedi)) told me about VIPER, I became very excited about this architecture, since VIPER offered the ability to create beautiful "modules" that were separate from each other and easily testable.

However, I also believe that good programming should be simple as well as beautiful. Good code shouldn't be difficult to create. And [great API's](https://youtu.be/qCdpTji8nxo?t=1m52s) shouldn't be hard to deal with. However, creating a module for VIPER purely based on stack overflow code everytime seemed unnecessary and tedious.

## Why SwiftVIPER?

I know that some other projects are attempting to solve some of these issues, but here are some issues that I ran into with other frameworks out there:

 1. Nothing based on pure Swift. I believe that Objective-C, while solid, will eventually become obsolete. All modules created with SwiftVIPER uses `Swift 3`
 2. The amount of files & folders created for a single module was overkill. I wanted tools that would create VIPER modules that were a manageable size.
 3. Confusing API locations and names. Trying to find where a certain protocol function should reside was a long process of seaching.

I've attempted to solve some of these issues with SwiftVIPER.

## Using SwiftVIPER

// MARK: - TODO

### Using SwiftVIPER Templates

If you're looking for VIPER architecture templates to use directly within Xcode, you can find these in the `/Templates/VIPER` folder. Merely drag the VIPER folder into this location:

```bash
/Applications/Xcode.app/Contents/Developer/Library/Xcode/Templates/File Templates
```

Inspired by [ViperMcFlurry](https://github.com/rambler-digital-solutions/ViperMcFlurry)



### Resources

 - [objc.io](https://www.objc.io/issues/13-architecture/viper/)
 - [ckl.io](https://www.ckl.io/blog/ios-project-architecture-using-viper/)
 - [stackoverflow.com](http://stackoverflow.com/questions/35132664/why-protocols-are-used-in-both-direction-in-viper-architecture-rather-than-in-on)
 - [yalantis.com](https://yalantis.com/blog/tree-of-models-as-an-alternative-app-architecture-model/)
 - [medium.com](https://medium.com/mobile-travel-technologies/architecting-mobile-apps-with-b-viper-modules-e94e277c8d68)
 - [speakerdeck.com](https://speakerdeck.com/sergigracia/clean-architecture-viper)
 - [brigade.engineering](https://brigade.engineering/brigades-experience-using-an-mvc-alternative-36ef1601a41f#.tezoetq87)
