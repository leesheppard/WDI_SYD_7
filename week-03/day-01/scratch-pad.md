Creating a person and address
-----------------------------

1. User fills in form with personal details + address
2. They submit
3. Those details are sent to the server
4. The server takes the person details (Jack, Watson, 16/09/93...)
5. Stores personal details in people table
| ID | First Name | Last Name | DOB      |
| 10 | Jack       | Watson    | 16/09/93 |
6. Get back person (Database says the ID is 10)
7. Store the address
address.person_id = person.id
| ID | Street One | Street Two | Person ID |
|  5 | Fake Street| Unit 1     | 10        |
8. Get back adresss (Database says the ID is 5)
9. Have the person record and the address
10. Person.address => Find address where person_id = 10

Primary Key
-----------

* ID column

Server 1: Fill in form details + address
Server 2: Fill in form details + address
Server 1: Create person (ID=1)
Server 2: Create person (ID=2)
Server 2: Create address (ID=1)
Server 1: Create address (ID=2)

Numbers
-------

INT/INTEGER: -2147483648 to +2147483647 (4 bytes)
SMALLINT: -32768 to +32767 (2 bytes)
BIGINT: -9223372036854775808 to -9223372036854775807 (8 bytes)
DOUBLE: 15 precision (8 bytes)
REAL: 6 precision (4 bytes)
BOOLEAN: true or false
SERIAL: Is an INT but AUTO-INCREMENTED

Text
----

VARCHAR(140)
TEXT

Date/Time
---------

TIMESTAMP: A point in time, optionally specify timezone
DATE: Just a date
TIME: Just a time

## Students
| id | first_name | last_name | dob | course_id |
| 1  | Jack       | Watson    | 93  | 1         |

## Courses
| id | name |
| 1  | WDI  |


































