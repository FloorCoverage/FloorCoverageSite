# Floor Coverage

## About
Floor Coverage is a web application to assist in employee scheduling.  Users with manager access are able to create shifts with a dropdown list of their employees and the roles each employee is qualified to perform.

In addition to managing schedules, the app also features a "View Only" mode so that anyone with the calendar code is able to view the schedule without requiring unique usernames and passwords.

Our future goals include adding a feature which automatically generates viable schedules.

This app is powered by [Ruby on Rails](http://rubyonrails.org/). 

## Demo
To see the software in action, check out our demo on [Heroku](https://floorcoverage.herokuapp.com/).

#### View only mode:
The calendar that appears on the login page will initially have no shifts scheduled.
To see a populated calendar, enter the id 1 or 2 in the search bar below the calendar.
(You may have to go back in time a few weeks to find the last shifts that were added).

#### Manager mode:
Log in with the following credentials: -

```
email: user1@email.com 
```
```
password: Pass1!
```

Experiment with the employees, roles, and shifts pre-populated in the database, or refer to [INSTALL.md](INSTALL.md) for more information.

## This Repository

* The web site is hosted on [Heroku](https://www.heroku.com/home) with a [Postgres Service](https://www.heroku.com/postgres) provided by `Heroku`
* In order the host the web site on `Heroku`, the code base must be [containerized with docker](https://devcenter.heroku.com/articles/getting-started-with-rails6). 
All of that work is done in [production](https://github.com/FloorCoverage/CS4360/tree/production).
* The [master](https://github.com/FloorCoverage/CS4360) branch is for development and the [production](https://github.com/FloorCoverage/CS4360/tree/production) branch is for publishing to `Heroku`
* The [master](https://github.com/FloorCoverage/CS4360) branch uses `Sqlite3` and [production](https://github.com/FloorCoverage/CS4360/tree/production) branch  uses `PostgreSQL`

## License

This software is licensed under the [GNU General Public License 3.0](https://www.gnu.org/licenses/gpl-3.0.txt), a copy of which can be found in the [LICENSE](LICENSE.md) file.
This software utilizes the [FullCalendar](https://fullcalendar.io/) javascript code which is licensed under 
 [MIT License](https://github.com/fullcalendar/fullcalendar/blob/master/LICENSE.txt).

## Installation

Since Floor Coverage uses both `PostgreSQL` and `Sqlite3` as its databases, please refer to [INSTALL.md](INSTALL.md) to set up your environment.

## Development

Pull requests are welcome.

* Report bugs and suggest new features in the [issue tracker](https://github.com/FloorCoverage/CS4360/issues).
* For questions, join our [discord](https://discord.gg/Tuy6gnyyan) or contact the maintainers at [floor.coveragecs4360@gmail.com](floor.coveragecs4360@gmail.com).

More details on contributing to the code are in the [CONTRIBUTING.md](CONTRIBUTING.md) file.

---

This software was originally created for:
>Metropolitan State University of Denver  
>CS 4360 - Technical Software Project  
>Dr. Steve Beaty  
>Fall 2020  

Team:  
> Omar Bitar  
> Nicole Weickert  
> Matt Sawaged  
> Victor Lazos-Aragon  
> Justin Wu