Robert Richardson

What are some common HTTP status codes?
-200 (ok)
-204 (no content)
-302 (Found)
-303 (see other)
-304 (not modified)
-307 (internal redirect)
-500 (generic server error)
-404 (not found)

What is the difference between a GET request and a POST request?

-GET is a retrieval operation(ie find and return), POST is an insertion operation (give to be processed).


When might each be used?
-GET could be used to retrieve the html and stylesheet

-POST could be used to pass analytics/submit to a associated database

Get should be used for functions that do not have side-effects and can be repeated. Post should not be repeated as it often creates/updates and doing that multiple times can have unforseen consequences.



Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
-A cookie is a client side permanent file. It can be retrieved and processed to tailor a site to/track to analyze the user