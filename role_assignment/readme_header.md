# Azure Role Assignment
This module will create an azure role assignment.

# Notes
This is a base configuration of the module.  More options are available for addition later.  The module does have some 'intelligence' built in.  See variables below.  One of a scope, subscription_id, or management group name/UUID must be provided.  Whichever one is provided will be used as the 'scope' of the role assignment.  The role definition is also data sourced, this supports finding built in roles.

# History
| Author | Date | Comments |
|--------|------|----------|
| Jeremy Humenik | 2024-04-01 | Initial Commit |