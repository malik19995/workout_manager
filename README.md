# Workout Manager

Workout Manager App with Clean Hydrated Cubit implementation. 

---------
## Storage
---------
HydratedBloc used for localStorage management. 

    HydratedBloc used Hive Storage under the hood, to efficiently allocate storage for Hydrated Blocs and Cubits. 


----------
## Architecture 
----------

 
    Freezed Generation for Cubits and Models for immutability and Json Serializability.
    Clean Architecture
    lib/UI/ corresponds to the Presentation Layer.
    lib/state/ corresponds to the Domain Layer.
    lib/core/ corresponds to the Data Layer. 



---------
## Dependency Injection 
---------
    Dependencies are injected using BlocProvider widgets to register dependencies with BuildContext.



---------
## Screens
---------

### Workout List
- Screen hooked with Workout Manager Cubit
- Holds the list of user workouts history
- WorkoutCard for every workout


### Workout Detail 
- Lists down the detail for every workout session
- ID for every workout is Timestamp in millisecondsSinceEpoch for uniqueness. 
- Edit button for selected Workout
- Delete button for selected Workout

### Add Update Workout 
- Dropdown Button to select Number of Sets is required.
- For each set in number of sets above, Exercise and RepCount are inputted.
- Submit Button to add the Workout with WorkoutCubit, that holds our Application state.



-------
## Packages 
-------

### Dependencies 
- bloc, flutter_bloc => State Management
- hydratedBloc => localStorage 
- flutter_svg => Render SVG assets
- json_annotation, freezed_annotation => Bloc and Models Generation
- animated_splash => Quick and Easy splash screen
- logger => Better debug logs
- fluttertoast => To launch toasts without BuildContext
- flutter_statusbarcolor_ns for Colored Status and Navigation Bar.
- path_provider => To get storage path for the HydratedStorage
- intl => DateFormatter used.

### Dev Dependencies 
- bloc_test => Bloc Testing
- freezed, build_runner, json_serializable, freezed_annotation => Bloc and Models Generation
- mocktail => Mocking Storage for tests.
- flutter_launcher_icons => Pub script to generate Application icons for all platforms.




--------
## Testing 
--------
*Pending*



