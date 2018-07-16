# Requirements

* terraform
* docker

# Usage

* Set your AWS access/secret keys environment variables

```
AWS_ACCESS_KEY_ID="_REPLACE_ME_"
AWS_SECRET_ACCESS_KEY="_REPLACE_ME_"
AWS_DEFAULT_REGION="us-east-1"
```

* Deploy the terraform plan

```
# terraform plan
terraform apply
```

* Launch lambdash from a docker container
```
LAMBDASH_REGION=$(terraform output region)
LAMBDASH_FUNCTION=$(terraform output function_name)

docker run -it --rm \
  -e LAMBDASH_REGION=${LAMBDASH_REGION} \
  -e LAMBDASH_FUNCTION=${LAMBDASH_FUNCTION} \
  -e AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID} \
  -e AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY} \
  -e AWS_DEFAULT_REGION=${AWS_DEFAULT_REGION} \
  rcmorano/aws-lambda-shell
```

# Credits

This project is based on these two upstream ones:

* https://github.com/claranet/terraform-aws-lambda

* https://github.com/alestic/lambdash

# Licence and Authors

Everything but these files:

* assets/bin/lambdash (from https://github.com/alestic/lambdash, modified for this project)
* assets/lambda-index.js (from https://github.com/alestic/lambdash, modified for this project)

Copyright © 2018 Roberto C. Morano < https://www.linkedin.com/in/rcmorano/ >

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as
    published by the Free Software Foundation, either version 3 of the
    License, or (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.

    The license text is available at https://www.gnu.org/licenses/agpl-3.0.html

Authors:
* [Roberto C. Morano](https://github.com/rcmorano) (<rcmova@gmail.com>)
