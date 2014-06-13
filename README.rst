Pootle Test Data
================

Pootle database dumps for testing purposes.

Currently these are used by migration test scripts in the Pootle test
framwework to ensure that older Pootle versions can be succesfully migrated.

Creating new test dumps
-----------------------

Simple setup the test server and dump the SQL


Naming conventions
------------------

For dumps that need to be migration tested:

dump-$engine-$version.sql

Where:

- *engine* - is the datbase engine e.g. sqlite, mysql or postgres
- *versions* - is the version of Pootle on which the dump was made e.g. 2.5.1
