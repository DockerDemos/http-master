http-master
===========

_v0.2 - 20141106_

Docker image for building and running the excellent [http-master](https://github.com/CodeCharmLtd/http-master) in a container.

### Building and Running ###

1. `git clone https://github.com/CodeCharmLtd/http-master.git`
2. Place your http-master.conf into ~/http-master/
3. `sudo docker build -t http-master .`
4. `sudo docker run -p 80:80 -p 443:443 -v ~/http-master:/etc/http-master -d http-master`

This will leave you with an http-master container running on your host, listening on ports 80 and 443, and reading `~/http-master/http-master.conf`.  Any changes you make to the .conf file will be read and applied by http-master when the file is written.

### Known Issues ###

* Build currently failing on the npm install.

### Acknowledgments ###

* Thanks to the CodeCharmLtd folks [\(https://github.com/CodeCharmLtd\)](https://github.com/CodeCharmLtd) for developing and supporting http-master!

### Copyright Info ###

[http-master](https://github.com/CodeCharmLtd/http-master) is licensed under the MIT License.

The Dockerfile and related code, scripts or documentation in this repository is:

Copyright (C) 2014 Chris Collins

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program. If not, see http://www.gnu.org/licenses/.

