# ComunicationUIKIt-SwiftUI

This repository aims to explain how to make a UIView in UIKit and a View in SwiftUI communicate with each other using the "Notification Center" feature.
Additionally, the demo project aims to demonstrate and list all possible events that can occur on a button by providing a visual effect through SwiftUI animations that show the sequence of these events.

So this repository explain : 
- 1 UIHostingController
- 2 Notification Center 
- 3 Button Events

![Git1](https://user-images.githubusercontent.com/102661910/228540108-ef87550f-acce-4986-b8eb-f615dc51b896.png)

# 1. UIHostingController

UIHostingController is a class in UIKit that allows you to use a SwiftUI view in a UIKit-based application. It acts as a bridge between SwiftUI and UIKit, allowing you to embed a SwiftUI view hierarchy in a UIKit view hierarchy.

To use UIHostingController for a SwiftUI view in UIKit, you can follow these steps:

- Add a UIContainerView in your UIView
- Delete the ViewController added automatically by the UIContainerView
- Add an UIHostingController in the Storyboard
- Add a segue between the UIContainerView and UIHostingController, choosing the enbed option.

<img width="377" alt="Screenshot 2023-03-29 at 15 34 00" src="https://user-images.githubusercontent.com/102661910/228555015-34b008a3-6a42-419b-b0fc-dbb93f60d7a8.png">

- Customize the segue programmatically in the Controller of UIView

<img width="655" alt="Screenshot 2023-03-29 at 15 36 58" src="https://user-images.githubusercontent.com/102661910/228555767-c222c454-9dae-4cae-a8bb-43cef0ef3b73.png">

# 2. Notification Center

Notification Center is a system that allows you to broadcast information or messages between different parts of your application.

Notification Center acts as a mediator between the senders and receivers of these messages. A sender can send a notification containing data or a message, and one or more receivers can register to receive these notifications.

When a notification is sent, Notification Center delivers it to all registered receivers, allowing them to perform some action based on the data or message included in the notification.

You can use Notification Center to decouple different parts of your application, making them more modular and easier to maintain. It's often used in conjunction with the observer pattern to create a loosely coupled system where different parts of the application can communicate with each other without knowing the details of their implementation.

In Swift, you can use the NotificationCenter class to work with the Notification Center system. You can use this class to post notifications, register observers, and remove observers.

How to Use ? 

To post broadcast informantion or message you can use the method "Post"

<img width="746" alt="Screenshot 2023-03-29 at 15 43 30" src="https://user-images.githubusercontent.com/102661910/228557998-e5b4dddc-6f2c-45f4-99c0-3f4d95e6e672.png">

Parameters: 
- aName : The name of the notification.
- anObject : The object posting the notification.
- aUserInfo : A user info dictionary with optional information about the notification.

Instead to receive the notification the reciver use the method "publisher"

<img width="667" alt="Screenshot 2023-03-29 at 16 43 26" src="https://user-images.githubusercontent.com/102661910/228576048-d66e1991-ae0e-41ab-9892-f678b6fca3c7.png">

Parameters: 
- name : The name of the notification to publish.
- object : The object posting the named notification. If nil, the publisher emits elements for any object producing a notification with the given name.

# 3. Button events

In my project I used this tecnologies for a app that help the developer to discover every possible events that you can use with a UIButton in UIKIt.
The events could be: 

-UIControlEventTouchCancel : A system event canceling the current touches for the control.
-UIControlEventTouchDown : A touch-down event in the control.
-UIControlEventTouchDownRepeat : A repeated touch-down event in the control; for this event the value of the UITouch tapCount method is greater than one. 
-UIControlEventTouchDragEnter : An event where a finger is dragged into the bounds of the control.
-UIControlEventTouchDragExit : An event where a finger is dragged from within a control to outside its bounds.
-UIControlEventTouchDragInside : An event where a finger is dragged inside the bounds of the control.
-UIControlEventTouchDragOutside : An event where a finger is dragged just outside the bounds of the control.
-UIControlEventTouchUpInside : A touch-up event in the control where the finger is inside the bounds of the control.
-UIControlEventTouchUpOutside : A touch-up event in the control where the finger is outside the bounds of the control.

In the project every event is combined with an animation in SwiftUI to have a visual feedback of what's happening. (Thanks the notification center methods)

<img width="250" alt="Screenshot 2023-03-29 at 16 50 52" src="https://user-images.githubusercontent.com/102661910/228578210-aea7a370-3c83-48ff-8453-631d1e47828e.png">



