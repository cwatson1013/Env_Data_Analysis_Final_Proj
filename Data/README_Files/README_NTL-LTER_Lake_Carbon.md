# NTL-LTER Lake Carbon Datasets


## Summary
This dataset was used for the Environmental Data Analytics (ENV872L) class at Duke Univeristy during the Spring 2019 semester. This data will be used as part of the final project for this course.

The dataset contains information from studies on lakes in the North Temperate Lakes District in Wisconsin, USA. As part of the Long Term Ecologial Research station that was established by the National Science Foundation, data were collected on these lakes.

## Database Information
Data were collected from the North Temperate Lakes Long Term Ecological Research website. More information can be found here: https://lter.limnology.wisc.edu/about/overview

Data were collected using the Data tool (https://lter.limnology.wisc.edu/data).
From the Data homepage, the following selections were made: 
* Cascade (NTL Categories)
* Cascade Project at North Temperate Lakes LTER Core Data Carbon 1984 - 2016

AND

* On each of the three pages, Download All Data (csv) was chosen.


csv files were saved as `NTL-LTER_Lake_Carbon_Raw.csv`. 

Data were accessed 2018-12-06.

## Data Content Information
From the NTL-LTER site: 
### Carbon
Data on dissolved organic and inorganic carbon, particulate organic matter, partial pressure of CO2 and absorbance at 440nm. Samples were collected with a Van Dorn sampler. Organic carbon and absorbance samples were collected from the epilimnion, metalimnion, and hypolimnion. Inorganic samples were collected at depths corresponding to 100%, 50%, 25%, 10%, 5%, and 1% of surface irradiance, as well as one sample from the hypolimnion. Samples for the partial pressure of CO2 were collected from two meters above the lake surface (air) and just below the lake surface (water). Sampling frequency: varies; number of sites: 14

Detailed field and laboratory protocols can be found in the Cascade Methods Manual, found here: https://cascade.limnology.wisc.edu/public/public_files/methods/CascadeMa...
POC, PON and DOC: 1. 100 - 300 ml (Typically ~200mL for PML, 150 metalimnion and 75 – 100 for the hypolimnion) of lake water from each depth was filtered through 153 um mesh to remove large zooplankton. Water was then filtered through a precombusted 25mm GF/F filter (0.7 um pore size) at less than 200 mm Hg pressure. Filters were placed in drying oven at 60 C to dry for at least 48 hours. 20mL of filtered water was stored in a scintillation vial and acidified with 200uL of 2N H2SO4 for DOC analysis. Blank samples for POC and DOC were prepared with deionized water to control for contamination. All samples were sent to the Cary Institute of Ecosystem Studies for analysis.

Absorbance: 60ml of water was filtered through a 25mm GF/F filter and refrigerated until it was able to be run. Samples were warmed up to room temperature and run on a spectrophotometer in a 10cm glass cuvette. The spectrophotometer was set to 440nm and blanked with deionized water. The cuvette was rinsed once with sample water and then filled and absorbance was measured.

DIC: Water was sampled with a van dorn and taken back to the lab. 10 mL subsamples were taken with syringes and 200 uL of 2N H2SO4 and 20 mL of helium gas were added to the syringe. Syringes were shaken for one minute and 10 mL of the helium headspace was injected into a Gas Chromatograph with Thermal Conductivity Detector to determine DIC concentration.

PCO2: Air PCO2 was measured by filling a syringe with air from two meters above the lake surface and running though the GC. Water PCO2 was measured by filling a two liter bottle with lake surface water and replacing 60 mL of water with atmospheric air for headspace. The bottle was shaken for 100 seconds and two subsamples of the headspace were taken and run though a GC in the lab.

### Physical and chemical limnology
Physical and chemical variables are measured at one central station near the deepest point of each lake. In most cases these measurements are made in the morning (0800 to 0900). Vertical profiles are taken at varied depth intervals. Chemical measurements are sometimes made in a pooled mixed layer sample (PML); sometimes in the epilimnion, metalimnion, and hypolimnion; and sometimes in vertical profiles. In the latter case, depths for sampling usually correspond to the surface plus depths of 50percent, 25percent, 10percent, 5percent and 1percent of surface irradiance.

Methods for 1984-1990 were described by Carpenter and Kitchell (1993) and methods for 1991-1997 were described by Carpenter et al. (2001).

Carpenter, S.R. and J.F. Kitchell (eds.). 1993. The Trophic Cascade in Lakes. Cambridge University Press, Cambridge, England.

Carpenter, S.R., J.J. Cole, J.R. Hodgson, J.F. Kitchell, M.L. Pace,D. Bade, K.L. Cottingham, T.E. Essington, J.N. Houser and D.E. Schindler. 2001. Trophic cascades, nutrients and lake productivity: whole-lake experiments. Ecological Monographs 71: 163-186.

## Naming conventions and file formats
Files are named according to the following naming convention: `databasename_datatype_details_stage.format`, where: 

**databasename** refers to the database from where the data originated

**datatype** is a description of data 

**details** are additional descriptive details, particularly important for processed data 

**stage**refers to the stage in data management pipelines (e.g., raw, cleaned, or processed)

**format** is a non-proprietary file format (e.g., .csv, .txt)

## Additional Information and Support
For more information, please contact the data assembler, **Kateri Salk** (kateri.salk@duke.edu)