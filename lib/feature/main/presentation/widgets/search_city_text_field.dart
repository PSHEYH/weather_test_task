import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_test_app/common/theme/app_colors.dart';
import 'package:weather_test_app/common/widgets/state/loading_state.dart';
import 'package:weather_test_app/feature/main/presentation/bloc/city_search/city_search_bloc.dart';

class SearchCityTextField extends StatelessWidget {
  SearchCityTextField({super.key, required this.textEditingController});

  final InputBorder _defaultBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(14),
    borderSide: BorderSide(color: AppColors.borderColor, width: 2),
  );
  final String _hintText = 'Input City';

  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CitySearchBloc, CitySearchState>(
      builder: (context, state) {
        return TextFormField(
          controller: textEditingController,
          cursorColor: Colors.white,
          enabled: state.isLoading == false,
          onChanged: (value) {
            context.read<CitySearchBloc>().add(
              CitySearchEvent.searchCityByName(name: value),
            );
          },
          onTap: (){
            bool isSearchingListState = state.maybeWhen(orElse: () => false, loadedSearchList: (s, list) => true);
            if(textEditingController.text.trim().isNotEmpty && isSearchingListState){
              context.read<CitySearchBloc>().add(
                CitySearchEvent.searchCityByName(name: textEditingController.text),
              );
            }
          },
          maxLines: 1,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
          decoration: InputDecoration(
            hintText: _hintText,
            suffixIcon:
                state.isLoading
                    ? LoadingState(dimension: 20)
                    : null,
            hintStyle: TextStyle(
              color: AppColors.hintTextColor,
              fontSize: 13,
              fontWeight: FontWeight.w400,
            ),
            enabledBorder: _defaultBorder,
            focusedBorder: _defaultBorder,
            focusedErrorBorder: _defaultBorder,
            disabledBorder: _defaultBorder,
            errorBorder: _defaultBorder,
            border: _defaultBorder,
          ),
        );
      },
    );
  }
}

