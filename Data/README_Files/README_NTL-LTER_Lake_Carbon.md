# NTL-LTER Lake Carbon Datasets


## Summary
This dataset was used for the Environmental Data Analytics (ENV872L) class at Duke Univeristy during the Spring 2019 semester. This data will be used as part of the final project for this course.

This database has information from the North Temperate Lakes District in Wisconsin, USA. Data were collected from the lakes in the database as part of a long term study with the Long Term Ecological Research station. The Long Term Ecological Research station was established by the National Science Foundation. 

## Database Information
The data were obtained from the North Temperate Lakes Long Term Ecological Research site. Additional information can be found online at this site: https://lter.limnology.wisc.edu/about/overview

The data were obtained by using the Data Search tool. 
On the Data page, the following were selected: 
* carbon (Search keywords)
* Cascade (NTL Categories)
* Select: Cascade Project at North Temperate Lakes LTER Core Data Carbon 1984 - 2016

Data were collected using the Data tool (https://lter.limnology.wisc.edu/data).
On the Data homepage, the following selections were made: 
* Cascade (NTL Categories)
* Cascade Project at North Temperate Lakes LTER Core Data Carbon 1984 - 2016

THEN 

* Download All Data (csv) was selected to download the data

The csv file was saved as `NTL-LTER_Lake_Carbon_Raw.csv`. 

## Data Content Information
From the NTL-LTER site: 
### Carbon
Data for dissolved inorganic and organic carbon (DIC and DOC respectively), particulate organic matter, partial pressure of CO2, and absorbance at 440nm were collected. The water samples were collected using a Van Dorn sampler. Organic Carbon and absorbance samples were collected at depths which were recorded as epilimnion, metalimnion, hypolimnion and PML (Pooled Mixed Sample). Inorganic carbon samples were taken at depths of 100%, 50%, 25%, 10%, 5%, and 1% of the surface irradiance. Some samples of inorganic carbon were collected from the hypolimnion as well. Partial pressure of CO2 samples came from 2 meters above the surface of the lake (which were air samples) and right below the surface of the lake (water samples). The frequency of sampling varied by site and there were 14 sites that were sampled. 

Detailed field and laboratory protocols can be found in the Cascade Methods Manual, found here: https://cascade.limnology.wisc.edu/public/public_files/methods/CascadeMa...
POC, PON and DOC: 1. 100 - 300 ml (Typically ~200mL for PML, 150 metalimnion and 75 – 100 for the hypolimnion) of lake water from each depth was filtered through 153 um mesh to remove large zooplankton. Water was then filtered through a precombusted 25mm GF/F filter (0.7 um pore size) at less than 200 mm Hg pressure. Filters were placed in drying oven at 60 C to dry for at least 48 hours. 20mL of filtered water was stored in a scintillation vial and acidified with 200uL of 2N H2SO4 for DOC analysis. Blank samples for POC and DOC were prepared with deionized water to control for contamination. All samples were sent to the Cary Institute of Ecosystem Studies for analysis.

Absorbance: 60ml of water was filtered through a 25mm GF/F filter and refrigerated until it was able to be run. Samples were warmed up to room temperature and run on a spectrophotometer in a 10cm glass cuvette. The spectrophotometer was set to 440nm and blanked with deionized water. The cuvette was rinsed once with sample water and then filled and absorbance was measured.

DIC: Water was sampled with a van dorn and taken back to the lab. 10 mL subsamples were taken with syringes and 200 uL of 2N H2SO4 and 20 mL of helium gas were added to the syringe. Syringes were shaken for one minute and 10 mL of the helium headspace was injected into a Gas Chromatograph with Thermal Conductivity Detector to determine DIC concentration.

PCO2: Air PCO2 was measured by filling a syringe with air from two meters above the lake surface and running though the GC. Water PCO2 was measured by filling a two liter bottle with lake surface water and replacing 60 mL of water with atmospheric air for headspace. The bottle was shaken for 100 seconds and two subsamples of the headspace were taken and run though a GC in the lab.

## Naming conventions and file formats
Data files are named according to the following naming convention: `databasename_datatype_details_stage.format`, where: 

**databasename** the database where the data was collected from

**datatype** is a description of data 

**details** are additional descriptive details, particularly important for processed data 

**stage**refers to the stage in data management pipelines (e.g., raw, cleaned, or processed)

**format** is a non-proprietary file format (e.g., .csv, .txt)

## Additional Information and Support
