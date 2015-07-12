require File.expand_path(File.dirname(__FILE__) + '/lib/testrail_helper')

# create a new client
client = TestrailHelper::Client.new(username:'',password: '',url: 'https://blarg.testrail.com/')

# get a list of test cases by passing in the suite_id and section_id
cases = client.get_all_test_cases_in_section(suite_id: "729", section_id: "8")

# filter your list down by various required fields. AND
filtered_cases_with_and = client.filter_by_fields_and(cases,priority_id: 4, created_by: 34)

# filter your list down by various required fields. OR
filtered_cases_with_or  = client.filter_by_fields_or(cases,priority_id: 4, created_by: 34)

# write list to file
write_to_file(cases,'/output/filename')