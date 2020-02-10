# Application: **Neighborly**

### By Kyle Wymer, Jo Carter, Casey Idsinga, Marcus Jensen, & Noah Horwitz

##### _First published 2019-02-06_

## Description:
This application was made as part of a team coding project by [Kyle Wymer](https://github.com/wymerkd), [Jo Carter](https://github.com/lioness3), [Casey Idsinga](https://github.com/cidsinga), [Marcus Jensen](https://github.com/marcusjensen15), & [Noah Horwitz](https://github.com/nhhor), students at _[Epicodus](http://www.epicodus.com)_, a vocational school for technology careers based in Portland, OR. The project is designed to allow neighbors within a community (as defined by a radius within a user's home zip-code area) to host or join events in their immediate area.

## This project is deployed on Heroku [HERE](https://team-neighborly.herokuapp.com/).

## Setup/Installation instructions for development/testing:
* Click the `Clone or download` button and copy the link.
* Open your terminal application (assuming **GIT Scripts** and **node.js** (with NPM), **psql**, **Ruby 2.5.7**, and **Rails 5.2.4** have been installed on your system) and type `$` `git clone (link)`.
* In the terminal using the `cd`... command, navigate to the newly created repository and run `$` `bundle install`.
* In the terminal type `$` `rake db:create`
* `$` `rake db:migrate`
* `$` `rake db:test:prepare`
* `$` `rake db:seed`
* `$` `rails s`
* Finally, in a browser navigate to `localhost:3000`

## Technologies Used
 * `Ruby`
  * -v 2.5.7
 * `Rails`
  * -v 5.2.4.1
 * `SQL`
  * `psql`

## Known Bugs
* There is no rescue from an error on searches when the promaptools.com API is down.

## Support and contact details
* Contact [teamneighborly.epicodus@gmail.com](mailto:teamneighborly.epicodus@gmail.com)

## References and Acknowledgements
* The ability to search events from an array of zip codes based on a predefined radius from a user's home zip code was graciously provided by  via the [promaptools.com](http://www.promaptools.com) API. Our thanks to [Glenn et. al.](http://www.promaptools.com) for their assistance on this student project!

## Scratchpad:
* https://api.promaptools.com/service/us/zips-inside-radius/get/?radius=7&zip=97217&showcity=true&showstate=true&key=<API_KEY>

## License
* _This This repository is copyright (C) 2020 by [Kyle Wymer](https://github.com/wymerkd), [Jo Carter](https://github.com/lioness3), [Casey Idsinga](https://github.com/cidsinga), [Marcus Jensen](https://github.com/marcusjensen15), & [Noah Horwitz](https://github.com/nhhor) and licensed under the GNU General Public License v3.0 [gpl-3.0](https://www.gnu.org/licenses/gpl-3.0.en.html)_.
