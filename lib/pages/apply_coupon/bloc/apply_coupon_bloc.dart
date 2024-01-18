import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'apply_coupon_event.dart';
part 'apply_coupon_state.dart';
part 'apply_coupon_bloc.freezed.dart';

class ApplyCouponBloc extends Bloc<ApplyCouponEvent, ApplyCouponState> {
  ApplyCouponBloc() : super(const ApplyCouponState.initial()) {
    on<ApplyCouponEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
