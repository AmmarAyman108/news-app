import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:news_app/core/models/news_model.dart';
import 'package:news_app/features/category_view/data/repos/category_repo_impl.dart';

part 'category_news_state.dart';

class CategoryNewsCubit extends Cubit<CategoryNewsState> {
  CategoryNewsCubit() : super(CategoryNewsInitial());
  
  Future<void> getCategoryNews({required String category}) async {
    emit(CategoryNewsLoadingState());
   CategoryRepoImpl _categoryRepoImplRepoImpl = CategoryRepoImpl();
    var result = await _categoryRepoImplRepoImpl.getCategoryNews(category:category );
    result.fold(
      (failure) {
        emit(CategoryNewsFailureState(errorMessage: failure.errorMessage));
      },
      (data) {
        emit(CategoryNewsLoadedState(news: data));
      },
    );
  }
}
