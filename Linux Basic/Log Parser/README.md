 Write simple script that reads some log file apache_logs and writes into the file not_found.txt information about address, HTTP method and path from all requests where a 404 status code was thrown.

Input data looks like:

91.177.205.119 - - [17/May/2015:10:05:32 +0000] "GET /favicon.ico HTTP/1.1" 200 3638 "-" "Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; Win64; x64; Trident/6.0)"
66.249.73.185 - - [17/May/2015:10:05:22 +0000] "GET /doc/index.html?org/elasticsearch/action/search/SearchResponse.html HTTP/1.1" 404 294 "-" "Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)"
207.241.237.228 - - [17/May/2015:10:05:40 +0000] "GET /blog/tags/defcon HTTP/1.0" 200 24142 "http://www.semicomplete.com/blog/tags/C" "Mozilla/5.0 (compatible; archive.org_bot +http://www.archive.org/details/archive.org_bot)"

Example of file apache_logs can be found here

The result should be something like this:

38.99.236.50 “GET /files/logstash/logstash-1.3.2-monolithic.jar

etc.
