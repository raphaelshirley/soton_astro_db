
<resource schema="lsst_ir_fusion">
    <meta name="title">
        LSST IR fusion catalogue
    </meta>
    <meta name="creationDate">
        2022-07-28T16:03:13.453
    </meta>
    <meta name="description">
        A first gen 2 SXDS run with reduced column set to test the Soton VO.
    </meta>
    <meta name="creator.name">
        Shirley, R.; et al
    </meta>
    <meta name="subject">
        Catalogs
    </meta>
    <meta name="subject">
        Galaxies
    </meta>
    <meta name="coverage">
        <meta name="profile">
            AllSky ICRS
        </meta>
        <meta name="waveband">
            Optical
        </meta>
        <meta name="waveband">
            Infrared
        </meta>
    </meta>
    <meta name="_longdoc" format="rst">
        <![CDATA[
        This resource contains the A list catalogue from the Herschel Extragalactic
        Legacy Project (HELP). These are all objects which have an XID+ flux.

        History
        -------

        ========== ============================================
        2022-07-28 First SXDS test VO ingestion
        ========== ============================================
        ]]>
    </meta>
    <meta name="source">
    </meta>
    <meta name="_intro" format="rst">
        <![CDATA[
        For advanced queries on this catalogue use ADQL_
        possibly via TAP_

        .. _ADQL: /adql
        .. _TAP: /tap
        ]]>
    </meta>
    <table id="main" onDisk="True" adql="True" mixin="//scs#q3cindex" primary="help_id">
        <stc>
            Position ICRS Epoch J2000.0 "ra" "dec"
        </stc>
        <index columns="id">
            <FEED source="%#fastindex" />
        </index>
        <index columns="ra">
            <FEED source="%#fastindex" />
        </index>
        <index columns="dec">
            <FEED source="%#fastindex" />
        </index>

        <column 
            name="id" 
            tablehead="id" 
            type="bigint" 
            ucd="" 
            unit="None"
            description="unique ID" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_Z_m_slot_ModelFlux_magErr" 
            tablehead="VISTA_Z_m_slot_ModelFlux_magErr" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="flux from the final cmodel fit" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_Z_m_slot_ModelFlux_mag" 
            tablehead="VISTA_Z_m_slot_ModelFlux_mag" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="flux from the final cmodel fit" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_Z_m_slot_ModelFlux_fluxErr" 
            tablehead="VISTA_Z_m_slot_ModelFlux_fluxErr" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux from the final cmodel fit" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_Z_m_slot_ModelFlux_flux" 
            tablehead="VISTA_Z_m_slot_ModelFlux_flux" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux from the final cmodel fit" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_Z_m_slot_ModelFlux_flag" 
            tablehead="VISTA_Z_m_slot_ModelFlux_flag" 
            type="bigint" 
            ucd="" 
            unit="None"
            description="flag set if the final cmodel fit (or any previous fit) failed" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_Z_m_base_PsfFlux_magErr" 
            tablehead="VISTA_Z_m_base_PsfFlux_magErr" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="mag derived from linear least-squares fit of PSF model" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_Z_m_base_PsfFlux_mag" 
            tablehead="VISTA_Z_m_base_PsfFlux_mag" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="mag derived from linear least-squares fit of PSF model" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_Z_m_base_PsfFlux_fluxErr" 
            tablehead="VISTA_Z_m_base_PsfFlux_fluxErr" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux derived from linear least-squares fit of PSF model" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_Z_m_base_PsfFlux_flux" 
            tablehead="VISTA_Z_m_base_PsfFlux_flux" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux derived from linear least-squares fit of PSF model" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_Z_m_base_PsfFlux_flag" 
            tablehead="VISTA_Z_m_base_PsfFlux_flag" 
            type="bigint" 
            ucd="" 
            unit="None"
            description="General Failure Flag" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_Z_m_base_CircularApertureFlux_6_0_magErr" 
            tablehead="VISTA_Z_m_base_CircularApertureFlux_6_0_magErr" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="mag within 6.000000-pixel aperture" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_Z_m_base_CircularApertureFlux_6_0_mag" 
            tablehead="VISTA_Z_m_base_CircularApertureFlux_6_0_mag" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="mag within 6.000000-pixel aperture" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_Z_m_base_CircularApertureFlux_6_0_fluxErr" 
            tablehead="VISTA_Z_m_base_CircularApertureFlux_6_0_fluxErr" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux within 6.000000-pixel aperture" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_Z_m_base_CircularApertureFlux_6_0_flux" 
            tablehead="VISTA_Z_m_base_CircularApertureFlux_6_0_flux" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux within 6.000000-pixel aperture" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_Z_m_base_CircularApertureFlux_6_0_flag" 
            tablehead="VISTA_Z_m_base_CircularApertureFlux_6_0_flag" 
            type="bigint" 
            ucd="" 
            unit="None"
            description="General Failure Flag" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_Y_m_slot_ModelFlux_magErr" 
            tablehead="VISTA_Y_m_slot_ModelFlux_magErr" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="flux from the final cmodel fit" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_Y_m_slot_ModelFlux_mag" 
            tablehead="VISTA_Y_m_slot_ModelFlux_mag" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="flux from the final cmodel fit" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_Y_m_slot_ModelFlux_fluxErr" 
            tablehead="VISTA_Y_m_slot_ModelFlux_fluxErr" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux from the final cmodel fit" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_Y_m_slot_ModelFlux_flux" 
            tablehead="VISTA_Y_m_slot_ModelFlux_flux" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux from the final cmodel fit" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_Y_m_slot_ModelFlux_flag" 
            tablehead="VISTA_Y_m_slot_ModelFlux_flag" 
            type="bigint" 
            ucd="" 
            unit="None"
            description="flag set if the final cmodel fit (or any previous fit) failed" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_Y_m_base_PsfFlux_magErr" 
            tablehead="VISTA_Y_m_base_PsfFlux_magErr" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="mag derived from linear least-squares fit of PSF model" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_Y_m_base_PsfFlux_mag" 
            tablehead="VISTA_Y_m_base_PsfFlux_mag" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="mag derived from linear least-squares fit of PSF model" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_Y_m_base_PsfFlux_fluxErr" 
            tablehead="VISTA_Y_m_base_PsfFlux_fluxErr" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux derived from linear least-squares fit of PSF model" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_Y_m_base_PsfFlux_flux" 
            tablehead="VISTA_Y_m_base_PsfFlux_flux" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux derived from linear least-squares fit of PSF model" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_Y_m_base_PsfFlux_flag" 
            tablehead="VISTA_Y_m_base_PsfFlux_flag" 
            type="bigint" 
            ucd="" 
            unit="None"
            description="General Failure Flag" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_Y_m_base_CircularApertureFlux_6_0_magErr" 
            tablehead="VISTA_Y_m_base_CircularApertureFlux_6_0_magErr" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="mag within 6.000000-pixel aperture" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_Y_m_base_CircularApertureFlux_6_0_mag" 
            tablehead="VISTA_Y_m_base_CircularApertureFlux_6_0_mag" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="mag within 6.000000-pixel aperture" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_Y_m_base_CircularApertureFlux_6_0_fluxErr" 
            tablehead="VISTA_Y_m_base_CircularApertureFlux_6_0_fluxErr" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux within 6.000000-pixel aperture" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_Y_m_base_CircularApertureFlux_6_0_flux" 
            tablehead="VISTA_Y_m_base_CircularApertureFlux_6_0_flux" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux within 6.000000-pixel aperture" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_Y_m_base_CircularApertureFlux_6_0_flag" 
            tablehead="VISTA_Y_m_base_CircularApertureFlux_6_0_flag" 
            type="bigint" 
            ucd="" 
            unit="None"
            description="General Failure Flag" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_Ks_m_slot_ModelFlux_magErr" 
            tablehead="VISTA_Ks_m_slot_ModelFlux_magErr" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="flux from the final cmodel fit" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_Ks_m_slot_ModelFlux_mag" 
            tablehead="VISTA_Ks_m_slot_ModelFlux_mag" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="flux from the final cmodel fit" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_Ks_m_slot_ModelFlux_fluxErr" 
            tablehead="VISTA_Ks_m_slot_ModelFlux_fluxErr" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux from the final cmodel fit" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_Ks_m_slot_ModelFlux_flux" 
            tablehead="VISTA_Ks_m_slot_ModelFlux_flux" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux from the final cmodel fit" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_Ks_m_slot_ModelFlux_flag" 
            tablehead="VISTA_Ks_m_slot_ModelFlux_flag" 
            type="bigint" 
            ucd="" 
            unit="None"
            description="flag set if the final cmodel fit (or any previous fit) failed" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_Ks_m_merge_peak_sky" 
            tablehead="VISTA_Ks_m_merge_peak_sky" 
            type="bigint" 
            ucd="" 
            unit="None"
            description="Peak detected in filter sky" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_Ks_m_detect_isTractInner" 
            tablehead="VISTA_Ks_m_detect_isTractInner" 
            type="bigint" 
            ucd="" 
            unit="None"
            description="true if source is in the inner region of a coadd tract" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_Ks_m_detect_isPrimary" 
            tablehead="VISTA_Ks_m_detect_isPrimary" 
            type="bigint" 
            ucd="" 
            unit="None"
            description="true if source has no children and is in the inner region of a coadd patch and is in the inner region of a coadd tract and is not detected in a pseudo-filter (see config.pseudoFilterList)" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_Ks_m_detect_isPatchInner" 
            tablehead="VISTA_Ks_m_detect_isPatchInner" 
            type="bigint" 
            ucd="" 
            unit="None"
            description="true if source is in the inner region of a coadd patch" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_Ks_m_deblend_nChild" 
            tablehead="VISTA_Ks_m_deblend_nChild" 
            type="bigint" 
            ucd="" 
            unit="None"
            description="Number of children this object has (defaults to 0)" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_Ks_m_coord_ra" 
            tablehead="VISTA_Ks_m_coord_ra" 
            type="single precision" 
            ucd="" 
            unit="deg"
            description="None" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_Ks_m_coord_dec" 
            tablehead="VISTA_Ks_m_coord_dec" 
            type="single precision" 
            ucd="" 
            unit="deg"
            description="position in ra/dec" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_Ks_m_base_PsfFlux_magErr" 
            tablehead="VISTA_Ks_m_base_PsfFlux_magErr" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="mag derived from linear least-squares fit of PSF model" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_Ks_m_base_PsfFlux_mag" 
            tablehead="VISTA_Ks_m_base_PsfFlux_mag" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="mag derived from linear least-squares fit of PSF model" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_Ks_m_base_PsfFlux_fluxErr" 
            tablehead="VISTA_Ks_m_base_PsfFlux_fluxErr" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux derived from linear least-squares fit of PSF model" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_Ks_m_base_PsfFlux_flux" 
            tablehead="VISTA_Ks_m_base_PsfFlux_flux" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux derived from linear least-squares fit of PSF model" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_Ks_m_base_PsfFlux_flag" 
            tablehead="VISTA_Ks_m_base_PsfFlux_flag" 
            type="bigint" 
            ucd="" 
            unit="None"
            description="General Failure Flag" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_Ks_m_base_ClassificationExtendedness_value" 
            tablehead="VISTA_Ks_m_base_ClassificationExtendedness_value" 
            type="single precision" 
            ucd="" 
            unit="None"
            description="Set to 1 for extended sources, 0 for point sources." 
            verbLevel="1" 
            />

        <column 
            name="VISTA_Ks_m_base_ClassificationExtendedness_flag" 
            tablehead="VISTA_Ks_m_base_ClassificationExtendedness_flag" 
            type="bigint" 
            ucd="" 
            unit="None"
            description="Set to 1 for any fatal failure." 
            verbLevel="1" 
            />

        <column 
            name="VISTA_Ks_m_base_CircularApertureFlux_6_0_magErr" 
            tablehead="VISTA_Ks_m_base_CircularApertureFlux_6_0_magErr" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="mag within 6.000000-pixel aperture" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_Ks_m_base_CircularApertureFlux_6_0_mag" 
            tablehead="VISTA_Ks_m_base_CircularApertureFlux_6_0_mag" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="mag within 6.000000-pixel aperture" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_Ks_m_base_CircularApertureFlux_6_0_fluxErr" 
            tablehead="VISTA_Ks_m_base_CircularApertureFlux_6_0_fluxErr" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux within 6.000000-pixel aperture" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_Ks_m_base_CircularApertureFlux_6_0_flux" 
            tablehead="VISTA_Ks_m_base_CircularApertureFlux_6_0_flux" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux within 6.000000-pixel aperture" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_Ks_m_base_CircularApertureFlux_6_0_flag" 
            tablehead="VISTA_Ks_m_base_CircularApertureFlux_6_0_flag" 
            type="bigint" 
            ucd="" 
            unit="None"
            description="General Failure Flag" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_J_m_slot_ModelFlux_magErr" 
            tablehead="VISTA_J_m_slot_ModelFlux_magErr" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="flux from the final cmodel fit" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_J_m_slot_ModelFlux_mag" 
            tablehead="VISTA_J_m_slot_ModelFlux_mag" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="flux from the final cmodel fit" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_J_m_slot_ModelFlux_fluxErr" 
            tablehead="VISTA_J_m_slot_ModelFlux_fluxErr" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux from the final cmodel fit" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_J_m_slot_ModelFlux_flux" 
            tablehead="VISTA_J_m_slot_ModelFlux_flux" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux from the final cmodel fit" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_J_m_slot_ModelFlux_flag" 
            tablehead="VISTA_J_m_slot_ModelFlux_flag" 
            type="bigint" 
            ucd="" 
            unit="None"
            description="flag set if the final cmodel fit (or any previous fit) failed" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_J_m_base_PsfFlux_magErr" 
            tablehead="VISTA_J_m_base_PsfFlux_magErr" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="mag derived from linear least-squares fit of PSF model" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_J_m_base_PsfFlux_mag" 
            tablehead="VISTA_J_m_base_PsfFlux_mag" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="mag derived from linear least-squares fit of PSF model" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_J_m_base_PsfFlux_fluxErr" 
            tablehead="VISTA_J_m_base_PsfFlux_fluxErr" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux derived from linear least-squares fit of PSF model" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_J_m_base_PsfFlux_flux" 
            tablehead="VISTA_J_m_base_PsfFlux_flux" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux derived from linear least-squares fit of PSF model" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_J_m_base_PsfFlux_flag" 
            tablehead="VISTA_J_m_base_PsfFlux_flag" 
            type="bigint" 
            ucd="" 
            unit="None"
            description="General Failure Flag" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_J_m_base_CircularApertureFlux_6_0_magErr" 
            tablehead="VISTA_J_m_base_CircularApertureFlux_6_0_magErr" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="mag within 6.000000-pixel aperture" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_J_m_base_CircularApertureFlux_6_0_mag" 
            tablehead="VISTA_J_m_base_CircularApertureFlux_6_0_mag" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="mag within 6.000000-pixel aperture" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_J_m_base_CircularApertureFlux_6_0_fluxErr" 
            tablehead="VISTA_J_m_base_CircularApertureFlux_6_0_fluxErr" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux within 6.000000-pixel aperture" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_J_m_base_CircularApertureFlux_6_0_flux" 
            tablehead="VISTA_J_m_base_CircularApertureFlux_6_0_flux" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux within 6.000000-pixel aperture" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_J_m_base_CircularApertureFlux_6_0_flag" 
            tablehead="VISTA_J_m_base_CircularApertureFlux_6_0_flag" 
            type="bigint" 
            ucd="" 
            unit="None"
            description="General Failure Flag" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_H_m_slot_ModelFlux_magErr" 
            tablehead="VISTA_H_m_slot_ModelFlux_magErr" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="flux from the final cmodel fit" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_H_m_slot_ModelFlux_mag" 
            tablehead="VISTA_H_m_slot_ModelFlux_mag" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="flux from the final cmodel fit" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_H_m_slot_ModelFlux_fluxErr" 
            tablehead="VISTA_H_m_slot_ModelFlux_fluxErr" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux from the final cmodel fit" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_H_m_slot_ModelFlux_flux" 
            tablehead="VISTA_H_m_slot_ModelFlux_flux" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux from the final cmodel fit" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_H_m_slot_ModelFlux_flag" 
            tablehead="VISTA_H_m_slot_ModelFlux_flag" 
            type="bigint" 
            ucd="" 
            unit="None"
            description="flag set if the final cmodel fit (or any previous fit) failed" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_H_m_base_PsfFlux_magErr" 
            tablehead="VISTA_H_m_base_PsfFlux_magErr" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="mag derived from linear least-squares fit of PSF model" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_H_m_base_PsfFlux_mag" 
            tablehead="VISTA_H_m_base_PsfFlux_mag" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="mag derived from linear least-squares fit of PSF model" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_H_m_base_PsfFlux_fluxErr" 
            tablehead="VISTA_H_m_base_PsfFlux_fluxErr" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux derived from linear least-squares fit of PSF model" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_H_m_base_PsfFlux_flux" 
            tablehead="VISTA_H_m_base_PsfFlux_flux" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux derived from linear least-squares fit of PSF model" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_H_m_base_PsfFlux_flag" 
            tablehead="VISTA_H_m_base_PsfFlux_flag" 
            type="bigint" 
            ucd="" 
            unit="None"
            description="General Failure Flag" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_H_m_base_CircularApertureFlux_6_0_magErr" 
            tablehead="VISTA_H_m_base_CircularApertureFlux_6_0_magErr" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="mag within 6.000000-pixel aperture" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_H_m_base_CircularApertureFlux_6_0_mag" 
            tablehead="VISTA_H_m_base_CircularApertureFlux_6_0_mag" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="mag within 6.000000-pixel aperture" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_H_m_base_CircularApertureFlux_6_0_fluxErr" 
            tablehead="VISTA_H_m_base_CircularApertureFlux_6_0_fluxErr" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux within 6.000000-pixel aperture" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_H_m_base_CircularApertureFlux_6_0_flux" 
            tablehead="VISTA_H_m_base_CircularApertureFlux_6_0_flux" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux within 6.000000-pixel aperture" 
            verbLevel="1" 
            />

        <column 
            name="VISTA_H_m_base_CircularApertureFlux_6_0_flag" 
            tablehead="VISTA_H_m_base_CircularApertureFlux_6_0_flag" 
            type="bigint" 
            ucd="" 
            unit="None"
            description="General Failure Flag" 
            verbLevel="1" 
            />

        <column 
            name="HSC_Z_m_slot_ModelFlux_magErr" 
            tablehead="HSC_Z_m_slot_ModelFlux_magErr" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="flux from the final cmodel fit" 
            verbLevel="1" 
            />

        <column 
            name="HSC_Z_m_slot_ModelFlux_mag" 
            tablehead="HSC_Z_m_slot_ModelFlux_mag" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="flux from the final cmodel fit" 
            verbLevel="1" 
            />

        <column 
            name="HSC_Z_m_slot_ModelFlux_fluxErr" 
            tablehead="HSC_Z_m_slot_ModelFlux_fluxErr" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux from the final cmodel fit" 
            verbLevel="1" 
            />

        <column 
            name="HSC_Z_m_slot_ModelFlux_flux" 
            tablehead="HSC_Z_m_slot_ModelFlux_flux" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux from the final cmodel fit" 
            verbLevel="1" 
            />

        <column 
            name="HSC_Z_m_slot_ModelFlux_flag" 
            tablehead="HSC_Z_m_slot_ModelFlux_flag" 
            type="bigint" 
            ucd="" 
            unit="None"
            description="flag set if the final cmodel fit (or any previous fit) failed" 
            verbLevel="1" 
            />

        <column 
            name="HSC_Z_m_base_PsfFlux_magErr" 
            tablehead="HSC_Z_m_base_PsfFlux_magErr" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="mag derived from linear least-squares fit of PSF model" 
            verbLevel="1" 
            />

        <column 
            name="HSC_Z_m_base_PsfFlux_mag" 
            tablehead="HSC_Z_m_base_PsfFlux_mag" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="mag derived from linear least-squares fit of PSF model" 
            verbLevel="1" 
            />

        <column 
            name="HSC_Z_m_base_PsfFlux_fluxErr" 
            tablehead="HSC_Z_m_base_PsfFlux_fluxErr" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux derived from linear least-squares fit of PSF model" 
            verbLevel="1" 
            />

        <column 
            name="HSC_Z_m_base_PsfFlux_flux" 
            tablehead="HSC_Z_m_base_PsfFlux_flux" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux derived from linear least-squares fit of PSF model" 
            verbLevel="1" 
            />

        <column 
            name="HSC_Z_m_base_PsfFlux_flag" 
            tablehead="HSC_Z_m_base_PsfFlux_flag" 
            type="bigint" 
            ucd="" 
            unit="None"
            description="General Failure Flag" 
            verbLevel="1" 
            />

        <column 
            name="HSC_Z_m_base_CircularApertureFlux_6_0_magErr" 
            tablehead="HSC_Z_m_base_CircularApertureFlux_6_0_magErr" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="mag within 6.000000-pixel aperture" 
            verbLevel="1" 
            />

        <column 
            name="HSC_Z_m_base_CircularApertureFlux_6_0_mag" 
            tablehead="HSC_Z_m_base_CircularApertureFlux_6_0_mag" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="mag within 6.000000-pixel aperture" 
            verbLevel="1" 
            />

        <column 
            name="HSC_Z_m_base_CircularApertureFlux_6_0_fluxErr" 
            tablehead="HSC_Z_m_base_CircularApertureFlux_6_0_fluxErr" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux within 6.000000-pixel aperture" 
            verbLevel="1" 
            />

        <column 
            name="HSC_Z_m_base_CircularApertureFlux_6_0_flux" 
            tablehead="HSC_Z_m_base_CircularApertureFlux_6_0_flux" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux within 6.000000-pixel aperture" 
            verbLevel="1" 
            />

        <column 
            name="HSC_Z_m_base_CircularApertureFlux_6_0_flag" 
            tablehead="HSC_Z_m_base_CircularApertureFlux_6_0_flag" 
            type="bigint" 
            ucd="" 
            unit="None"
            description="General Failure Flag" 
            verbLevel="1" 
            />

        <column 
            name="HSC_Y_m_slot_ModelFlux_magErr" 
            tablehead="HSC_Y_m_slot_ModelFlux_magErr" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="flux from the final cmodel fit" 
            verbLevel="1" 
            />

        <column 
            name="HSC_Y_m_slot_ModelFlux_mag" 
            tablehead="HSC_Y_m_slot_ModelFlux_mag" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="flux from the final cmodel fit" 
            verbLevel="1" 
            />

        <column 
            name="HSC_Y_m_slot_ModelFlux_fluxErr" 
            tablehead="HSC_Y_m_slot_ModelFlux_fluxErr" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux from the final cmodel fit" 
            verbLevel="1" 
            />

        <column 
            name="HSC_Y_m_slot_ModelFlux_flux" 
            tablehead="HSC_Y_m_slot_ModelFlux_flux" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux from the final cmodel fit" 
            verbLevel="1" 
            />

        <column 
            name="HSC_Y_m_slot_ModelFlux_flag" 
            tablehead="HSC_Y_m_slot_ModelFlux_flag" 
            type="bigint" 
            ucd="" 
            unit="None"
            description="flag set if the final cmodel fit (or any previous fit) failed" 
            verbLevel="1" 
            />

        <column 
            name="HSC_Y_m_base_PsfFlux_magErr" 
            tablehead="HSC_Y_m_base_PsfFlux_magErr" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="mag derived from linear least-squares fit of PSF model" 
            verbLevel="1" 
            />

        <column 
            name="HSC_Y_m_base_PsfFlux_mag" 
            tablehead="HSC_Y_m_base_PsfFlux_mag" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="mag derived from linear least-squares fit of PSF model" 
            verbLevel="1" 
            />

        <column 
            name="HSC_Y_m_base_PsfFlux_fluxErr" 
            tablehead="HSC_Y_m_base_PsfFlux_fluxErr" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux derived from linear least-squares fit of PSF model" 
            verbLevel="1" 
            />

        <column 
            name="HSC_Y_m_base_PsfFlux_flux" 
            tablehead="HSC_Y_m_base_PsfFlux_flux" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux derived from linear least-squares fit of PSF model" 
            verbLevel="1" 
            />

        <column 
            name="HSC_Y_m_base_PsfFlux_flag" 
            tablehead="HSC_Y_m_base_PsfFlux_flag" 
            type="bigint" 
            ucd="" 
            unit="None"
            description="General Failure Flag" 
            verbLevel="1" 
            />

        <column 
            name="HSC_Y_m_base_CircularApertureFlux_6_0_magErr" 
            tablehead="HSC_Y_m_base_CircularApertureFlux_6_0_magErr" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="mag within 6.000000-pixel aperture" 
            verbLevel="1" 
            />

        <column 
            name="HSC_Y_m_base_CircularApertureFlux_6_0_mag" 
            tablehead="HSC_Y_m_base_CircularApertureFlux_6_0_mag" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="mag within 6.000000-pixel aperture" 
            verbLevel="1" 
            />

        <column 
            name="HSC_Y_m_base_CircularApertureFlux_6_0_fluxErr" 
            tablehead="HSC_Y_m_base_CircularApertureFlux_6_0_fluxErr" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux within 6.000000-pixel aperture" 
            verbLevel="1" 
            />

        <column 
            name="HSC_Y_m_base_CircularApertureFlux_6_0_flux" 
            tablehead="HSC_Y_m_base_CircularApertureFlux_6_0_flux" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux within 6.000000-pixel aperture" 
            verbLevel="1" 
            />

        <column 
            name="HSC_Y_m_base_CircularApertureFlux_6_0_flag" 
            tablehead="HSC_Y_m_base_CircularApertureFlux_6_0_flag" 
            type="bigint" 
            ucd="" 
            unit="None"
            description="General Failure Flag" 
            verbLevel="1" 
            />

        <column 
            name="HSC_R_m_slot_ModelFlux_magErr" 
            tablehead="HSC_R_m_slot_ModelFlux_magErr" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="flux from the final cmodel fit" 
            verbLevel="1" 
            />

        <column 
            name="HSC_R_m_slot_ModelFlux_mag" 
            tablehead="HSC_R_m_slot_ModelFlux_mag" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="flux from the final cmodel fit" 
            verbLevel="1" 
            />

        <column 
            name="HSC_R_m_slot_ModelFlux_fluxErr" 
            tablehead="HSC_R_m_slot_ModelFlux_fluxErr" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux from the final cmodel fit" 
            verbLevel="1" 
            />

        <column 
            name="HSC_R_m_slot_ModelFlux_flux" 
            tablehead="HSC_R_m_slot_ModelFlux_flux" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux from the final cmodel fit" 
            verbLevel="1" 
            />

        <column 
            name="HSC_R_m_slot_ModelFlux_flag" 
            tablehead="HSC_R_m_slot_ModelFlux_flag" 
            type="bigint" 
            ucd="" 
            unit="None"
            description="flag set if the final cmodel fit (or any previous fit) failed" 
            verbLevel="1" 
            />

        <column 
            name="HSC_R_m_base_PsfFlux_magErr" 
            tablehead="HSC_R_m_base_PsfFlux_magErr" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="mag derived from linear least-squares fit of PSF model" 
            verbLevel="1" 
            />

        <column 
            name="HSC_R_m_base_PsfFlux_mag" 
            tablehead="HSC_R_m_base_PsfFlux_mag" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="mag derived from linear least-squares fit of PSF model" 
            verbLevel="1" 
            />

        <column 
            name="HSC_R_m_base_PsfFlux_fluxErr" 
            tablehead="HSC_R_m_base_PsfFlux_fluxErr" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux derived from linear least-squares fit of PSF model" 
            verbLevel="1" 
            />

        <column 
            name="HSC_R_m_base_PsfFlux_flux" 
            tablehead="HSC_R_m_base_PsfFlux_flux" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux derived from linear least-squares fit of PSF model" 
            verbLevel="1" 
            />

        <column 
            name="HSC_R_m_base_PsfFlux_flag" 
            tablehead="HSC_R_m_base_PsfFlux_flag" 
            type="bigint" 
            ucd="" 
            unit="None"
            description="General Failure Flag" 
            verbLevel="1" 
            />

        <column 
            name="HSC_R_m_base_CircularApertureFlux_6_0_magErr" 
            tablehead="HSC_R_m_base_CircularApertureFlux_6_0_magErr" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="mag within 6.000000-pixel aperture" 
            verbLevel="1" 
            />

        <column 
            name="HSC_R_m_base_CircularApertureFlux_6_0_mag" 
            tablehead="HSC_R_m_base_CircularApertureFlux_6_0_mag" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="mag within 6.000000-pixel aperture" 
            verbLevel="1" 
            />

        <column 
            name="HSC_R_m_base_CircularApertureFlux_6_0_fluxErr" 
            tablehead="HSC_R_m_base_CircularApertureFlux_6_0_fluxErr" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux within 6.000000-pixel aperture" 
            verbLevel="1" 
            />

        <column 
            name="HSC_R_m_base_CircularApertureFlux_6_0_flux" 
            tablehead="HSC_R_m_base_CircularApertureFlux_6_0_flux" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux within 6.000000-pixel aperture" 
            verbLevel="1" 
            />

        <column 
            name="HSC_R_m_base_CircularApertureFlux_6_0_flag" 
            tablehead="HSC_R_m_base_CircularApertureFlux_6_0_flag" 
            type="bigint" 
            ucd="" 
            unit="None"
            description="General Failure Flag" 
            verbLevel="1" 
            />

        <column 
            name="HSC_I_m_slot_ModelFlux_magErr" 
            tablehead="HSC_I_m_slot_ModelFlux_magErr" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="flux from the final cmodel fit" 
            verbLevel="1" 
            />

        <column 
            name="HSC_I_m_slot_ModelFlux_mag" 
            tablehead="HSC_I_m_slot_ModelFlux_mag" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="flux from the final cmodel fit" 
            verbLevel="1" 
            />

        <column 
            name="HSC_I_m_slot_ModelFlux_fluxErr" 
            tablehead="HSC_I_m_slot_ModelFlux_fluxErr" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux from the final cmodel fit" 
            verbLevel="1" 
            />

        <column 
            name="HSC_I_m_slot_ModelFlux_flux" 
            tablehead="HSC_I_m_slot_ModelFlux_flux" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux from the final cmodel fit" 
            verbLevel="1" 
            />

        <column 
            name="HSC_I_m_slot_ModelFlux_flag" 
            tablehead="HSC_I_m_slot_ModelFlux_flag" 
            type="bigint" 
            ucd="" 
            unit="None"
            description="flag set if the final cmodel fit (or any previous fit) failed" 
            verbLevel="1" 
            />

        <column 
            name="HSC_I_m_base_PsfFlux_magErr" 
            tablehead="HSC_I_m_base_PsfFlux_magErr" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="mag derived from linear least-squares fit of PSF model" 
            verbLevel="1" 
            />

        <column 
            name="HSC_I_m_base_PsfFlux_mag" 
            tablehead="HSC_I_m_base_PsfFlux_mag" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="mag derived from linear least-squares fit of PSF model" 
            verbLevel="1" 
            />

        <column 
            name="HSC_I_m_base_PsfFlux_fluxErr" 
            tablehead="HSC_I_m_base_PsfFlux_fluxErr" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux derived from linear least-squares fit of PSF model" 
            verbLevel="1" 
            />

        <column 
            name="HSC_I_m_base_PsfFlux_flux" 
            tablehead="HSC_I_m_base_PsfFlux_flux" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux derived from linear least-squares fit of PSF model" 
            verbLevel="1" 
            />

        <column 
            name="HSC_I_m_base_PsfFlux_flag" 
            tablehead="HSC_I_m_base_PsfFlux_flag" 
            type="bigint" 
            ucd="" 
            unit="None"
            description="General Failure Flag" 
            verbLevel="1" 
            />

        <column 
            name="HSC_I_m_base_CircularApertureFlux_6_0_magErr" 
            tablehead="HSC_I_m_base_CircularApertureFlux_6_0_magErr" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="mag within 6.000000-pixel aperture" 
            verbLevel="1" 
            />

        <column 
            name="HSC_I_m_base_CircularApertureFlux_6_0_mag" 
            tablehead="HSC_I_m_base_CircularApertureFlux_6_0_mag" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="mag within 6.000000-pixel aperture" 
            verbLevel="1" 
            />

        <column 
            name="HSC_I_m_base_CircularApertureFlux_6_0_fluxErr" 
            tablehead="HSC_I_m_base_CircularApertureFlux_6_0_fluxErr" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux within 6.000000-pixel aperture" 
            verbLevel="1" 
            />

        <column 
            name="HSC_I_m_base_CircularApertureFlux_6_0_flux" 
            tablehead="HSC_I_m_base_CircularApertureFlux_6_0_flux" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux within 6.000000-pixel aperture" 
            verbLevel="1" 
            />

        <column 
            name="HSC_I_m_base_CircularApertureFlux_6_0_flag" 
            tablehead="HSC_I_m_base_CircularApertureFlux_6_0_flag" 
            type="bigint" 
            ucd="" 
            unit="None"
            description="General Failure Flag" 
            verbLevel="1" 
            />

        <column 
            name="HSC_G_m_slot_ModelFlux_magErr" 
            tablehead="HSC_G_m_slot_ModelFlux_magErr" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="flux from the final cmodel fit" 
            verbLevel="1" 
            />

        <column 
            name="HSC_G_m_slot_ModelFlux_mag" 
            tablehead="HSC_G_m_slot_ModelFlux_mag" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="flux from the final cmodel fit" 
            verbLevel="1" 
            />

        <column 
            name="HSC_G_m_slot_ModelFlux_fluxErr" 
            tablehead="HSC_G_m_slot_ModelFlux_fluxErr" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux from the final cmodel fit" 
            verbLevel="1" 
            />

        <column 
            name="HSC_G_m_slot_ModelFlux_flux" 
            tablehead="HSC_G_m_slot_ModelFlux_flux" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux from the final cmodel fit" 
            verbLevel="1" 
            />

        <column 
            name="HSC_G_m_slot_ModelFlux_flag" 
            tablehead="HSC_G_m_slot_ModelFlux_flag" 
            type="bigint" 
            ucd="" 
            unit="None"
            description="flag set if the final cmodel fit (or any previous fit) failed" 
            verbLevel="1" 
            />

        <column 
            name="HSC_G_m_base_PsfFlux_magErr" 
            tablehead="HSC_G_m_base_PsfFlux_magErr" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="mag derived from linear least-squares fit of PSF model" 
            verbLevel="1" 
            />

        <column 
            name="HSC_G_m_base_PsfFlux_mag" 
            tablehead="HSC_G_m_base_PsfFlux_mag" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="mag derived from linear least-squares fit of PSF model" 
            verbLevel="1" 
            />

        <column 
            name="HSC_G_m_base_PsfFlux_fluxErr" 
            tablehead="HSC_G_m_base_PsfFlux_fluxErr" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux derived from linear least-squares fit of PSF model" 
            verbLevel="1" 
            />

        <column 
            name="HSC_G_m_base_PsfFlux_flux" 
            tablehead="HSC_G_m_base_PsfFlux_flux" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux derived from linear least-squares fit of PSF model" 
            verbLevel="1" 
            />

        <column 
            name="HSC_G_m_base_PsfFlux_flag" 
            tablehead="HSC_G_m_base_PsfFlux_flag" 
            type="bigint" 
            ucd="" 
            unit="None"
            description="General Failure Flag" 
            verbLevel="1" 
            />

        <column 
            name="HSC_G_m_base_CircularApertureFlux_6_0_magErr" 
            tablehead="HSC_G_m_base_CircularApertureFlux_6_0_magErr" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="mag within 6.000000-pixel aperture" 
            verbLevel="1" 
            />

        <column 
            name="HSC_G_m_base_CircularApertureFlux_6_0_mag" 
            tablehead="HSC_G_m_base_CircularApertureFlux_6_0_mag" 
            type="single precision" 
            ucd="" 
            unit="mag"
            description="mag within 6.000000-pixel aperture" 
            verbLevel="1" 
            />

        <column 
            name="HSC_G_m_base_CircularApertureFlux_6_0_fluxErr" 
            tablehead="HSC_G_m_base_CircularApertureFlux_6_0_fluxErr" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux within 6.000000-pixel aperture" 
            verbLevel="1" 
            />

        <column 
            name="HSC_G_m_base_CircularApertureFlux_6_0_flux" 
            tablehead="HSC_G_m_base_CircularApertureFlux_6_0_flux" 
            type="single precision" 
            ucd="" 
            unit="nJy"
            description="flux within 6.000000-pixel aperture" 
            verbLevel="1" 
            />

        <column 
            name="HSC_G_m_base_CircularApertureFlux_6_0_flag" 
            tablehead="HSC_G_m_base_CircularApertureFlux_6_0_flag" 
            type="bigint" 
            ucd="" 
            unit="None"
            description="General Failure Flag" 
            verbLevel="1" 
            />

