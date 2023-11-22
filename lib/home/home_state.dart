part of 'home_bloc.dart';

@immutable
abstract class HomeState {

}
abstract class HomeActionState extends HomeState{}
class HomeInitial extends HomeState {

}
class HomeLoadingState extends HomeState{

}
class HomeLoadedSuccessState extends HomeState{

}
class HomeErrorSuccessState extends HomeState{

}
class HomeNavigateToWishListPageActionSate extends HomeActionState{

}
class HomeNavigateToCardListPageActionSate extends HomeActionState{

}