fastlane documentation
----

# Installation

Make sure you have the latest version of the Xcode command line tools installed:

```sh
xcode-select --install
```

For _fastlane_ installation instructions, see [Installing _fastlane_](https://docs.fastlane.tools/#installing-fastlane)

# Available Actions

## iOS

### ios match_certificates

```sh
[bundle exec] fastlane ios match_certificates
```

match certificates

### ios run_unit_tests

```sh
[bundle exec] fastlane ios run_unit_tests
```

Run all the tests

### ios gym_app

```sh
[bundle exec] fastlane ios gym_app
```

Build the app

### ios pilot_to_testflight

```sh
[bundle exec] fastlane ios pilot_to_testflight
```

Upload to TestFlight

### ios beta_upload

```sh
[bundle exec] fastlane ios beta_upload
```

Upload beta to TestFlight

----

This README.md is auto-generated and will be re-generated every time [_fastlane_](https://fastlane.tools) is run.

More information about _fastlane_ can be found on [fastlane.tools](https://fastlane.tools).

The documentation of _fastlane_ can be found on [docs.fastlane.tools](https://docs.fastlane.tools).
