# List all tables
# aws dynamodb list-tables --endpoint-url http://localhost:8000

# TODO: create an addon_client_data table
# TODO: index by client id
# TODO: load CSV data in


# Schema of CSV data
 |-- bookmark_count: long (nullable = true)
 |-- client_id: string (nullable = true)
 |-- disabled_addons_ids: string (nullable = true)
 |-- geo_city: string (nullable = true)
 |-- installed_addons: string (nullable = true)
 |-- locale: string (nullable = true)
 |-- os: string (nullable = true)
 |-- profile_age_in_weeks: long (nullable = true)
 |-- profile_date: string (nullable = true)
 |-- submission_age_in_weeks: long (nullable = true)
 |-- submission_date: string (nullable = true)
 |-- subsession_length: long (nullable = true)
 |-- tab_open_count: long (nullable = true)
 |-- total_uri: long (nullable = true)
 |-- unique_tlds: long (nullable = true)
