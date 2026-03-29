

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_test_app/feature/main/data/model/place_model.dart';
import 'package:weather_test_app/feature/main/presentation/bloc/city_search/city_search_bloc.dart';
import 'package:weather_test_app/feature/main/presentation/widgets/search_city_text_field.dart';

class CompositedSearchCityTextField extends StatefulWidget {
  const CompositedSearchCityTextField({super.key});

  @override
  State<CompositedSearchCityTextField> createState() => _CompositedSearchCityTextFieldState();
}

class _CompositedSearchCityTextFieldState extends State<CompositedSearchCityTextField> {
  final LayerLink _layerLink = LayerLink();
  OverlayEntry? _overlayEntry;

  final TextEditingController _controller = TextEditingController();

  void _showOverlay(List<Place> cities) {
    _removeOverlay();

    _overlayEntry = OverlayEntry(
      builder: (ctx) {
        return Positioned(
          width: MediaQuery.of(context).size.width - 32,
          child: CompositedTransformFollower(
            link: _layerLink,
            offset: const Offset(0, 50),
            showWhenUnlinked: false,
            child: Material(
              elevation: 8,
              borderRadius: BorderRadius.circular(12),
              child: ListView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemCount: cities.length,
                itemBuilder: (ctx2, index) {
                  final city = cities[index];

                  return ListTile(
                    title: Text(city.displayName),
                    onTap: () {
                      _controller.clear();
                      context.read<CitySearchBloc>().add(
                        CitySearchEvent.selectCity(place: city)
                      );

                      _removeOverlay();
                    },
                  );
                },
              ),
            ),
          ),
        );
      },
    );

    Overlay.of(context).insert(_overlayEntry!);
  }

  void _removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  @override
  void dispose() {
    _removeOverlay();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CitySearchBloc, CitySearchState>(
      listener: (context, state) {
        state.maybeWhen(
          loadedSearchList: (currentPlace, placeList) {
            if (placeList.isNotEmpty) {
              _showOverlay(placeList);
            } else {
              _removeOverlay();
            }
          },
          orElse: () => _removeOverlay(),
        );
      },
      child: CompositedTransformTarget(
        link: _layerLink,
        child: SearchCityTextField(textEditingController: _controller,),
      ),
    );
  }
}