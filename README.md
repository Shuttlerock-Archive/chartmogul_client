# ChartMogul Ruby Gem

[![Build Status](https://secure.travis-ci.org/Shuttlerock/chartmogul_client.png)](http://travis-ci.org/Shuttlerock/chartmogul_client)
[![Code Climate](https://codeclimate.com/github/Shuttlerock/chartmogul_client/badges/gpa.svg)](https://codeclimate.com/github/Shuttlerock/chartmogul_client)

This is the unofficial Ruby wrapper for the ChartMogul v1 API. It supports not all
endpoints currently available on the [ChartMogul API](https://dev.chartmogul.com/docs).

## Installation

``` bash
gem install chartmogul_client
```

### Some quick examples

First, instantiate the Client class:

``` ruby
>> client = Chartmogul.new(account_token: 'token', secret_key: 'secret')
```

Get users by IDs:

``` ruby
>> client.import.customers.list
```

### Contributions and Pull Requests

No request is too small and I encourage everyone to get involved. So please if
you would like to contribute, let me know and throw me a pull request!

### Requirements

* Ruby 2.x.x

---

Copyright 2015 Shuttlerock Ltd.

Licensed under the Apache License, Version 2.0 (the "License"); you may not
use this work except in compliance with the License. You may obtain a copy of
the License in the LICENSE file, or at:

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
License for the specific language governing permissions and limitations.
