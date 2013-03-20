What is this?

nfsv4bat.org is a site used to maintain information about upcoming
interoperability testing events for NFSv4.

This repository contains everything necessary to rebuild the site
from the ground up. It also allows for community contributions
in terms of new events, presentations, documents, etc.

How to use:

Content goes directly into the underlying directories. The content
tends to be very much write once, read often.

"Dynamic HTML" is simulated by having left and right menu structures
that change whenever new content is added, which is rare. So we
avoid the overhead of a database and have the pages load quickly.

To rebuild the content, use make:

$ make

To make sure you have a clean copy, use make:

$ make clean

$ make
