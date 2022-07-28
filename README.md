# soton_astro_db
The resource descriptors for the Soton Astronomy Database

This repository contains the resource description files which allow tables, images, and spectra to be ingested into the Southampton Virtual Observataory database.

The database is managed using the [GAVO Data Center Helper Suite (DaCHS)](https://docs.g-vo.org/DaCHS/).

The database is currently private.

## Ingestion

This repo should be cloned on to the server. You then need to download the raw data files in csv format and ingest them using 

```Shell
dachs ingest help_a_list/q.rd
```
