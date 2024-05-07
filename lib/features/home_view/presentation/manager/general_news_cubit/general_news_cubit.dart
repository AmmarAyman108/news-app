import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:news_app/core/models/news_model.dart';
import 'package:news_app/features/home_view/data/repos/home_repo_impl.dart';

part 'general_news_state.dart';

class GeneralNewsCubit extends Cubit<GeneralNewsState> {
  GeneralNewsCubit() : super(GeneralNewsInitialState());

  Future<void> getGeneralNews() async {
    emit(GeneralNewsLoadingState());
    HomeRepoImpl _homeRepoImpl = HomeRepoImpl();
    var result = await _homeRepoImpl.getGeneralNews();
    result.fold(
      (failure) {
        emit(GeneralNewsFailureState(errorMessage: failure.errorMessage));
      },
      (data) {
        emit(GeneralNewsLoadedState(news: data));
      },
    );
  }
}
