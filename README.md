# Visitor & Delivery Queue App

A Flutter application built using **Clean Architecture**, **Cubit (flutter_bloc)**, and **GetIt Dependency Injection** for managing visitors, deliveries, and resident notifications in a residential society.

---

# Features

## Dashboard

* Home owner information
* Unit details
* Society details
* Contact information
* Notification shortcut

## Visitor Queue

* Display visitor and delivery entries
* Status filtering

  * All
  * Pending
  * Approved
  * Cancelled
* Dynamic count badges
* Status indicators
* Visitor image support

## Send Notification

* Resident information card
* Notification types:

  * Visitor
  * Food Delivery
  * Package Delivery
  * Other
* Visitor photo preview
* Notes field
* Form reset after submission
* Success snackbar

## Bottom Navigation

* Dashboard
* Visitors
* Deliveries
* Activity

---

# Architecture

The project follows **Clean Architecture**.

```text
Presentation
    ↓
Domain
    ↓
Data
```

### Presentation Layer

Responsible for:

* UI
* Cubit State Management
* Widgets
* Screens

### Domain Layer

Responsible for:

* Business Logic
* Entities
* Repository Contracts
* Use Cases

### Data Layer

Responsible for:

* Local JSON Source
* Models
* Repository Implementations

---

# Packages Used

## State Management

### flutter_bloc

Version:

```yaml
flutter_bloc: ^9.1.1
```

Used for:

* Cubit
* BlocBuilder
* State Management

---

### bloc

Version:

```yaml
bloc: ^9.2.1
```

Used for:

* Core Cubit functionality

---

## Dependency Injection

### get_it

Version:

```yaml
get_it: ^9.2.1
```

Used for:

* Service Locator
* Dependency Injection

---

## Launcher Icon

### flutter_launcher_icons

Version:

```yaml
flutter_launcher_icons: ^0.14.3
```

Used for:

* Android Launcher Icon
* iOS App Icon

---

# Project Structure

```text
lib
│
├── app
│   ├── app.dart
│   └── injection.dart
│
├── core
│   │
│   ├── constants
│   │   ├── app_colors.dart
│   │   ├── app_sizes.dart
│   │   └── app_strings.dart
│   │
│   ├── enums
│   │   ├── visitor_status.dart
│   │   ├── visitor_type.dart
│   │   └── filter_visitor.dart
│   │
│   ├── theme
│   │   ├── app_theme.dart
│   │   └── app_text_styles.dart
│   │
│   └── widgets
│       ├── app_chip.dart
│       └── app_bottom_navbar.dart
│
├── features
│   └── visitor_queue
│
│       ├── data
│       │
│       │   ├── datasource
│       │   │   ├── visitor_local_datasource.dart
│       │   │   └── visitor_local_datasource_impl.dart
│       │   │
│       │   ├── models
│       │   │   └── visitor_model.dart
│       │   │
│       │   ├── repository
│       │   │   └── visitor_repository_impl.dart
│       │   │
│       │   └── local
│       │       └── visitor_queue.json
│       │
│       ├── domain
│       │
│       │   ├── entities
│       │   │   └── visitor_entity.dart
│       │   │
│       │   ├── repositories
│       │   │   └── visitor_repository.dart
│       │   │
│       │   └── usecases
│       │       └── get_visitor_usecase.dart
│       │
│       └── presentation
│
│           ├── cubit
│           │   ├── visitor_cubit.dart
│           │   └── visitor_state.dart
│           │
│           ├── pages
│           │   ├── home_page.dart
│           │   ├── visitors_page.dart
│           │   ├── deliveries_page.dart
│           │   ├── activity_page.dart
│           │   └── send_notification_page.dart
│           │
│           └── widgets
│               ├── visitor_card.dart
│               ├── visitor_photo.dart
│               ├── resident_info_card.dart
│               ├── notification_type_card.dart
│               ├── filter_chips.dart
│               ├── home_owner_card.dart
│               └── home_info_card.dart
│
└── main.dart
```

---

# Local Data Source

Data is loaded from:

```text
lib/features/visitor_queue/data/local/visitor_queue.json
```

The app currently uses local JSON as the source of truth.

---

# Status Types

```dart
enum VisitorStatus {
  Pending,
  Approved,
  Cancelled,
}
```

---

# Visitor Types

```dart
enum VisitorType {
  Visitor,
  FoodDelivery,
  PackageDelivery,
  Other,
}
```

---

# Dependency Injection

Dependencies are registered using GetIt.

```dart
await init();
```

Registered Services:

* VisitorLocalDataSource
* VisitorRepository
* GetVisitorsUseCase
* VisitorCubit

---

# Running The Project

Install packages:

```bash
flutter pub get
```

Run the application:

```bash
flutter run
```

---

# Generate Launcher Icon

```bash
dart run flutter_launcher_icons
```

---

# Author

Built using Flutter, Clean Architecture, Cubit, and GetIt.