<meta name="note" tag="1">
            <![CDATA[
            This table is a prototype and should be treated with caution
            ]]>
        </meta>

    </table>
    <data id="import">
        <sources>
            <pattern>data/main/*.csv</pattern>
        </sources>
        <csvGrammar />
        <make table="main">
            <rowmaker idmaps="*">
                <simplemaps>
                </simplemaps>
            </rowmaker>
        </make>
    </data>
    <service id="cone" allowed="scs.xml,form,static">
        <meta name="title">
            LSST IR fusion SXDS prototype p2021p1
        </meta>
        <meta name="shortName">
            SXDS p2021p1
        </meta>
        <meta name="testQuery">
            <meta name="ra">
                35.0
            </meta>
            <meta name="dec">
                -5.0
            </meta>
            <meta name="sr">
                1.0
            </meta>
        </meta>
        <!--
        this is to allow access to the raw data.  Decide for yourself
        whether or not you want this
        -->
        <property name="staticData">
            data/files
        </property>
        <dbCore queriedTable="main">
            <FEED source="//scs#coreDescs" />
            <condDesc buildFrom="field" />
            <condDesc buildFrom="help_id" />
        </dbCore>
        <publish render="scs.xml" sets="ivo_managed" />
        <publish render="form" sets="ivo_managed,local" />
        <outputTable verbLevel="20" />
    </service>
</resource>
