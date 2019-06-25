# Testing Ruby Applications with RSpec
## by: Xavier Shay

### Notes:

1. Reduce dependency
2. Test behaviour, not implementation

### Rspec Family

Library | Features
--------|---------
rspec-core | Runner and syntax
rspec-expectations| Express desired outcomes
rspec-mocks | Test doubles

### RSpec Methods

Method | Meaning
-------|---------
it | Specify a property. "Example"
describe | Is a way to group examples/properties

### Principles
* Spec behavior, not implementation.
* Spec for confidence, not proof

### Three conventions for organizing our project
1. lib and spec directories
2. suffixing our spec files `_spec`
3. Usage of common spec helper file `spec_helper.rb`

### Configuration
There are different ways for setting common command line flags at different scopes:
- Local
- Project
- Global
Hierarchy: Local > Project > Global

### Shared examples
To remove some duplication between samples.

### RSpec convenience
`let` and `subject`

