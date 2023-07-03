# Symetricx Survey iOS SDK

A Survey SDK for your iOS applications.

## Implementation


### Swift Package Manager

Symetricx Survey iOS SDK is available through [Swift Package Manager](https://swift.org/package-manager/). Add Symetricx Survey as a dependency to your `Package.swift`:

```Swift
.package(url: "https://https://github.com/Symetricx/IOSSDK", from: "1.0.0")
```

## Requirements

- iOS 11.0 or later
- Xcode 14.0 or later

## Simple Usage

First of all import SDK

```Swift
import SymetricxSurveySDK
```

And then initialize your survey

```Swift
let survey = SymetricxSurvey.init(
    activationCode: <#T##String#>, // Unique activation code: string value
    projectId: <#T##Int#>, // // Project id for a spesific surveyin Admin Panel: int value
    languageShortCode: <#T##String#> // The language code you want to show the survey: string value (for example "en")
)
```

After the initialization, call the show method when you want to show the survey.

```Swift
survey.show(surveyId: <#T##Int#>) // Unique Survey Id in Admin Panel: int value
```

## Customization

If you want to customize your survey, you can do some customization with the `show` method parameters.

### Properties

All customization properties are set on `show` method of `SymetricxSurvey`:

```Swift
func show(
    options: SymetricxSurveyOptions = SymetricxSurveyOptions(),
    surveyId: Int,
    processNo: Int? = nil,
    processType: String? = nil,
    customerId: Int? = nil,
    customerGuidId: String? = nil,
    mobilePhone: String? = nil,
    city: String? = nil,
    isTest: Bool = false
)
```
#### `surveyId`

Unique Survey Id in Admin Panel

#### `processNo`

The number corresponding to the customer's transaction in client systems.

#### `processType`

Process type corresponding to the customer's transaction

#### `customerId`

Customer unique Id in client systems. 
If you are not going to use the customerGuidId parameter, the customerId parameter is mandatory.

#### `customerGuidId`

Customer unique GuidId in client systems. 
If you are not going to use the customerId parameter, the customerGuidId parameter is mandatory.

#### `mobilePhone`

Customer mobile phone number in client systems.

#### `city`

City in client systems.

#### `isTest`

Test record;
- `true` : This is test data 
- `false`: This is real data

#### `options`

You can customize your survey view

```Swift
class SymetricxSurveyOptions {

    /// Survey Page Background color: default value is `white`
    public var backgroundColor: UIColor

    /// Survey Page Navigation Background color: default value is `white`
    public var navigationColor: UIColor

    /// Survey Title: default value is empty `string`
    public var navigationTitle: String

    /// Survey title color: default value is `black`
    public var navigationTitleColor: UIColor

    /// Survey title font and size: default value is `systemFont(ofSize: 18)`
    public var navigationTitleFont: UIFont

    /// Survey close button image: default value is custom close image
    public var closeButtonImage: UIImage?

    /// currentSurvey/totalSurvey text color: default value is `black`
    public var stepTextColor: UIColor

    /// currentSurvey/totalSurvey text font and size: default value is `systemFont(ofSize: 12)`
    public var stepTextFont: UIFont

    /// Survey question text color: default value is `black`
    public var questionTextColor: UIColor

    /// Survey question text font: default value is `systemFont(ofSize: 16)`
    public var questionTextFont: UIFont

    /// Survey previous button title: default value is `nil`
    public var previousButtonTitle: String

    /// Survey previous button title color: default value is `black`
    public var previousButtonTitleColor: UIColor

    /// Survey previous button title font and size: default value is `systemFont(ofSize: 14)`
    public var previousButtonTitleFont: UIFont

    /// Survey previous button image: default value is custom arrow back image
    public var previousButtonImage: UIImage?

    /// Survey next button title: default value is `nil`
    public var nextButtonTitle: String

    /// Survey next button title color: default value is `black`
    public var nextButtonTitleColor: UIColor

    /// Survey next button title font and size: default value is `systemFont(ofSize: 14)`
    public var nextButtonTitleFont: UIFont

    /// Survey next button image: default value is custom arrow next image
    public var nextButtonImage: UIImage?

    /// Survey complete button title: default value is `nil`
    public var completeButtonTitle: String

    /// Survey complete button title color: default value is `black`
    public var completeButtonTitleColor: UIColor

    /// Survey complete button title font and size: default value is `systemFont(ofSize: 14)`
    public var completeButtonTitleFont: UIFont

    /// Survey complete button image: default value is custom complete button
    public var completeButtonImage: UIImage?

}
```

## License

Copyright Symetricx.
