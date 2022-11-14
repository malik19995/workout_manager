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
- Screen hooked with Workout Cubit
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

-----------------
## Testing 
--------
*Pending*



