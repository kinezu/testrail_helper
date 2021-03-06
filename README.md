# testrail_helper

A gem to help you pull test cases from test suites and filter them out by whatever fields you want. Iterate through multiple suites to construct comprehensive reports.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'testrail_helper'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install testrail_helper

## Usage

```ruby
# testrail_helper a new client
client = TestrailHelper::Client.new(username:'',password: '',url: 'https://blarg.testrail.com/')

# get a list of test cases by passing in the suite_id and section_id
cases = client.get_all_test_cases_in_section(suite_id: "729", section_id: "8")

# filter your list down by various required fields. AND
filtered_cases_with_and = client.filter_by_fields_and(cases,priority_id: 4, created_by: 34)

# filter your list down by various required fields. OR
filtered_cases_with_or  = client.filter_by_fields_or(cases,priority_id: 4, created_by: 34)

# write list to file
write_to_file(cases,'/output/filename')

# update a test case by simply putting the test_id
client.update_test_case(217617,type_id:1)

# get a test plan, including details on each run
client.get_plan(2609)

# get a summary of a test run
client.get_run_info(2610)

# get all test caes in a run
client.get_tests(2610)

# get all users
client get_all_users

# get all active users
client get_all_active_users

# get user by id
client.get_user(4)

# get user by email
client.get_user_by_email("guybrush@SCUMM.com)

# get sections
client.get_sections(project_id, suite_id)

# create test plan
client.create_test_plan(34, name: 'test plan')

# create test plan entry
client.add_plan_entry(432, suite_id: 2, name: 'run name', include_all: false, case_ids: [1, 2, 3])


```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake false` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/kinezu/testrail_helper. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

