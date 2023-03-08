
**Proposed Project:**

Cruel World for Endangered Plants


**Abstract:**

The “Cruel World for Endangered Plants” data visualization project aims to highlight the state of endangered plants around the world. The project seeks to provide a comprehensive view of the current state of endangered plants and the challenges they face. Through a variety of charts, graphs, and maps, the project visualizes data on plant population trends, habitat loss, causes of endangerment, hotspots of endangered species and etc. By presenting the data in a visually engaging format, we hope to raise awareness about the urgent need to protect endangered plant species and their habitats. 

For this, we plan on using the [IUCN Redlist of Threatened Species data](https://www.iucnredlist.org/) and making use of the dataset from [Redlist API](https://apiv3.iucnredlist.org), we will explore the following questions:

1. How different plant species have been affected over time and potential causal or correlational relationships with socio-economic or natural factors
2. Which regions of the world have the highest concentration of endangered plant species? Which factors are driving plant endangerment in these regions?
3. Which plant species are currently the most endangered, and which ones are at risk of becoming endangered in the future? 
4. What are the main causes of plant endangerment, and how do these causes vary by species? Which causes are most prevalent in which regions of the world?
5. How has plant populations changed over time, and which species are showing the most dramatic declines? Which species are on the verge of extinction?

**Techniques:**

Data wrangling will be a key technique for our project as we'll have to import data using the Redlist API and then set the parameteres appropriately for our needs. Considering we're also planning to us multiple datasets together, Data wrangling tecnqiues would be very important to link them together. We also hope to use some Network analysis techniques and test relationships between our variables of interest. Using map-plotting techniques using various packages would also be. Finally, we'd also like to test using some animations or interactive charting techniques to show overtime changes in our data andvariables of interest.


**Data description:**

We hope to use a combination of the below datasets to explore the questions and relationships we've highlighted above.

1. [IUCN Redlist of Threatened Species data](https://www.iucnredlist.org/) - Established in 1964, the International Union for Conservation of Nature’s Red List of Threatened Species has evolved to become the world’s most comprehensive information source on the global extinction risk status of animal, fungus and plant species.
2. Natural Disasters Data (eg: fire, flood, earthquake) - We'd like to explore multiple datasets to test networks or relationships with natural disasters and species extinction level. [Columbia Dataset](https://sedac.ciesin.columbia.edu/data/set/pend-gdis-1960-2018)
3. Industrial Revolution Data or GDP data that can help us explore habitat loss.



**Visualization:**

Interactive Global Maps
Network Analysis Charts
Time-Series Charts
Heat map
