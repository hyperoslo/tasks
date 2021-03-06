# Change log
All notable changes to this project will be documented in this file.

## 1.1.0 - 2014-10-07
### Added
- You may now include `Tasuku::Concerns::Author` in your author model(s) to destroy
associated responses automatically.

### Fixed
- Fixed a bug that caused submissions (such as `Tasuku::Taskables::Image::Response`) to not be
deleted along with their `Tasuku::Taskables::Taskable::Response` proxy.

## 1.0.1 - 2014-09-28
See 1.0.0 (accidentally pushed to Rubygems and yanked, now cannot be reused)

## 1.0.0 - 2014-09-28
### Added
- You may now set prerequisites for completing tasks.
- Submit buttons are now disabled upon being clicked to prevent accidental form resubmission.
- Questions, image requests, url requests and text requests may now have a video.
- Added a new taskable `Code::Request`.
- Added an optional reply upon answering a question.
- Added additional translations

### Fixed
- Fixed a bug that caused the application to crash upon submitting an answer without selecting
an option.
- Fixed a bug that caused `after_completion_path_for` to be scoped to Tasuku's routes rather
than the application it is mounted on.
- Fixed some translations.
- Fixed a bug that caused seeds to fail.

## 0.1.1 - 2014-06-13
### Fixed
- Fixed a bug that prevented existing responses from being migrated to the new proxy,
causing tasks to appear as incomplete despite being completed.

## 0.1.0 - 2014-06-10
### Deprecated
- Tasks have been renamed to Tasuku. You may still reference `Tasks` for
backwards compatibility, but if you're extending anything there's a good
chance that your application will break.

## 0.0.1 - 2014-06-10
### Added
- Everything
