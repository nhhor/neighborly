# Application: **Neighborly**

##### By Kyle Wymer, Jo Carter, Casey Idsinga, Marcus Jensen, & Noah Horwitz

###### _First published 2019-02-06_

## Description:
This application was made as part of a team coding project by [Kyle Wymer](https://github.com/wymerkd), [Jo Carter](https://github.com/lioness3), [Casey Idsinga](https://github.com/cidsinga), [Marcus Jensen](https://github.com/marcusjensen15), & [Noah Horwitz](), students at _[Epicodus](http://www.epicodus.com)_, which is a vocational school for technology careers based in Portland, OR. The project is designed to create an Ruby on Rails API for an animal shelter. The API will list the available cats and dogs at the shelter.

## Setup/Installation instructions:
* Click the `Clone or download` button and copy the link.
* Open your terminal application (assuming **GIT Scripts** and **node.js** (with NPM), **psql**, **Ruby 2.5.7**, and **Rails 5.2.4** have been installed on your system) and type `git clone (link)`.
* In the terminal using the `cd`... command, navigate to the newly created repository and run `bundle install`.
* In the terminal type `rake db:create`
* Then the terminal type `rake db:seed`
* Next in the terminal run `rails s`
* Finally, in a browser navigate to `localhost:3000`

## Technologies Used
 * `Ruby`
  * -v 2.5.7
 * `Rails`
  * -v 5.2.4.1
 * `SQL`
  * `psql`


## Known Bugs
* None


## User Stories


## References

## Support and contact details
Contact [example@sample.com](mailto:example@sample.com)

## License
_This This repository is copyright (C) 2020 by Noah Horwitz and licensed under the GNU General Public License v3.0 [gpl-3.0](https://www.gnu.org/licenses/gpl-3.0.en.html)_.


## References and Acknowledgements
* The ability to search events from an array of zip codes based on a predefined radius from a user's home zip code was graciously provided by  via the [promaptools.com](http://www.promaptools.com) API. Our thanks to [Glenn et. al.](http://www.promaptools.com) for their assistance on this student project!

## Scratchpad:
* https://api.promaptools.com/service/us/zips-inside-radius/get/?radius=7&zip=97217&showcity=true&showstate=true&key=<API_KEY>
* {"status":1,"output":[{"zip":"97217","distance":0,"city":"Portland","state":"OR"},{"zip":"97211","distance":4.22,"city":"Portland","state":"OR"},{"zip":"97203","distance":4.46,"city":"Portland","state":"OR"},{"zip":"97210","distance":5.35,"city":"Portland","state":"OR"},{"zip":"97227","distance":5.62,"city":"Portland","state":"OR"},{"zip":"98687","distance":6.01,"city":"Vancouver","state":"WA"},{"zip":"98666","distance":6.01,"city":"Vancouver","state":"WA"},{"zip":"98668","distance":6.01,"city":"Vancouver","state":"WA"},{"zip":"97209","distance":6.31,"city":"Portland","state":"OR"},{"zip":"97212","distance":6.37,"city":"Portland","state":"OR"}]}






faker_zip_array = ["97002", "97003", "97004", "97005", "97006", "97007", "97008", "97009", "97010", "97013", "97015", "97018", "97019", "97020", "97022", "97024", "97027", "97030", "97032", "97034", "97035", "97036", "97042", "97045", "97051", "97053", "97054", "97055", "97056", "97060", "97062", "97064", "97068", "97070", "97075", "97076", "97077", "97078", "97079", "97080", "97086", "97089", "97106", "97109", "97113", "97115", "97116", "97117", "97119", "97123", "97124", "97125", "97129", "97132", "97133", "97137", "97140", "97201", "97202", "97203", "97204", "97205", "97206", "97207", "97208", "97209", "97210", "97211", "97212", "97213", "97214", "97215", "97216", "97217", "97218", "97219", "97220", "97221", "97222", "97223", "97224", "97225", "97227", "97228", "97229", "97230", "97231", "97232", "97233", "97236", "97238", "97239", "97240", "97242", "97250", "97251", "97252", "97253", "97254", "97256", "97258", "97266", "97267", "97268", "97269", "97280", "97281", "97282", "97283", "97286", "97290", "97291", "97292", "97293", "97294", "97296", "97298", "98601", "98604", "98606", "98607", "98622", "98629", "98642", "98660", "98661", "98662", "98663", "98664", "98665", "98666", "98668", "98671", "98674", "98675", "98682", "98683", "98684", "98685", "98686", "98687"]
