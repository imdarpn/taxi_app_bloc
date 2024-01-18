# taxi_customer_demo

Taxi customer app

#### Run these commands:

1. `flutter pub get`
2. `flutter gen-l10n` - Generate app localization files
3. `dart run build_runner build --delete-conflicting-outputs`


> File structure:

- core
    - **common** - app constants(images, icons, strings), common widgets, methods
    - **enum**
    - **models**
    - **services**
        - api service
        - storage service (local storage - shared pref)
    - **styles** - app style (font, color, ui constants)

- pages
    - **screen_name**
        - view.dart
        - bloc (state, event, bloc files)

- repository
    - **auth_repository.dart** - API call implementation

- routes
    - **app_routes.dart** - path names of screens
    - **app_pages.dart** - router setup for navigation

- utils (app utilities)
    - **custom widgets** - custom third party widgets
    - **locator.dart** - dependancy injection
    - **logger.dart** - app logs

