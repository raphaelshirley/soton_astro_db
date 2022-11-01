# soton_astro_db
The resource descriptors for the Soton Astronomy Database

This repository contains the resource description files which allow tables, images, and spectra to be ingested into the Southampton Virtual Observataory database.

The database is managed using the [GAVO Data Center Helper Suite (DaCHS)](https://docs.g-vo.org/DaCHS/).

The database is currently private. It can be accessed from within the Soton VPN at:

https://srv03483.soton.ac.uk:8080

The site is still under developement and there may be some broken links.

## Ingestion

This repo should be cloned on to the server. You then need to download the raw data files in csv format and ingest them using 

```Shell
dachs ingest help_a_list/q.rd
```

This can take days or more depending on the size of the tables such that it is often best to run inside a tmux session.

## Resource description creation

In the [./notebooks/](./notebooks/) directory we put Jupyter notebooks to create the resource desciptors for tables based on table meta data.
