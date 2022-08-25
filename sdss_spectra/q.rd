<?xml version="1.0"?>
<resource schema="gama_dr3">
  <meta name="creationDate">2021-01-19T10:46:35Z</meta>
  <meta name="title">GAMA-DR3 Spectra</meta>
  <meta name="description">
    Spectra from the third data release (DR3) of GAMA.
  </meta>
  <meta name="_longdoc" format="rst"><![CDATA[
    GAMA (Galaxy And Mass Assembly) is a joint European-Australasian project
    based on spectroscopic observations using the AAOmega multi-object
    spectrograph on the Anglo-Australian Telescope (AAT).

    This resource contains the spectra from the third data release of GAMA, for
    more information, please visit the GAMA web site [1]_.

    Notes
    =====

    We ingested all the spectra from the *SpecAll.fits* table (*i.e.* not the
    rows with xxx as URL) except 7 files that did not contain actual spectra;
    these are the SDSS spectra with SPECID 318630249967413248, 318630524845320192,
    318715736996472832, 318800674269718528, 340069354064340992, 369430722538137600,
    and 601252573990643712.

    This leads to 214 341 available spectra.

    We also added to the spectra the IS_BEST and IS_SBEST information from the
    `SpecAll.fits` table from the GAMA web site.

    The SSAP response contains this columns: *spectral*, *flux*, *error*,
    *flux_nocalib*, *error_nocalib*, and *sky*.  Nevertheless, not all spectra
    contain all the information, in particular the calibrated flux is not available
    everywhere.

    ACKNOWLEDGEMENTS
    ================

    GAMA is a joint European-Australasian project based around a spectroscopic
    campaign using the Anglo-Australian Telescope. The GAMA input catalogue is
    based on data taken from the Sloan Digital Sky Survey and the UKIRT Infrared
    Deep Sky Survey. Complementary imaging of the GAMA regions is being obtained
    by a number of independent survey programmes including GALEX MIS, VST KiDS,
    VISTA VIKING, WISE, Herschel-ATLAS, GMRT and ASKAP providing UV to radio
    coverage. GAMA is funded by the STFC (UK), the ARC (Australia), the AAO, and
    the participating institutions. The GAMA website is
    http://www.gama-survey.org/ .

    Please also visit the GAMA acknowledgements page [2]_.

    .. [1] http://www.gama-survey.org/
    .. [2] http://www.gama-survey.org/pubs/ack.php

    ]]></meta>
  <meta name="creator">Baldry et al. </meta>
  <meta name="source">2018MNRAS.474.3875B</meta>
  <meta name="contentLevel">Research</meta>

  <meta name="facility">Anglo-Australian Telescope (AAO-AAT)</meta>
  <meta name="instrument">AAOmega</meta>
  <meta name="facility">UK Schmidt Telescope (AAO-UKST)</meta>
  <meta name="instrument">6dF</meta>
  <meta name="facility">Liverpool Telescope</meta>
  <meta name="instrument">FrodoSpec</meta>
  <meta name="facility">SDSS</meta>
  <meta name="instrument">SDSS</meta>
  <meta name="facility">VLT</meta>
  <meta name="instrument">VIMOS</meta>

  <meta name="subject">galaxies</meta>
  <meta name="subject">redshift-surveys</meta>
  <meta name="subject">spectroscopy</meta>

  <meta name="type">Survey</meta>
  <meta name="ssap.dataSource">survey</meta>
  <meta name="ssap.creationType">archival</meta>
  <meta name="productType">spectrum</meta>
  <meta name="ssap.testQuery">MAXREC=1</meta>

  <table id="raw_data" onDisk="True" adql="hidden" namePath="//ssap#instance">
    <!-- the table with your custom metadata; it is transformed
      to something palatable for SSA using the view below -->

    <!-- for an explanation of what columns will be defined in the
    final view, see http://docs.g-vo.org/DaCHS/ref.html#the-ssap-view-mixin.

    Don't mention anything constant here; fill it in in the view
    definition.
    -->
    <LOOP listItems="ssa_dstitle ssa_targname ssa_redshift ssa_specstart ssa_specend
      ssa_length ssa_instrument ssa_fluxcalib ssa_fluxunit">
      <events>
        <column original="\item"/>
      </events>
    </LOOP>

    <mixin>//products#table</mixin>
    <!-- remove this if your data doesn't have (usable) positions -->
    <mixin>//ssap#plainlocation</mixin>

    <column name="specid"
      tablehead="SpecId"
      type="text"
      ucd="meta.id"
      required="True"
      description="Unique ID of the spectrum"
      verbLevel="1" />

    <column name="cataid"
      tablehead="CataId"
      type="bigint"
      ucd="meta.id"
      required="True"
      description="ID of the matched GAMA object"
      verbLevel="1" />

    <column name="is_best"
      tablehead="Is Best"
      type="boolean"
      ucd="meta.code"
      required="True"
      description="Spectrum with best redshift for this object?"
      verbLevel="1" />

    <column name="is_sbest"
      tablehead="Is SBest"
      type="boolean"
      ucd="meta.code"
      required="True"
      description="Spectrum with best redshift for this object in originating survey?"
      verbLevel="1" />

    <!-- the datalink column is mainly useful if you have a form-based
      service.  You can dump this (and the mapping rule filling it below)
      if you're not planning on web or don't care about giving them datalink
      access. -->
    <column name="datalink" type="text"
      ucd="meta.ref.url"
      tablehead="Datalink"
      description="A link to a datalink document for this spectrum."
      verbLevel="15" displayHint="type=url"/>
  </table>

  <data id="import_spectra">
    <recreateAfter>make_view</recreateAfter>
    <sources pattern="data/*/*.fit"/>

    <fitsProdGrammar qnd="True">
      <rowfilter procDef="//products#define">
        <bind name="table">"\schema.raw_data"</bind>
        <bind name="fsize">30000</bind>
        <bind name="datalink">"\rdId#sdl"</bind>
        <bind name="mime">"image/fits"</bind>
        <bind name="preview">
          "/".join(\inputRelativePath.split("/")[:-1]) + "/previews/" + \inputRelativePath.split("/")[-1].replace(".fit", ".png")
        </bind>
        <bind name="preview_mime">"image/png"</bind>
      </rowfilter>
      <sourceFields>
        <setup>
          <code>
            from astropy.io import fits
            from astropy.wcs import FITSFixedWarning,WCS
            import numpy as np
            import warnings

            warnings.simplefilter('ignore', FITSFixedWarning)
          </code>
        </setup>
        <code>
          sp_type = sourceToken.split("/")[-2]
          with fits.open(sourceToken) as hdulist:
              if sp_type == "2dfgrs":
                  wcs = WCS(hdulist[0].header, keysel=["image"])
                  flux = hdulist[0].data[0]
                  spectral = wcs.all_pix2world(np.arange(len(flux)), 0)[0]
                  instrument = "AAOmega"
                  flux_calib = "UNCALIBRATED"
                  flux_unit = ""
              elif sp_type == "2qz":
                  hdulist[0].header["CTYPE1"] = "Wavelength"
                  wcs = WCS(hdulist[0].header)
                  flux = hdulist[0].data
                  spectral = wcs.all_pix2world(np.arange(len(flux)), 0)[0]
                  instrument = "AAOmega"
                  flux_calib = "UNCALIBRATED"
                  flux_unit = ""
              elif sp_type == "2slaq-lrg":
                  wcs = WCS(hdulist[0].header).dropaxis(2).dropaxis(1)
                  flux = hdulist[0].data[0, 0, :]
                  spectral = wcs.all_pix2world(np.arange(len(flux)), 0)[0]
                  instrument = "AAOmega"
                  flux_calib = "UNCALIBRATED"
                  flux_unit = ""
              elif sp_type == "2slaq-qso":
                  wcs = WCS(hdulist[0].header).dropaxis(1)
                  flux = hdulist[0].data
                  spectral = wcs.all_pix2world(np.arange(len(flux)), 0)[0]
                  instrument = "AAOmega"
                  flux_calib = "UNCALIBRATED"
                  flux_unit = ""
              elif sp_type == "wigglez":
                  wcs = WCS(hdulist[0].header).dropaxis(1)
                  flux = hdulist[0].data
                  spectral = wcs.all_pix2world(np.arange(len(flux)), 0)[0]
                  instrument = "AAOmega"
                  flux_calib = "UNCALIBRATED"
                  flux_unit = ""
              elif sp_type == "6dfgs":
                  spectral = hdulist[0].data[3]
                  instrument = "6dF"
                  flux_calib = "UNCALIBRATED"
                  flux_unit = ""
              elif sp_type == "gama":
                  wcs = WCS(hdulist[0].header)
                  wcs = wcs.dropaxis(1)
                  flux = hdulist[0].data[0]
                  spectral = wcs.all_pix2world(np.arange(len(flux)), 0)[0]
                  instrument = "AAOmega"
                  flux_calib = "ABSOLUTE"
                  flux_unit = "1e-17erg.s**-1.cm**-2.Angstrom**-1"
              elif sp_type == "gama_LT":
                  for kw in ['CTYPE', 'CUNIT', 'CRVAL', 'CDELT', 'CRPIX']:
                      hdulist[0].header[f"{kw}1"] = hdulist[0].header[kw]
                  wcs = WCS(hdulist[0].header)
                  flux = hdulist[0].data
                  instrument = "FrodoSpec"
                  flux_calib = "UNCALIBRATED"
                  flux_unit = ""
                  spectral = wcs.all_pix2world(np.arange(len(flux)), 0)[0]
              elif sp_type == "mgc":
                  wcs = WCS(hdulist[0].header).dropaxis(1)
                  flux = hdulist[0].data[0]
                  spectral = wcs.all_pix2world(np.arange(len(flux)), 0)[0]
                  instrument = "AAOmega"
                  flux_calib = "UNCALIBRATED"
                  flux_unit = ""
              elif sp_type == "sdss":
                  wcs = WCS(hdulist[0].header).dropaxis(1)
                  flux = hdulist[0].data[0]
                  # The wavelength is in log
                  spectral = 10**wcs.all_pix2world(np.arange(len(flux)), 0)[0]
                  instrument = "SDSS"
                  flux_calib = "ABSOLUTE"
                  flux_unit = "1e-17erg.s**-1.cm**-2.Angstrom**-1"
              elif sp_type == "vvds":
                  wcs = WCS(hdulist[0].header).dropaxis(1)
                  flux = hdulist[0].data[0]  # * 1e17
                  spectral = wcs.all_pix2world(np.arange(len(flux)), 0)[0]
                  instrument = "VIMOS"
                  flux_calib = "ABSOLUTE"
                  flux_unit = "1e-17erg.s**-1.cm**-2.Angstrom**-1"

          return {
            "spectral_start": spectral[0] * 1e-10,
            "spectral_end": spectral[-1] * 1e-10,
            "spectral_length": len(spectral),
            "instrument": instrument,
            "flux_calib": flux_calib,
            "flux_unit": flux_unit,
          }
        </code>
      </sourceFields>
    </fitsProdGrammar>

    <make table="raw_data">
      <rowmaker idmaps="*">

        <apply procDef="//ssap#fill-plainlocation">
          <bind name="ra">@RA</bind>
          <bind name="dec">@DEC</bind>
        </apply>

        <map key="ssa_dstitle">"Spectrum of {}".format(@GAMANAME)</map>
        <map key="ssa_targname">@GAMANAME</map>
        <map key="cataid">@CATAID</map>
        <map key="specid">@SPECID</map>
        <map key="is_best">@IS_BEST</map>
        <map key="is_sbest">@IS_SBEST</map>
        <map key="ssa_redshift">@Z</map>

        <map key="ssa_specstart">@spectral_start</map>
        <map key="ssa_specend">@spectral_end</map>
        <map key="ssa_length">@spectral_length</map>

        <map key="ssa_instrument">@instrument</map>
        <map key="ssa_fluxcalib">@flux_calib</map>
        <map key="ssa_fluxunit">@flux_unit</map>

        <map key="datalink">\dlMetaURI{sdl}</map>

      </rowmaker>
    </make>
  </data>

  <table id="spectra" onDisk="True" adql="True">
    <!-- the SSA table (on which the service is based -->

    <meta name="_associatedDatalinkService">
      <meta name="serviceId">sdl</meta>
      <meta name="idColumn">ssa_pubDID</meta>
    </meta>

    <mixin
      sourcetable="raw_data"
      copiedcolumns="*"
      ssa_spectralunit="'Angstrom'"
      ssa_bandpass="'Optical,IR'"
      ssa_collection="'GAMA DR3'"
      ssa_fluxucd="'phot.flux.density;em.wl'"
      ssa_fluxunit="'1e-17erg.s**-1.cm**-2.Angstrom**-1'"
      ssa_fluxcalib="'IGNORED'"
      ssa_speccalib="'ABSOLUTE'"
      ssa_spectralucd="'em.wl;obs.atmos'"
      ssa_targclass="'galaxy'"
    >//ssap#view</mixin>

    <mixin
      calibLevel="2"
      sResolution="ssa_spaceres"
      oUCD="ssa_fluxucd"
      emUCD="ssa_spectralucd"
      facilityName="CASE ssa_instrument
      WHEN 'AAOmega' THEN 'Anglo-Australian Telescope (AAO-AAT)'
      WHEN '6dF' THEN 'UK Schmidt Telescope (AAO-UKST)'
      WHEN 'FrodoSpec' THEN 'Liverpool Telescope'
      WHEN 'SDSS'THEN 'SDSS'
      WHEN 'VIMOS' THEN 'VLT'
      END"
      >//obscore#publishSSAPMIXC</mixin>
  </table>

  <data id="make_view" auto="False">
    <make table="spectra"/>
  </data>

  <coverage>
    <updater sourceTable="spectra"/>
  </coverage>

  <!-- This is the table definition *for a single spectrum* as used
    by datalink.  If you have per-bin errors or whatever else, just
    add columns as above. -->
  <table id="instance" onDisk="False">
    <meta name="description">GAMA DR3 spectrum</meta>
    <mixin ssaTable="spectra"
      spectralDescription="Wavelength"
      fluxDescription="Flux-calibrated spectrum">//ssap#sdm-instance</mixin>
    <column name="error"
      tablehead="Error"
      type="double precision"
      ucd="stat.error;phot.flux.density"
      unit = "1e-17erg.s**-1.cm**-2.Angstrom**-1"
      description="1 sigma error spectrum"
      verbLevel="1" />
    <column name="flux_nocalib"
      tablehead="Flux_nocalib"
      type="double precision"
      ucd="phot.flux.density"
      description="Spectrum without flux calibration"
      verbLevel="20" />
    <column name="error_nocalib"
      tablehead="Error_nocalib"
      type="double precision"
      ucd="stat.error;phot.flux.density"
      description="1 sigma error spectrum (no flux calibration)"
      verbLevel="20" />
    <column name="sky"
      tablehead="Sky"
      type="double precision"
      ucd="instr.skyLevel;phot.flux.density"
      description="Sky spectrum (no flux calibration)"
      verbLevel="20" />
  </table>

  <!-- this data item build spectrum *instances* (for datalink) -->
  <data id="build_spectrum">
    <embeddedGrammar>
      <iterator>
        <setup>
          <code>
from gavo.protocols import products
from astropy.io import fits
from astropy.wcs import WCS
import numpy as np
          </code>
        </setup>
        <code>
# we receive a pubDID in self.sourceToken["ssa_pubDID"];
# the physical accref is behind its "?", potentially URL-encoded.

sourcePath = products.RAccref.fromString(
    self.sourceToken["accref"]).localpath
sp_type = sourcePath.split("/")[-2]
<!-- sourcePath = urllib.decode( -->
<!-- self.sourceToken["ssa_pubDID"].split('?', 1)[&#45;1]) -->

with fits.open(sourcePath) as hdulist:
    if sp_type == "2dfgrs":
        wcs = WCS(hdulist[0].header, keysel=["image"])
        flux_nocalib = hdulist[0].data[0]
        spectral = wcs.all_pix2world(np.arange(len(flux_nocalib)), 0)[0]
        error_nocalib = hdulist[0].data[1]
        sky = hdulist[0].data[2]
        flux = np.ones_like(spectral) * np.nan
        error = np.ones_like(spectral) * np.nan
    elif sp_type == "2qz":
        hdulist[0].header["CTYPE1"] = "Wavelength"
        wcs = WCS(hdulist[0].header)
        flux_nocalib = hdulist[0].data
        spectral = wcs.all_pix2world(np.arange(len(flux_nocalib)), 0)[0]
        flux = np.ones_like(spectral) * np.nan
        error = np.ones_like(spectral) * np.nan
        error_nocalib = np.ones_like(spectral) * np.nan
        sky = np.ones_like(spectral) * np.nan
    elif sp_type == "2slaq-lrg":
        wcs = WCS(hdulist[0].header).dropaxis(2).dropaxis(1)
        flux_nocalib = hdulist[0].data[0, 0, :]
        spectral = wcs.all_pix2world(np.arange(len(flux_nocalib)), 0)[0]
        sky = hdulist[0].data[1, 0, :]
        flux = np.ones_like(spectral) * np.nan
        error = np.ones_like(spectral) * np.nan
        error_nocalib = np.ones_like(spectral) * np.nan
    elif sp_type == "2slaq-qso":
        wcs = WCS(hdulist[0].header).dropaxis(1)
        flux_nocalib = hdulist[0].data
        spectral = wcs.all_pix2world(np.arange(len(flux_nocalib)), 0)[0]
        error_nocalib = hdulist[1].data
        flux = np.ones_like(spectral) * np.nan
        error = np.ones_like(spectral) * np.nan
        sky = np.ones_like(spectral) * np.nan
    elif sp_type == "wigglez":
        wcs = WCS(hdulist[0].header).dropaxis(1)
        flux_nocalib = hdulist[0].data
        spectral = wcs.all_pix2world(np.arange(len(flux_nocalib)), 0)[0]
        error_nocalib = hdulist[1].data
        flux = np.ones_like(spectral) * np.nan
        error = np.ones_like(spectral) * np.nan
        sky = np.ones_like(spectral) * np.nan
    elif sp_type == "6dfgs":
        spectral = hdulist[0].data[3]
        flux_nocalib = hdulist[0].data[0]
        error_nocalib = hdulist[0].data[1]
        sky = hdulist[0].data[2]
        flux = np.ones_like(spectral) * np.nan
        error = np.ones_like(spectral) * np.nan
    elif sp_type == "gama":
        wcs = WCS(hdulist[0].header)
        wcs = wcs.dropaxis(1)
        flux = hdulist[0].data[0]
        spectral = wcs.all_pix2world(np.arange(len(flux)), 0)[0]
        error = hdulist[0].data[1]
        flux_nocalib = hdulist[0].data[2]
        error_nocalib = hdulist[0].data[3]
        sky = hdulist[0].data[4]
    elif sp_type == "gama_LT":
        for kw in ['CTYPE', 'CUNIT', 'CRVAL', 'CDELT', 'CRPIX']:
            hdulist[0].header[f"{kw}1"] = hdulist[0].header[kw]
        wcs = WCS(hdulist[0].header)
        flux_nocalib = hdulist[0].data
        spectral = wcs.all_pix2world(np.arange(len(flux_nocalib)), 0)[0]
        flux = np.ones_like(spectral) * np.nan
        error = np.ones_like(spectral) * np.nan
        error_nocalib = np.ones_like(spectral) * np.nan
        sky = np.ones_like(spectral) * np.nan
    elif sp_type == "mgc":
        wcs = WCS(hdulist[0].header).dropaxis(1)
        flux_nocalib = hdulist[0].data[0]
        spectral = wcs.all_pix2world(np.arange(len(flux_nocalib)), 0)[0]
        error_nocalib = hdulist[0].data[1]
        sky = hdulist[0].data[2]
        flux = np.ones_like(spectral) * np.nan
        error = np.ones_like(spectral) * np.nan
    elif sp_type == "sdss":
        wcs = WCS(hdulist[0].header).dropaxis(1)
        flux = hdulist[0].data[0]
        # The wavelength is in log
        spectral = 10**wcs.all_pix2world(np.arange(len(flux)), 0)[0]
        error = hdulist[0].data[1]
        sky = hdulist[0].data[2]
        flux_nocalib = np.ones_like(spectral) * np.nan
        error_nocalib = np.ones_like(spectral) * np.nan
    elif sp_type == "vvds":
        wcs = WCS(hdulist[0].header).dropaxis(1)
        # Fluxes are in erg... we want to send 1e-17erg...
        flux = hdulist[0].data[0] * 1e17
        spectral = wcs.all_pix2world(np.arange(len(flux)), 0)[0]
        error = hdulist[0].data[1] * 1e17
        sky = hdulist[0].data[2]  # Sky is uncalibrated
        flux_nocalib = np.ones_like(spectral) * np.nan
        error_nocalib = np.ones_like(spectral) * np.nan

    for row in zip(spectral, flux, error, flux_nocalib, error_nocalib, sky):
        yield dict(zip(["spectral", "flux", "error", "flux_nocalib", "error_nocalib", "sky"], row))
        </code>
      </iterator>
    </embeddedGrammar>
    <make table="instance">
      <parmaker>
        <apply procDef="//ssap#feedSSAToSDM"/>
      </parmaker>
    </make>
  </data>

  <!-- the datalink service spitting out SDM spectra (and other formats
    on request) -->
  <service id="sdl" allowed="dlget,dlmeta">
    <meta name="title">GAMA DR3 Datalink Service</meta>
    <datalinkCore>
      <descriptorGenerator procDef="//soda#sdm_genDesc">
        <bind name="ssaTD">"\rdId#spectra"</bind>
      </descriptorGenerator>
      <dataFunction procDef="//soda#sdm_genData">
        <bind name="builder">"\rdId#build_spectrum"</bind>
      </dataFunction>
      <FEED source="//soda#sdm_plainfluxcalib"/>
      <FEED source="//soda#sdm_cutout"/>
      <FEED source="//soda#sdm_format"/>
    </datalinkCore>
  </service>

  <!-- a form-based service – this is made totally separate from the
    SSA part because grinding down SSA to something human-consumable and
    still working as SSA is non-trivial -->
  <service id="web" defaultRenderer="form">
    <meta name="title">GAMA DR3 spectra</meta>
    <meta name="identifier">ivo://lam.cesam.aspic/\schema/q/web</meta>
    <dbCore queriedTable="spectra">
      <condDesc buildFrom="ssa_location"/>
      <condDesc buildFrom="ssa_redshift"/>
      <condDesc buildFrom="ssa_targname"/>
      <condDesc buildFrom="cataid"/>
      <condDesc buildFrom="specid"/>
      <!-- <condDesc buildFrom="ssa_dateObs"/> -->
      <!-- add further condDescs in this pattern; if you have useful target
        names, you'll probably want to index them and say:

      <condDesc>
      <inputKey original="data.ssa_targname" tablehead="Standard Stars">
      <values fromdb="ssa_targname from theossa.data
      order by ssa_targname"/>
      </inputKey>
      </condDesc> -->
    </dbCore>
    <outputTable>
      <autoCols>accref, mime, ssa_targname, specid, cataid, is_best, datalink</autoCols>
      <FEED source="//ssap#atomicCoords"/>
      <outputField original="ssa_specstart" displayHint="displayUnit=Angstrom"/>
      <outputField original="ssa_specend" displayHint="displayUnit=Angstrom"/>
    </outputTable>
  </service>

  <service id="ssa" allowed="ssap.xml">
    <meta name="title">GAMA DR3 spectra</meta>
    <meta name="shortName">GAMA3 SSAP</meta>
    <meta name="identifier">ivo://lam.cesam.aspic/\schema/q/ssa</meta>
    <meta name="ssap.dataSource">survey</meta>
    <meta name="ssap.creationType">archival</meta>
    <meta name="ssap.testQuery">MAXREC=1</meta>
    <meta name="ssap.complianceLevel">full</meta>
    <publish render="ssap.xml" sets="ivo_managed"/>
    <publish render="form" sets="ivo_managed,local" service="web"/>
    <ssapCore queriedTable="spectra">
      <FEED source="//ssap#hcd_condDescs"/>
    </ssapCore>
  </service>

</resource>
