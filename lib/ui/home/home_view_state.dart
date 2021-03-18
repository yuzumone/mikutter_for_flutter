import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mikutter/data/model/faq.dart';
import 'package:mikutter/data/repository/faq_repository.dart';
import 'package:state_notifier/state_notifier.dart';

part 'home_view_state.freezed.dart';

@freezed
class HomeViewState with _$HomeViewState {
  const factory HomeViewState({
    @Default([]) List<Faq> faqs,
  }) = _HomeViewState;
}

class HomeViewStateNotifier extends StateNotifier<HomeViewState>
    with LocatorMixin {
  FaqRepository get _repositoy => read<FaqRepository>();

  HomeViewStateNotifier() : super(const HomeViewState());

  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    var result = await _repositoy.getFaq();
    state = state.copyWith(faqs: result);
  }
}
