/*
State
   - The State is the data that your application currently showing.
     It might change during the lifetime of the widget.

State Management
   - The 'setState' method is used to notify the changed state of an internal object.
     Normally if we use setState to refresh the app screen then it rebuilds the whole screen
     and consumes more memory.So we use here the state management.

 Some State Management Approaches
   - Provider
   - BloC
   - RiverPod
   - GetX

Types of state management
   1.Ephemeral State
     - Ephemeral State is used to do state management for a single widget,
       using setState().It is also called UI State or local state,and it pertains to a particular widget.

   2.App State
     - In App State we do the complete app state management.This is different from the ephemeral state
       since it is a state that we intend to share across different parts of the app and that
       we want to maintain between sessions.These types of states can thus be used globally.
 */
