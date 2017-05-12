-- autor: Michał Jaworowski


set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2016.08.24'
,p_release=>'5.1.0.00.45'
,p_default_workspace_id=>48441310948722997917
,p_default_application_id=>57053
,p_default_owner=>'SKOKI'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 57053 - skoki_narciarskie
--
-- Application Export:
--   Application:     57053
--   Name:            skoki_narciarskie
--   Date and Time:   22:10 Monday January 9, 2017
--   Exported By:     KZPL_KROPEQ@INTERIA.PL
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.1.0.00.45
--   Instance ID:     63113759365424
--

-- Application Statistics:
--   Pages:                     66
--     Items:                   30
--     Validations:             23
--     Processes:               33
--     Regions:                 87
--     Buttons:                 15
--     Dynamic Actions:          1
--   Shared Components:
--     Logic:
--     Navigation:
--       Lists:                  2
--       Breadcrumbs:            2
--         Entries:             14
--     Security:
--       Authentication:         1
--       Authorization:          1
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 9
--         Region:              15
--         Label:                5
--         List:                11
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               3
--         Report:               9
--       Shortcuts:              1
--     Globalization:
--     Reports:
--   Supporting Objects:  Included

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,57053)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'SKOKI')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'skoki_narciarskie')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'F_57053')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'D76F02F849245199F655A9F604FFED3FEADED24721C9A3067C4D78E97C7B0273'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'5.1'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'YYYY-MM-DD'
,p_date_time_format=>'DD-MON-YYYY HH24:MI:SS'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(1066281226088455725)
,p_application_tab_set=>0
,p_logo_image=>'TEXT:skoki_narciarskie'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20170109220641'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>29
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(1066213815583455645)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1066282817617455731)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Start'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1,16,50,130,50,60,70,80,91,92,98'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1197050698336389092)
,p_list_item_display_sequence=>430
,p_list_item_link_text=>'Puchar Świata'
,p_list_item_link_target=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(1066282817617455731)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'50'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1216981685355811614)
,p_list_item_display_sequence=>440
,p_list_item_link_text=>'Letnie Grand Prix'
,p_list_item_link_target=>'f?p=&APP_ID.:60:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(1066282817617455731)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'60'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1221988146930429322)
,p_list_item_display_sequence=>450
,p_list_item_link_text=>'Skocznie'
,p_list_item_link_target=>'f?p=&APP_ID.:70:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(1066282817617455731)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'70'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1304625389264081874)
,p_list_item_display_sequence=>460
,p_list_item_link_text=>'Reprezentacje'
,p_list_item_link_target=>'f?p=&APP_ID.:80:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(1066282817617455731)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'80'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1720119044126500577)
,p_list_item_display_sequence=>500
,p_list_item_link_text=>'Statystyka not'
,p_list_item_link_target=>'f?p=&APP_ID.:91:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(1066282817617455731)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'91'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1720336699943552438)
,p_list_item_display_sequence=>510
,p_list_item_link_text=>'Kalendarz Zawodów'
,p_list_item_link_target=>'f?p=&APP_ID.:92:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(1066282817617455731)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'92'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1082391823629305265)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Panel Administratora'
,p_security_scheme=>wwv_flow_api.id(1082261105747272672)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1109826240896539516)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Użytkownicy'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(1082391823629305265)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1109085452323432656)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Edytuj Użytkowników'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(1109826240896539516)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1102537801964902561)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Sezony'
,p_list_item_link_target=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(1082391823629305265)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'24'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1096690070635606357)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Edytuj Sezony'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(1102537801964902561)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'22,23'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1112688188386930028)
,p_list_item_display_sequence=>210
,p_list_item_link_text=>'Konkursy'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(1102537801964902561)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'12'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1112715697502597530)
,p_list_item_display_sequence=>220
,p_list_item_link_text=>'Edytuj Konkursy'
,p_list_item_link_target=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(1112688188386930028)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'13'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1125637827181849262)
,p_list_item_display_sequence=>230
,p_list_item_link_text=>'Pogody'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(1112688188386930028)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'15'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1126780503970319227)
,p_list_item_display_sequence=>240
,p_list_item_link_text=>'Edytuj Pogody'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(1125637827181849262)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'16'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1128882936565513366)
,p_list_item_display_sequence=>250
,p_list_item_link_text=>'Wyniki_ind'
,p_list_item_link_target=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(1112688188386930028)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'17'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1129644835005202578)
,p_list_item_display_sequence=>260
,p_list_item_link_text=>'Edytuj Wyniki'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(1128882936565513366)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'18'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1137456936442152571)
,p_list_item_display_sequence=>270
,p_list_item_link_text=>'Noty'
,p_list_item_link_target=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(1128882936565513366)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'19,20'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1138374983362207868)
,p_list_item_display_sequence=>280
,p_list_item_link_text=>'Edytuj Noty'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(1137456936442152571)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'20'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1382084775736581541)
,p_list_item_display_sequence=>480
,p_list_item_link_text=>'Konkurs Zawodnik'
,p_list_item_link_target=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(1112688188386930028)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'39,40,40'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1392998747684922556)
,p_list_item_display_sequence=>490
,p_list_item_link_text=>'Edytuj Konk_zaw'
,p_list_item_link_target=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(1382084775736581541)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'40'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1096217927821539137)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Skocznie'
,p_list_item_link_target=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(1082391823629305265)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'21'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1093636910696012135)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Edytuj Skocznie'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(1096217927821539137)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'14'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1110460743393642895)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Rekordy'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(1096217927821539137)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1110539742046666315)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'Edytuj Rekordy'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(1110460743393642895)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'5'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1111089259223280965)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>'Przebudowy'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(1096217927821539137)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'6'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1111048033206925900)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'Edytuj Przebudowy'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(1111089259223280965)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'7'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1111883567626156436)
,p_list_item_display_sequence=>170
,p_list_item_link_text=>'Wykonawcy'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(1111089259223280965)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'8'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1111926758471184700)
,p_list_item_display_sequence=>180
,p_list_item_link_text=>'Edytuj Wykonawców'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(1111883567626156436)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'9'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1111967270193228289)
,p_list_item_display_sequence=>190
,p_list_item_link_text=>'Przeb_wykon'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(1111089259223280965)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1112099153569683856)
,p_list_item_display_sequence=>200
,p_list_item_link_text=>'Edytuj Przeb_wykon'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(1111967270193228289)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'11'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1146277041640076728)
,p_list_item_display_sequence=>290
,p_list_item_link_text=>'Zawodnicy'
,p_list_item_link_target=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(1082391823629305265)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'25'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1147288878728126209)
,p_list_item_display_sequence=>300
,p_list_item_link_text=>'Edytuj Zawodników'
,p_list_item_link_target=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(1146277041640076728)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'26'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1151719329981211065)
,p_list_item_display_sequence=>350
,p_list_item_link_text=>'Kluby'
,p_list_item_link_target=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(1146277041640076728)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'31,32'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1151780498583225841)
,p_list_item_display_sequence=>360
,p_list_item_link_text=>'Edytuj Kluby'
,p_list_item_link_target=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(1151719329981211065)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'32'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1161347512226424704)
,p_list_item_display_sequence=>370
,p_list_item_link_text=>'Sponsorzy'
,p_list_item_link_target=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(1151719329981211065)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'33'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1161486257615444030)
,p_list_item_display_sequence=>380
,p_list_item_link_text=>'Edytuj Sponsorów'
,p_list_item_link_target=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(1161347512226424704)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'34'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1161652461633465336)
,p_list_item_display_sequence=>390
,p_list_item_link_text=>'Klub_Sponsor'
,p_list_item_link_target=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(1151719329981211065)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'35,36'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1161899489657491300)
,p_list_item_display_sequence=>400
,p_list_item_link_text=>'Edytuj Klub_Sponsor'
,p_list_item_link_target=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(1161652461633465336)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'36'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1148573437225889520)
,p_list_item_display_sequence=>310
,p_list_item_link_text=>'Kraje'
,p_list_item_link_target=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(1082391823629305265)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'27'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1149200151370967679)
,p_list_item_display_sequence=>320
,p_list_item_link_text=>'Edytuj Kraje'
,p_list_item_link_target=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(1148573437225889520)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'28'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1149887984655479213)
,p_list_item_display_sequence=>330
,p_list_item_link_text=>'Trenerzy'
,p_list_item_link_target=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(1148573437225889520)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'29,30'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1150172175054134538)
,p_list_item_display_sequence=>340
,p_list_item_link_text=>'Edytuj Trenerów'
,p_list_item_link_target=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(1149887984655479213)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'30'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1162338461302622749)
,p_list_item_display_sequence=>410
,p_list_item_link_text=>'Punktacja'
,p_list_item_link_target=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(1082391823629305265)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'37'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1162385646324258991)
,p_list_item_display_sequence=>420
,p_list_item_link_text=>'Edytuj Punktacje'
,p_list_item_link_target=>'f?p=&APP_ID.:38:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(1162338461302622749)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'38'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1318834420580582746)
,p_list_item_display_sequence=>470
,p_list_item_link_text=>'Procedury'
,p_list_item_link_target=>'f?p=&APP_ID.:90:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(1082391823629305265)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'90'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(1066280370387455722)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1724016124105389085)
,p_list_item_display_sequence=>5
,p_list_item_link_text=>'Zgłoś'
,p_list_item_link_target=>'f?p=&APP_ID.:93:&SESSION.::&DEBUG.:93:P93_APPLICATION_ID,P93_PAGE_ID:&APP_ID.,&APP_PAGE_ID.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1066280953295455725)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Wyloguj'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/files
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '47494638396112000C00F70000000000FFFFFFCE2425CCC4C5E2DBDCA49FA0FAF5F6C6CACAF7FAFAF1F4F4DFE2E2DBDEDED3D6D6D0D3D3CFD2D2CED1D1CDD0D0CACDCDC8CBCBC7CACAFBFDFDFAFCFCF5F7F7F4F6F6E9EBEBE5E7E7E2E4E4E1E3E3DDDFDF';
wwv_flow_api.g_varchar2_table(2) := 'D0D2D2C7C9C9C4C6C6F5F6F6ECF0EFC6C9C8CEC9C8F3EEEDC80000C70000C600007D00007C0000C90303C80303CB0505CA0505C80505C70505C80909D10D0DD00D0DD31010CE1818CD1818901111DC1D1DC71C1CE02121DF2121D2201FC81D1DCF1F1F9A';
wwv_flow_api.g_varchar2_table(3) := '1919A41B1BC72323C62525C92727AC2121EA2F2FE92F2FCC2929AF2323891C1CB82828ED3535EC3535BB2A2AD83232C32E2EC73030CA3232DE3838DD3838D63636D13635CE3434F64242F54242B83232F84646F74646E24141E14242E54544D33F3FE646';
wwv_flow_api.g_varchar2_table(4) := '46C33B3BFB4F4FFA4F4FE24747FB5050FA5050F14E4EF55050B63F3FAE3C3CF35656D84D4CF25757C04746EF5959F55E5ECB4E4EFA6464EA5F5FE85E5EDB5A59F96868F36565F76868FB6A6AEE6868F86E6EEE6C6CE56C6CF87878D6CECEC7C0C0C6BFBF';
wwv_flow_api.g_varchar2_table(5) := 'D8D1D1D9D3D3CAC4C4C9C3C3C8C2C2C7C1C1F9F3F3F8F2F2EFE9E9EEE8E8EDE7E7DCD6D6D3CECEC9C4C4FAF5F5EAE5E5E8E3E3E5E0E0BEBABAF6F2F2D5D1D1D0CCCCFFFFFF00000000000000000000000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(6) := '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(7) := '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(8) := '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000021F90401000097002C0000000012000C000008';
wwv_flow_api.g_varchar2_table(9) := 'CB0001081C48B0204114297C80C1C3460A0D172658CCC8A1240B1981286C60B1F3664B0F182656C8B851E48A98330291A4E1D3678E172138780868D2454D9C3B720416B0F46851A04180FE0CF04320D121448A1809FC4021010708130E4460A02004820A';
wwv_flow_api.g_varchar2_table(10) := '09363C1008C2820607133C4868B00083850A1732741021D040A446840C151A2148128947942055723449E09E355082003132658C9B3A7AF2D081D3068DC028355E9C683143C7122D65CC70A9E224C910813B60945011E306112B61CE7CA1F284C9911F06';
wwv_flow_api.g_varchar2_table(11) := '631B0C08003B';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(1233693677874621162)
,p_file_name=>'Austria.gif'
,p_mime_type=>'image/gif'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000120000000C08060000006F12EDBC000000097048597300000B1300000B1301009A9C1800000A4F6943435050686F746F73686F70204943432070726F66696C65000078DA9D53675453E9163DF7DEF4424B';
wwv_flow_api.g_varchar2_table(2) := '8880944B6F5215082052428B801491262A2109104A8821A1D91551C1114545041BC8A088038E8E808C15512C0C8A0AD807E421A28E83A3888ACAFBE17BA36BD6BCF7E6CDFEB5D73EE7ACF39DB3CF07C0080C9648335135800CA9421E11E083C7C4C6E1E4';
wwv_flow_api.g_varchar2_table(3) := '2E40810A2470001008B3642173FD230100F87E3C3C2B22C007BE000178D30B0800C04D9BC0301C87FF0FEA42995C01808401C07491384B08801400407A8E42A600404601809D98265300A0040060CB6362E300502D0060277FE6D300809DF8997B01005B';
wwv_flow_api.g_varchar2_table(4) := '94211501A09100201365884400683B00ACCF568A450058300014664BC43900D82D00304957664800B0B700C0CE100BB200080C00305188852900047B0060C8232378008499001446F2573CF12BAE10E72A00007899B23CB9243945815B082D710757572E';
wwv_flow_api.g_varchar2_table(5) := '1E28CE49172B14366102619A402EC27999193281340FE0F3CC0000A0911511E083F3FD78CE0EAECECE368EB60E5F2DEABF06FF226262E3FEE5CFAB70400000E1747ED1FE2C2FB31A803B06806DFEA225EE04685E0BA075F78B66B20F40B500A0E9DA57F3';
wwv_flow_api.g_varchar2_table(6) := '70F87E3C3C45A190B9D9D9E5E4E4D84AC4425B61CA577DFE67C25FC057FD6CF97E3CFCF7F5E0BEE22481325D814704F8E0C2CCF44CA51CCF92098462DCE68F47FCB70BFFFC1DD322C44962B9582A14E35112718E449A8CF332A52289429229C525D2FF64';
wwv_flow_api.g_varchar2_table(7) := 'E2DF2CFB033EDF3500B06A3E017B912DA85D6303F64B27105874C0E2F70000F2BB6FC1D4280803806883E1CF77FFEF3FFD47A02500806649927100005E44242E54CAB33FC708000044A0812AB0411BF4C1182CC0061CC105DCC10BFC6036844224C4C242';
wwv_flow_api.g_varchar2_table(8) := '10420A64801C726029AC82422886CDB01D2A602FD4401D34C051688693700E2EC255B80E3D700FFA61089EC128BC81090441C808136121DA8801628A58238E08179985F821C14804128B2420C9881451224B91354831528A542055481DF23D720239875C';
wwv_flow_api.g_varchar2_table(9) := '46BA913BC8003282FC86BC47319481B2513DD40CB543B9A8371A8446A20BD06474319A8F16A09BD072B41A3D8C36A1E7D0AB680FDA8F3E43C730C0E8180733C46C302EC6C342B1382C099363CBB122AC0CABC61AB056AC03BB89F563CFB17704128145C0';
wwv_flow_api.g_varchar2_table(10) := '093604774220611E4148584C584ED848A8201C243411DA093709038451C2272293A84BB426BA11F9C4186232318758482C23D6128F132F107B8843C437241289433227B9900249B1A454D212D246D26E5223E92CA99B34481A2393C9DA646BB20739942C';
wwv_flow_api.g_varchar2_table(11) := '202BC885E49DE4C3E433E41BE421F25B0A9D624071A4F853E22852CA6A4A19E510E534E5066598324155A39A52DDA8A15411358F5A42ADA1B652AF5187A81334759A39CD8316494BA5ADA295D31A681768F769AFE874BA11DD951E4E97D057D2CBE947E8';
wwv_flow_api.g_varchar2_table(12) := '97E803F4770C0D861583C7886728199B18071867197718AF984CA619D38B19C754303731EB98E7990F996F55582AB62A7C1591CA0A954A9526951B2A2F54A9AAA6AADEAA0B55F355CB548FA95E537DAE46553353E3A909D496AB55AA9D50EB531B5367A9';
wwv_flow_api.g_varchar2_table(13) := '3BA887AA67A86F543FA47E59FD890659C34CC34F43A451A0B15FE3BCC6200B6319B3782C216B0DAB86758135C426B1CDD97C762ABB98FD1DBB8B3DAAA9A13943334A3357B352F394663F07E39871F89C744E09E728A797F37E8ADE14EF29E2291BA6344C';
wwv_flow_api.g_varchar2_table(14) := 'B931655C6BAA96979658AB48AB51AB47EBBD36AEEDA79DA6BD45BB59FB810E41C74A275C2747678FCE059DE753D953DDA70AA7164D3D3AF5AE2EAA6BA51BA1BB4477BF6EA7EE989EBE5E809E4C6FA7DE79BDE7FA1C7D2FFD54FD6DFAA7F5470C5806B30C';
wwv_flow_api.g_varchar2_table(15) := '2406DB0CCE183CC535716F3C1D2FC7DBF151435DC34043A561956197E18491B9D13CA3D5468D460F8C69C65CE324E36DC66DC6A326062621264B4DEA4DEE9A524DB9A629A63B4C3B4CC7CDCCCDA2CDD699359B3D31D732E79BE79BD79BDFB7605A785A2C';
wwv_flow_api.g_varchar2_table(16) := 'B6A8B6B86549B2E45AA659EEB6BC6E855A3959A558555A5DB346AD9DAD25D6BBADBBA711A7B94E934EAB9ED667C3B0F1B6C9B6A9B719B0E5D806DBAEB66DB67D6167621767B7C5AEC3EE93BD937DBA7D8DFD3D070D87D90EAB1D5A1D7E73B472143A563A';
wwv_flow_api.g_varchar2_table(17) := 'DE9ACE9CEE3F7DC5F496E92F6758CF10CFD833E3B613CB29C4699D539BD347671767B97383F3888B894B82CB2E973E2E9B1BC6DDC8BDE44A74F5715DE17AD2F59D9BB39BC2EDA8DBAFEE36EE69EE87DC9FCC349F299E593373D0C3C843E051E5D13F0B9F';
wwv_flow_api.g_varchar2_table(18) := '95306BDFAC7E4F434F8167B5E7232F632F9157ADD7B0B7A577AAF761EF173EF63E729FE33EE33C37DE32DE595FCC37C0B7C8B7CB4FC36F9E5F85DF437F23FF64FF7AFFD100A78025016703898141815B02FBF87A7C21BF8E3F3ADB65F6B2D9ED418CA0B9';
wwv_flow_api.g_varchar2_table(19) := '4115418F82AD82E5C1AD2168C8EC90AD21F7E798CE91CE690E85507EE8D6D00761E6618BC37E0C2785878557863F8E7088581AD131973577D1DC4373DF44FA449644DE9B67314F39AF2D4A352A3EAA2E6A3CDA37BA34BA3FC62E6659CCD5589D58496C4B';
wwv_flow_api.g_varchar2_table(20) := '1C392E2AAE366E6CBEDFFCEDF387E29DE20BE37B17982FC85D7079A1CEC2F485A716A92E122C3A96404C884E3894F041102AA8168C25F21377258E0A79C21DC267222FD136D188D8435C2A1E4EF2482A4D7A92EC91BC357924C533A52CE5B98427A990BC';
wwv_flow_api.g_varchar2_table(21) := '4C0D4CDD9B3A9E169A76206D323D3ABD31839291907142AA214D93B667EA67E66676CBAC6585B2FEC56E8BB72F1E9507C96BB390AC05592D0AB642A6E8545A28D72A07B267655766BFCD89CA3996AB9E2BCDEDCCB3CADB90379CEF9FFFED12C212E192B6';
wwv_flow_api.g_varchar2_table(22) := 'A5864B572D1D58E6BDAC6A39B23C7179DB0AE315052B865606AC3CB88AB62A6DD54FABED5797AE7EBD267A4D6B815EC1CA82C1B5016BEB0B550AE5857DEBDCD7ED5D4F582F59DFB561FA869D1B3E15898AAE14DB1797157FD828DC78E51B876FCABF99DC';
wwv_flow_api.g_varchar2_table(23) := '94B4A9ABC4B964CF66D266E9E6DE2D9E5B0E96AA97E6970E6E0DD9DAB40DDF56B4EDF5F645DB2F97CD28DBBB83B643B9A3BF3CB8BC65A7C9CECD3B3F54A454F454FA5436EED2DDB561D7F86ED1EE1B7BBCF634ECD5DB5BBCF7FD3EC9BEDB5501554DD566';
wwv_flow_api.g_varchar2_table(24) := 'D565FB49FBB3F73FAE89AAE9F896FB6D5DAD4E6D71EDC703D203FD07230EB6D7B9D4D51DD23D54528FD62BEB470EC71FBEFE9DEF772D0D360D558D9CC6E223704479E4E9F709DFF71E0D3ADA768C7BACE107D31F761D671D2F6A429AF29A469B539AFB5B';
wwv_flow_api.g_varchar2_table(25) := '625BBA4FCC3ED1D6EADE7AFC47DB1F0F9C343C59794AF354C969DAE982D39367F2CF8C9D959D7D7E2EF9DC60DBA2B67BE763CEDF6A0F6FEFBA1074E1D245FF8BE73BBC3BCE5CF2B874F2B2DBE51357B8579AAF3A5F6DEA74EA3CFE93D34FC7BB9CBB9AAE';
wwv_flow_api.g_varchar2_table(26) := 'B95C6BB9EE7ABDB57B66F7E91B9E37CEDDF4BD79F116FFD6D59E393DDDBDF37A6FF7C5F7F5DF16DD7E7227FDCECBBBD97727EEADBC4FBC5FF440ED41D943DD87D53F5BFEDCD8EFDC7F6AC077A0F3D1DC47F7068583CFFE91F58F0F43058F998FCB860D86';
wwv_flow_api.g_varchar2_table(27) := 'EB9E383E3939E23F72FDE9FCA743CF64CF269E17FEA2FECBAE17162F7EF8D5EBD7CED198D1A197F29793BF6D7CA5FDEAC0EB19AFDBC6C2C61EBEC97833315EF456FBEDC177DC771DEFA3DF0F4FE47C207F28FF68F9B1F553D0A7FB93199393FF040398F3';
wwv_flow_api.g_varchar2_table(28) := 'FC63332DDB0000000467414D410000B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E9000075300000EA6000003A980000176F925FC546000001EA4944415478DA54933D4EF43010861F478EBD8EF704545052D27200AE80A046';
wwv_flow_api.g_varchar2_table(29) := '54DC857BD050230EC001B646A24062858440BBC489637B4CC1B7F99691DE6E66F4FECC28A5545D2C1600D45A111172CED45A514ACD689A86FDAAB5526BA59442AD15DDB62D27272768AD1111FABEE7FDFD9DB7B737BAAEC37B8FF71EE71C5A6B00628C84';
wwv_flow_api.g_varchar2_table(30) := '10E8FB9EAFAF2F4A2934A514D6EB351F1F1F6C361BC67124A504C06AB562BD5EF3FCFCCCDDDD1D070707A4948831320C0321044404AD350AA800CE39ACB588089BCD066B2DCE39BCF7745DC7FDFD3DAFAFAFDCDCDCD0F73DDBED961002CE39524A344DD3';
wwv_flow_api.g_varchar2_table(31) := 'E0BD07601806628C745D87738EC56241DBB628A5787A7A424418C771EE5B2E97B35CAD9462B95C2222D45A01689A06AD356DDBA2B5E6F4F494ABAB2B2E2F2F0921308E2339678C31841028A5FC2EF2DECF29007F92BABEBEE6FCFC9C8B8B0B1E1F1F1986';
wwv_flow_api.g_varchar2_table(32) := '81699AB0D6B2DD6E8931FE67E49C9B17ED988908224229859797171E1E1E18C791699AA8B51263446B8DD69A520ACA18538F8F8FE7A1520A3967524AA49498A66946CE191199A51B63E63EBD3BAEDDF0344D7F16DCDEDE727878C8D9D9D9AF847FDE596B';
wwv_flow_api.g_varchar2_table(33) := '31C6F0FDFD4DCEF997D1D1D11131C63F4829CD0CF60330C660ADC55A4BDBB67C7E7E12424029A5EAEEAAF70DDFBDC4CEAFFD77D947290511E16700207E5AFE759634850000000049454E44AE426082';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(1233693838142621163)
,p_file_name=>'Brak.gif'
,p_mime_type=>'image/gif'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '47494638396112000C00F70000000000FFFFFFC6C7C7C9CEC8C4C9C3EEF3EDCFD3CEE1E5E0ABAEAAF5F8F43C8220C2C7C0C3C8C1E1E6DF216F00216B00237103256F05256E052873092D790D307910367A183C871D4188214E972F539835498430539138';
wwv_flow_api.g_varchar2_table(2) := '4F8C3660A6425B9A405C9842609E4651843B6BAE4F6CAC506BAB5069A64E70AB5777B25E7DB46582B86A4184203F6C294E873464A64664A34563994873AF5578B25B66964FD4D8D2F6FAF4F3F7F1E6EAE4E4E8E28587842F730C31740F3578133D7C1D52';
wwv_flow_api.g_varchar2_table(3) := '923157903972A95675AA598ABC702F6701457C184F8027568B2B4D772C689B3E5E8A3A75A64D6D9A4886B064306801386F0A396E0D5580316F9C4978A751C00B00C00D03C51107C41C12CF1E14DC3026B02E26D2382FBB352DEA433AC63B33D6473EF353';
wwv_flow_api.g_varchar2_table(4) := '4AE8554CF35A51E85950D43935CC0200CB0400CC0703D00705CC0805CB0D09D4110DD81310D21B18DF211DE42321D3231FA61D1BB02221ED332FB12623BC2A28F23735BD2C2AC7302EC93330E13A38D23634F94642FC4946E54442E94946FE524FFE5250';
wwv_flow_api.g_varchar2_table(5) := 'F6504EF85350FEFEFEFCFCFCFAFAFAF9F9F9F7F7F7F6F6F6F2F2F2EEEEEEE7E7E7E4E4E4E1E1E1D8D8D8D6D6D6D4D4D4D2D2D2D0D0D0CECECECDCDCDCCCCCCBBBBBB9D9D9D9494947F7F7FFFFFFF00000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(6) := '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(7) := '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(8) := '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000021F9040100009A002C0000000012000C000008';
wwv_flow_api.g_varchar2_table(9) := 'CB0001081C48B020C14C992E090880A851A44A952439629488D020819930593A546811244A95263D6AA4A85000430273203890008701020B180CA0D1A0400D1B3704B2982124C88F1E3B74F058E1E3450C1940600814A1E204070B121E44A88041830B12';
wwv_flow_api.g_varchar2_table(10) := '2640B4109802C50705131C40A07021838711254274D82090C992224F86347142C408122552A224817244A0182D56A84CA972050B972F61C078E9B2258BC03C6CD09039B3C64D1D3E8002F5D173874E1C816FD29431A3A68D9C3D7F04F91983C7CE1C3806';
wwv_flow_api.g_varchar2_table(11) := '631B0C08003B';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(1233694189446621166)
,p_file_name=>'Bułgaria.gif'
,p_mime_type=>'image/gif'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '47494638396112000C00E60000000000FFFFFFD53536C73A3BB2972A947111BB9732E9B859F682577F12007F1000CD2209CC1A038B170ACF2412FF7768F77665CC1405CE1F0DD42D1FCC0A009D2019FD6D64CC0801CC0901A72521F15450D44B46FF6F6A';
wwv_flow_api.g_varchar2_table(2) := 'CD0100CC0000CC02007F0000CD0101CD0201CE0303CC0303D00505CC0505D10707CD0909CD0D09D40A0AD60D0DCE0E0DD81010CF1212DB1414DE1818D21818E11D1DE42121D4201FD42420E82626A71B1BEB2B2BD82727B02121EE2F2FB22323B92626DD';
wwv_flow_api.g_varchar2_table(3) := '2F2FDD302FBC2828F23535BF2A2AC42D2DC12C2CC72E2EF53A3ACA3030CD3231E13838E13938D53635D23434CF3333F83E3EFA4242DA3A3AE74140E03F3EFC4646E74141E54242FE4A4AEA4646C63B3BFF4D4DEE4949EC4848FF4F4FFE5050F24C4CFD51';
wwv_flow_api.g_varchar2_table(4) := '51F64E4EFB5151F95050F15050F65757FA5E5EFD6464F86565FF6A6AFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000021F904';
wwv_flow_api.g_varchar2_table(5) := '01000069002C0000000012000C000007A080008283848584200915581C084A31261E252D3341535D820A050610655413291E232B323B4F5C62820D0407165B391217212A30384E59615A82191B0F1A3E0E0C1D272F3646565F5E52820368644931111492';
wwv_flow_api.g_varchar2_table(6) := '949660554C82676551350B1FA2A4A6625702478266AE2C1822B3B5B75A50484482633F2E241EC3C5C7C94D433D829E419A56A98B35264580E810440345A851A54E5D597244088F1B86321A0A04003B';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(1233694445535621166)
,p_file_name=>'Chiny.gif'
,p_mime_type=>'image/gif'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '47494638396112000C00F70000000000FFFFFFC60003D92829A50319A30E2A7308406D1152691250361070351475D7D7D8050D96595FC20510950C16933039AE00085D0E1762111A712631A3505BC60014A001159D091B9B0D1F9F0A166A1225A5182BAA';
wwv_flow_api.g_varchar2_table(2) := '1829A12738AA212D853040AF2A368E3848B83848B64150BB3B47A24858C24654B05766CC4B58AD5E6CD16472D56875D86673D26A78D87480D9535774AFB5DD0C209E1F31A65060C7626BA4E7E9F37987BFB0B4C5C6C7C7E0E0DFCDCDCCF2E7E6CE0303D0';
wwv_flow_api.g_varchar2_table(3) := '0505CE0707CF0D0DD41010DB1414DE1818DB1D1DDE2121A31B1BE22626E62B2BAB2121E82F2FAE2323B52626B72828EC3535BA2A2ABD2C2CC32E2EC02D2DEF3A3AC83231C53030EA3B3ACE3434CA3333F23E3ED03635F44242D53A3AF64646DB3F3EC539';
wwv_flow_api.g_varchar2_table(4) := '39E04242F84A4AD03F3FE54646F94D4DF44D4DE94949F94F4FF95050F14E4EED4C4CF85151F45050F65151E44F4FF95959F45A5AE4D9D9E5DBDBFEF4F4FCF2F2F6ECECD8CFCFD2C9C9FEFEFEFDFDFDFCFCFCFBFBFBFAFAFAF9F9F9F8F8F8F6F6F6F5F5F5';
wwv_flow_api.g_varchar2_table(5) := 'F2F2F2EEEEEEEBEBEBE8E8E8E7E7E7E4E4E4E1E1E1DEDEDEDBDBDBD8D8D8D6D6D6D4D4D4D2D2D2D1D1D1D0D0D0CECECECDCDCDCCCCCC9D9D9DFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(6) := '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(7) := '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(8) := '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000021F90401000094002C0000000012000C000008';
wwv_flow_api.g_varchar2_table(9) := 'CB0001081C48B02041093026E508F0E7502349921E293214480F1E811126D4B0C1A710A34892202D3A24884F803E02358468F022C602489222314234C84F803D82047E38C1A20284143876384A4408109E3C8174082CE102C5880E0C64DCB01387079D39';
wwv_flow_api.g_varchar2_table(10) := '75E4DC11D842058919182C383830C04A993770DC88F9227085090F192E242830044916326DCC70A10245200D101B1E18F821E4C894306BD478C122858940111C1410F011A488932E68D280B912A5491281141008E8018488922D67D88CD152E5C9122306';
wwv_flow_api.g_varchar2_table(11) := '631B0C08003B';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(1233694749744621167)
,p_file_name=>'Czechy.gif'
,p_mime_type=>'image/gif'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '47494638396112000C00F70000000000FFFFFF3B3A3B3635366B6B6CE2E2E3C7C7C84C4E53222428313337404246525458696B6F02050A090C11272A2F3B3E431035671A56A51B57A81136691A529D1A529C1E5AAA1F5AA91F59A6235DAA225AA32863B2';
wwv_flow_api.g_varchar2_table(2) := '255AA02A64B21A3D6D22497D3066AF3066AE3770BE3A73BF376DB42A50844277BD3D6DAE4981CD4D84CD3A60914E7FC15B91DA05080C5587CB456DA35E93D95788C94C75AC669AE06799DD6698DB6393D45D8AC75C89C56695D26C99D772A1DE6A92C679';
wwv_flow_api.g_varchar2_table(3) := 'A4DE76A0D87DA8E214171B16191D4D5054525559474A4D1F2020B2B3B3ECEDECE1E2E1D4D5D43A3A39414140D5D5D4CCCCCB666565FEFEFEFCFCFCFAFAFAF9F9F9F6F6F6F2F2F2EEEEEEECECECEAEAEAE5E5E5E4E4E4E2E2E2E1E1E1D8D8D8D6D6D6D5D5';
wwv_flow_api.g_varchar2_table(4) := 'D5D2D2D2D0D0D0CECECECDCDCDCCCCCCCACACAC7C7C7C0C0C0BFBFBFBDBDBDBCBCBCB8B8B8B5B5B5B0B0B0ABABABA7A7A76A6A6A5E5E5E5A5A5A5757575656565151515050504F4F4F4E4E4E474747464646424242383838353535343434333333303030';
wwv_flow_api.g_varchar2_table(5) := '2F2F2F2222222121211D1D1D1818181717171414141010100D0D0D0C0C0C090909050505030303FFFFFF00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(6) := '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(7) := '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(8) := '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000021F9040100008E002C0000000012000C000008';
wwv_flow_api.g_varchar2_table(9) := 'CB0001081C48B020C108114CCC00B28385880C12307820A122460D811440C0F0C14346090D132E701891A2050D1B023FACE8F123078A0E162A6C0871E2C50D1D38042228C2604182202E1A3810F200C201224314081400670E9F428C00304234A88F1E3B';
wwv_flow_api.g_varchar2_table(10) := '78F6F811F8240E13238B00344A4428D09E3B76F40C002490801D408614293A24A84F1E3A72EAEC59F24760122769D6AC4963E04B812B48B68439C3C68D402E60C89009D3454B952850A8640163464D1B814AC69011E3858B152901A660695206CD913706';
wwv_flow_api.g_varchar2_table(11) := '631B0C08003B';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(1233695034997621167)
,p_file_name=>'Estonia.gif'
,p_mime_type=>'image/gif'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '47494638396112000C00F70000000000FFFFFFCDCCCEC1C1C6C5C5C9F1F1F4EFEFF1C6C6C8FBFBFCF2F2F3EFEFF0DDDDDEDADADBCDCDCEC2C2C3B7B7B8051161101B6B212C79353F8A384285343D7B465099424B8C3B427A505A9F4E579A57609E6A72AD';
wwv_flow_api.g_varchar2_table(2) := '7A7FA29398BA9A9EB9AAAECB0715651D2B781D2B7736417F414C8D505C9E5762A05E69A66670A97E87BA666D95848AAC6C7088B0B5D4A7ACC9B2B7D5BDC1DB0515630B1B660D1C6B101F6D14236C19286D1C296F202F771F2D73202D732734792835792D';
wwv_flow_api.g_varchar2_table(3) := '3C832F3E882A3879303C773B4A8F42509738447E3E4A88414E8B424F8C4652914F5CA0505B905F6AA1555F8D727DB27883B68791BFA3A9C9969BB3041663041662071865091B650C1D670C1C650F216C1B2B7157649D4D58846875AC5E69987581B66D78';
wwv_flow_api.g_varchar2_table(4) := 'A96F7AABB5B7C0CED0D9BFC1C9DCDEE6E4E6EEBFC0C4C2C3C6FAFBFCB2B3B3D4D5D4D5D5D4FEFEFEFDFDFDFCFCFCFBFBFBFAFAFAF9F9F9F8F8F8F6F6F6F2F2F2EEEEEEEBEBEBEAEAEAE9E9E9E5E5E5E4E4E4E1E1E1DEDEDED8D8D8D6D6D6D4D4D4D2D2D2';
wwv_flow_api.g_varchar2_table(5) := 'D0D0D0CECECECDCDCDCCCCCCCACACAC7C7C7BFBFBFBCBCBCBBBBBBB2B2B2B0B0B0A7A7A79D9D9D9494948B8B8B7F7F7FFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(6) := '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(7) := '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(8) := '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000021F90401000091002C0000000012000C000008';
wwv_flow_api.g_varchar2_table(9) := 'C90001081C48B0204148901A9D5171E2C818428402F5D143C70D1B81901C252AD0A40490308404F9D953074E8038021F29C2D366098F1B6606FDE163474E80377504B68812E345111B57567460E1018A0B18203E08C4C06103852C55A64088206182850C';
wwv_flow_api.g_varchar2_table(10) := '1A2E5410980245091D56A450A121E2C790242690900822F0C917254466C8C062440B172F4EC07461B245A002060206E00891434C0204680C2C68E0E081C03D80081DD851C307198B73F200328468914035830811E8314248999377D6143A948691C1D706';
wwv_flow_api.g_varchar2_table(11) := '0302003B';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(1233695326526621168)
,p_file_name=>'Finlandia.gif'
,p_mime_type=>'image/gif'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '47494638396112000C00F70000000000FFFFFFD03536EEEDF10000C70000C600007C0303C90303C60505C70909C80D0DC90A0A881212CA1818CD1111901F20D01919992727D32424C42525C32121A42929C73030D82B2BC43030CD2A2AAE3838DD3838DC';
wwv_flow_api.g_varchar2_table(2) := '3232B83939CA4141E23A3BC33B3AC34848E84646D15050ED5757F14E4ED55E5EF55959E56464F96464F86867FA6565F36665F36A6AFA6565E57979F38484F8C7C7CBC3C3C7C2C2C6D7D7DBCFCFD3CECED2DEDEE1C6C6C9EFEFF0DBDBDCFAFDFECED3D3C8';
wwv_flow_api.g_varchar2_table(3) := 'CDCDC6CBCBE9EEEEF9FDFDF5F9F9F3F7F7DFE3E3D6DADAE5E6E6D2D2CFD1D1CECBCBC8C9C9C6ECECEAE1E1DFD8D8D6CBCBC9DEDEDDD9D9D8D21818DF2121DB2424A41B1BAC2121E92F2FAF2323B52626E53332B82828EC3535BB2A2ABD2C2CC32E2EC02D';
wwv_flow_api.g_varchar2_table(4) := '2DC73030C93231C63030CE3434CB3333F33E3EF54242EF4141D53A3AF74646DB3F3ED03C3CE14242F94A4AFA4D4DE54646EA4949FA4F4FF74E4EFA5050EE4C4CF14E4EE04848F85151F75151F45050F95656ED5353F65858C7B0B0CDB6B6D5BFBFDFC9C9';
wwv_flow_api.g_varchar2_table(5) := 'E9D4D4F2DDDDEFDBDBE3D0D0F7E3E3F6E2E2C8C7C7FBFBFBF7F7F7F6F6F6ECECECE2E2E2D3D3D3D0D0D0CDCDCDCCCCCCCACACAC8C8C8C7C7C7FFFFFF00000000000000000000000000000000000000000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(6) := '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(7) := '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(8) := '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000021F90401000094002C0000000012000C000008';
wwv_flow_api.g_varchar2_table(9) := 'CB0001081C48B02041030622808831E0C9A3493FFA4491B225CD1C81061E74600103C79143937CF89962C54C9C3C02196840A1E2850D279324F5F893A58C1B3C70045618B18284891C4A26412A02E84C9B3B74D4080CE1A2C4060F3494446A4424909C39';
wwv_flow_api.g_varchar2_table(10) := '75D88C11D8E2C4070818682471B40388203D79DE081023308508090B28CC4002C5C890427CE0A009D34520890B0D104C90D184918E2086F6A821F3058B400E0E1214B07083C9A2443C06D919E3454B15811014103890A1C612458884105A0386CB152A06';
wwv_flow_api.g_varchar2_table(11) := '631B0C08003B';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(1233695684611621169)
,p_file_name=>'Francja.gif'
,p_mime_type=>'image/gif'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '47494638396112000C00E60000000000FFFFFFFFFEFFD5D4D5C7C6C7D4D5D5C6C7C7C1C2C2B2B3B3D4D5D4E7E7E6E0E0DFDDDDDCD5D5D4CDCDCCC02100BF2100C12303C32505C42807C92D0DCC3110D23818D43C1DD84121DF4A2BE24E2FEC5C3EF6EDEB';
wwv_flow_api.g_varchar2_table(2) := 'BF1E03C7290AC8280CCE3114C33116CA6452E97B67F48773F68E7CF79180D88577C11A01C01801BF1801C4321CDB3C26DB3D26E54A35E8513AEE5942C76D60F59182C77A6ECD8075C88177E0A096FAB6ABD59C93F7B7AEF1BFB8CCA7A2DBBFBBBF1500BF';
wwv_flow_api.g_varchar2_table(3) := '1A05CE2814F25B4AF35E4DC9958FD3BAB7F2EAEAD8D4D4F8F7F7FEFEFEFDFDFDFCFCFCFBFBFBFAFAFAF9F9F9F8F8F8F7F7F7F6F6F6F2F2F2F1F1F1EEEEEEECECECEBEBEBEAEAEAE9E9E9E7E7E7E5E5E5E4E4E4E1E1E1DADADAD8D8D8D6D6D6D4D4D4D2D2';
wwv_flow_api.g_varchar2_table(4) := 'D2D0D0D0CFCFCFCECECECDCDCDCCCCCCCACACAC7C7C7C4C4C4BFBFBFBCBCBCBBBBBBB9B9B9B2B2B2B0B0B0A7A7A79D9D9D9494948B8B8B7F7F7FFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000021F904';
wwv_flow_api.g_varchar2_table(5) := '01000073002C0000000012000C000007B18000828384858472726F06014F5A5F6464605C595049478272706A4E4B574335333B5D5A524B014C82716C56485338212A291F27544D014A52826E5E02513C2B1D0F13202C3A4748500B82048C5A343E101215';
wwv_flow_api.g_varchar2_table(6) := '182E32474F585F82464B0A05313D1114171A30264C55036582AD5C6242281E16191B4139525B0E0782510C6190227EB47801A404910561CEAC11E408129822364690B8C1219B99346D0425184346CCA852A7AA34288306811B43280D0502003B';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(1233695943480621169)
,p_file_name=>'Japonia.gif'
,p_mime_type=>'image/gif'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '47494638396112000C00F70000000000FFFFFFD5D5D4F6F3F2E4E0DFCABBB8D2B8B3D3C3C0CE1D05CA240CD0240DD72911D22E18E1341DDD442FC43F2DB23A2ACD4431FF644FF2604CFB6551D45746D66756C86254CC7266CE7468FD9182CE786CE48F83';
wwv_flow_api.g_varchar2_table(2) := 'E0988EC68A81FEB3A9FEB4AAFEB9AFF7B6ADCD9992CC9D96FCCFC9CCABA67F0C00CC1B04CC1805CA1C05CD1E09D6240D8B170A942011E23721D33321CB3525B03021EE432FB23223A72E21B93626BC3928C13C2CCA4130E14938D24534D54836F7523FE0';
wwv_flow_api.g_varchar2_table(3) := '503EFC5846E55542EE5B49EC5B48F96250F16050CB5849FA705EF46F60FD7364F87465FF7B6ACF6558CC7165DA8075EE998ED4887EF8A59ACA867DD28B83E19990EEA59CF1ACA3F9B4ACFDB8AFFFC7C0FCCAC4F4CDC8FAD3CECDB1AECA12007F0A00CE14';
wwv_flow_api.g_varchar2_table(4) := '03DE2618D42F1FA7281BEB3A2BFA4F42C7483BFE5F50E7564BE7695FD48C85CD0E01CC1005CF1C12D83127F23E35C7372ECF3C33FA4C42DA433ABB3A32E74A40EA4F46FF564DFD5A51F6574EF66057E96159FCCFCCF2CECCDCCCCBCC09009D1D19F23A35';
wwv_flow_api.g_varchar2_table(5) := 'BF302AFF6F68D2C3C3FEFAFAD8D5D5FDFCFCECEBEBE7E6E6FBFBFBFAFAFAF9F9F9F6F6F6F2F2F2EEEEEEEBEBEBEAEAEAE5E5E5E1E1E1DEDEDED8D8D8D6D6D6D1D1D1D0D0D0CCCCCCFFFFFF00000000000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(6) := '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(7) := '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(8) := '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000021F90401000099002C0000000012000C004008';
wwv_flow_api.g_varchar2_table(9) := 'CA0001081C48B02041220ED860C064A9C999231A0C35EA00E7810D81352A08AAD267C985040A2CA0D102E2CE041F024FB898234211A203456298A824C9491C094304263142E74901155F58349841A684953A3C72080CB3C24F069A8EB660590449409440';
wwv_flow_api.g_varchar2_table(10) := '34C408F472E28F87008C24192081E912250E807E9811D802829E2B87287141A126CDA44750EC500822B08C923C5306A5E88260C10B375942E001B2432012216D36601A0103CC981E1F125191130187401D0CD630B95488009F3D84064492F2E6860C83B0';
wwv_flow_api.g_varchar2_table(11) := '0D0604003B';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(1233696286371621169)
,p_file_name=>'Kanada.gif'
,p_mime_type=>'image/gif'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '47494638396112000C00F70000000000FFFFFF0086CC0087CC0188CC0288CB0389CE038ACE0388CC058BD0058ACC078BD1098ACD0D93D60D8DCE0D8CCD1095D8189BDE1894D21D9FE121A1E421A2E41F97D51F97D41B78A71A719D2BA9EB279CD82283B3';
wwv_flow_api.g_varchar2_table(2) := '2180B02FAEEE2FAFEE2688B9288ABC35B1F235B2F22B90C22A8DBF31A2DA2D91C42E94C73097CA3299CC38A7E138A9E1349DD2339BCF3EB8F8369FD536A0D442BCFA42BDFA3AA4DA46BFFC41AFE73FA9DF3FAADF42AEE53A98C746B2EA46B3EA4DC3FF49';
wwv_flow_api.g_varchar2_table(3) := 'B6EE49B7EE48B4EC4FC4FF4CBBF251C3FD4EBCF651C3FB50C0F950C1F950BBF157C1F65EC6FA5AB8E764C9FD65C5F76ACDFF098AC81590CC2B9ED3358EB844AFE344B0E14EC3FA50C5FE5AC1F16BCCFA1891C60C8CBB2FA9D755C3EC5CC0E75BBDE15FC4';
wwv_flow_api.g_varchar2_table(4) := 'E91F90B52998BD4CBEE361C8EB1D96B754C1E2148EAE1890AE198FAC69CAE32091A84AB9D037A0B340B2C8165C633A828854A0A776CBD280CFD755B4BB5CC1C781D4D91A5E6145A5A973CDCE27696859BAB675C8C53B9D953EA0983A9A8551AE8F6DBB91';
wwv_flow_api.g_varchar2_table(5) := '4277545EAA7688CC958EC99682B68A9DD7A576B77A6B976383BB77AADC9B416931ACDB9AB4E3A36EA95371A851B0DD9573A74E86B65B7CA944BFE075A8C55394B136CCC00AD8CB10FFFFFF00000000000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(6) := '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(7) := '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(8) := '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000021F90401000099002C0000000012000C000008';
wwv_flow_api.g_varchar2_table(9) := 'C90001081C48B020413B8B32E8709284850405031240A830A28615816E024969A2C4C60506020C3498E04146902302F3205AC204C8860768FC9089A0E1458F223F04BE29840589892C5A265D92B4854E952142700884D3E8CA8A308FCC58C254690DA531';
wwv_flow_api.g_varchar2_table(10) := '4472B410284711150B60229DE973484F19485F76C04821B00EA1280E0AA8E1F3A78D183C717CD0504142E09E4450100C58C006D020438CBCDC70710284C039829E089048410497345DA6B44011A283C03B8E081C18F9614610233C62A428C10183C1D706';
wwv_flow_api.g_varchar2_table(11) := '0302003B';
end;
/
begin
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(1233696551737621170)
,p_file_name=>'Kazachstan.gif'
,p_mime_type=>'image/gif'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '47494638396112000C00F70000000000FFFFFFE04F56A510319E516A98214A5E03406A0D53D5D4D5C7C6C784559A4A4496201D9B9997D70A0A8F18189A2B2BA62F2FB13E3EB14748B83B3DAC9092D88688BF878ABAF1F2FAF6F7FDE9EAEFC0C6C6CDD2D2';
wwv_flow_api.g_varchar2_table(2) := 'F0F5F5D3D7D7F9FCFCD4D5D5C1C2C2B2B3B3A4A5A5D4D5D4AFB0AFC5C5BFFBFBF9D7D7D5737372E9E9E8E7E7E6E0E0DFCDCDCC939392FFF6F0FCF5F4E89694CEA5A4CD0100CA0000D00505D10707CC0E0EDB1414CD403FCC4848D48F8ECFAAAAF8F7F7CC';
wwv_flow_api.g_varchar2_table(3) := 'CBCBFEFEFEFDFDFDFCFCFCFAFAFAF9F9F9F6F6F6F4F4F4F2F2F2F1F1F1F0F0F0EEEEEEECECECEAEAEAE5E5E5E4E4E4E1E1E1DFDFDFDEDEDEDDDDDDDADADAD4D4D4D2D2D2D1D1D1D0D0D0CFCFCFCECECECDCDCDCCCCCCCACACAC8C8C8BFBFBFBCBCBCBBBB';
wwv_flow_api.g_varchar2_table(4) := 'BBB9B9B9B8B8B8B4B4B4B3B3B3B2B2B2B1B1B1B0B0B0A7A7A7A5A5A5A4A4A4A0A0A09D9D9D9B9B9B9999999595959494949393939191918B8B8B8989898585858484848282828080807F7F7F7C7C7C7A7A7A7777777272726D6D6D6B6B6B6363634A4A4A';
wwv_flow_api.g_varchar2_table(5) := '4343433D3D3DFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(6) := '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(7) := '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(8) := '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000021F90401000083002C0000000012000C000008';
wwv_flow_api.g_varchar2_table(9) := 'C90001081C48B020413C78D68C3842C409152D5AAC5C21B324C80F8178DEA079E3C6CA942C5AB058D9F3E74A802102E5946133278E07193A72EC8052E2CE1C1549049E99D2A4CD061E3766D8C011A3831A2E4658084C108048140E0468D4185040008C0F';
wwv_flow_api.g_varchar2_table(10) := '45985011D843C80A1059161838C020828217439620D8221088922D764C5C70F00082840627C674691142E011297D04A5A86281C2840A1950E8F123068C40877000050AD34403861F48EAF071E1C58C4012597CE449F3248990934BBED02123E28CC1D706';
wwv_flow_api.g_varchar2_table(11) := '0302003B';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(1233696861878621170)
,p_file_name=>'Korea.gif'
,p_mime_type=>'image/gif'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '47494638396112000C00F70000000000FFFFFFD03536C73A3BE767683A3B3BC69000C79205D39E10CD9C18AC8621ECBA35DEB138CEA434F7C746C88D00C98F03CA9405C89009D1970DDCA41DDFAB21D29E1FA47C1BEAB32FAF8623B89028BB902AC39A2E';
wwv_flow_api.g_varchar2_table(2) := 'D1A435F6C142E1B542E6B746FBC84FFACB50F1C44EC79A30F5C450C78400C68503CC8A07CA8C12D69514E2A326B68526D8A02FC08F2DEFB33ACB9833DBA73EF9BF4AEEB74CF8C151EEB950C80C01C70C01CE140AC9170DD92218D33027E5352BBE332CC9';
wwv_flow_api.g_varchar2_table(3) := '3A31F3473ED5423AFA564DEA5149E85048F65A51F96B64CB0000C70000AD0100C80303AD0303CF0505CC0505B20707C70909D00D0DD710100B0101B21212BD1414D21818DB1D1DE32121CF2020CA2626E92F2FF13535932121C63030C22F2FE13838D234';
wwv_flow_api.g_varchar2_table(4) := '34F54242D83A3AFC4646E24140E44242E54646C73F3EFE5050FA4F4FF54E4EF45050E34A4AD94C4CF55757E35151D95050BE4646F55E5EF46565FE6A6A130A0A160D0D100A0A211818342B2B2F2727473E3E302A2A504848554D4D595151504949605959';
wwv_flow_api.g_varchar2_table(5) := '6B64646A6A6A6565655E5E5E5757575050504F4F4F4646464242424141413838383535353232322F2F2F2121211F1F1F1D1D1D1919191818181111111010100D0D0D090909050505030303FFFFFF00000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(6) := '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(7) := '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(8) := '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000021F9040100009A002C0000000012000C000008';
wwv_flow_api.g_varchar2_table(9) := 'C80001081C48B0A041490504155A340913004C951E3142646820A54683082982740940264B911C253A5411809D3D8002F1C953274A143A77F0E8E9E3E78FC02D7008BCE9224509922653B08459E3868D198103E6B4F1428589912550AC681173260D992F';
wwv_flow_api.g_varchar2_table(10) := '02E5C41973C5C991244FAA640183464D19015C041619B223C70D1B3874F0F811848810203E7A08ACD122C509132854AC782183C68C18305CB010C820C1010311105458E040C4880F0D38685020D0828407102650C0E0214409101D486CC870C1A06B8301';
wwv_flow_api.g_varchar2_table(11) := '01003B';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(1233697139349621171)
,p_file_name=>'Niemcy.gif'
,p_mime_type=>'image/gif'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '47494638396112000C00F70000000000FFFFFFD1B1B3E2C2C4F0D1D3BBA2A4C6ACAED3B8BAF7D9DCE7CBCEE5C9CCF4D7DAF6DCDF0124628B96AAA6B0C2072B6910347112346E1D407C27487E415F925774A495A0B2052F698898AE8795A896A5BAA0AFC3';
wwv_flow_api.g_varchar2_table(2) := '0030690A376F0E3B713659833E6089ACBBCE19497E2A55853F66914A739F5983B0668DB76E92B9607B99829CB8869DB627598D3A6A9D385F884C7BAC4F78A35985B35C7E9F6287A97195B66484A16887A56F8EAB82A5C47592AC91B2D185A3BE748DA597';
wwv_flow_api.g_varchar2_table(3) := 'B7D592B1CE98B2C9A7C2DBAAC2D9B3CADF97B6D0CD837DF1C6C2CEBCBBCD3C38CC5855CE5B57CC605BF59390C67875FEA09DD48A88F7A5A2CC00007F0000CD0101CE0303D00505CC0505CD0909D40A0AD60D0DD810108B0A0ACF1212DE1818D218189411';
wwv_flow_api.g_varchar2_table(4) := '11E11D1DE42121D4201F9D1919A71B1BEB2B2BB02121EE2F2FB22323BC2828F23535BF2A2AC72E2EB92C2BF53A3ACA3030B22A2ADD3635CC3532E13838D53635D23434F83E3EC43332FA4242BB3232CF3939FC4646E54242EA4646FF4D4DE04544EE4949';
wwv_flow_api.g_varchar2_table(5) := 'FF4F4FFE5050FE5150F64E4EFB5151F95050D24845F25352FD5857F15756E95959E86966F2706ED16361FA7D7ADB7270E88280A7605FE08B89F29B99FDA3A1FDA5A3FFAAA9DEC6C6FFFFFF00000000000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(6) := '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(7) := '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(8) := '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000021F90401000099002C0000000012000C000008';
wwv_flow_api.g_varchar2_table(9) := 'C90001081C48B020412952C6341962E1C1212B51AA6809A3668F208152BEE48122A4C2052451A8640173064F204302B7C059640908050772A660E952C68E9F4280044A7A72C9080B091A8A3882148989934A942609EC1184C88A101840CCA05123C70E1F';
wwv_flow_api.g_varchar2_table(10) := '3F78E81098028509121F3A7818D1C2050C19276294782190810201475434C880690001040B121C305040A0A2385C96D880B081919B418910FDD173A78DC0395EAC24B9118143238B84F8D46193C68C403157A228C13141C4A3937DE8BC5983868CC1D706';
wwv_flow_api.g_varchar2_table(11) := '0302003B';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(1233697453029621171)
,p_file_name=>'Norwegia.gif'
,p_mime_type=>'image/gif'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '47494638396112000C00F70000000000FFFFFFC7C1C2FFFEFFC6C7C7E0E0DFCDCDCCCC0000CD0101CC0101CE0303CC0303D00505CC0505D10707CD0909D40A0AD60D0DCE0D0DD81010CF1212DB1414DE1818D21818E11D1DE42121D4201FCC1E1ECE2020';
wwv_flow_api.g_varchar2_table(2) := 'E82626A71B1BEB2B2BD82727CD2525B02121EE2F2FD62A2AB22323B92626DD302FBC2828F23535BF2A2AC42D2DC12C2CC72E2EF53A3ACA3030CD3231E13838D53635D23434CF3333F83E3EE13939FA4242DA3A3AE03F3ED43A3AFC4646E54242FE4A4AEA';
wwv_flow_api.g_varchar2_table(3) := '4646FF4D4DEE4949EC4848FF4F4FFE5050F24C4CEE4B4BFD5151F64E4EFB5151F95050F15050CA4746D54D4DFA5D5DE75958FD6464EA5D5DFF6968F96868FA7474F87B7BD8D1D1D0C9C9CCC5C5F2EBEBE4DDDDD2CCCCFFF9F9FEF8F8FCF6F6F6F0F0E5DF';
wwv_flow_api.g_varchar2_table(4) := 'DFE1DBDBD2CDCDDDDCDCFEFEFEFDFDFDFCFCFCFBFBFBFAFAFAF9F9F9F8F8F8F7F7F7F6F6F6F5F5F5F2F2F2F1F1F1EEEEEEECECECEBEBEBE9E9E9E8E8E8E7E7E7E4E4E4E1E1E1DEDEDEDBDBDBD8D8D8D6D6D6D4D4D4D2D2D2D1D1D1D0D0D0CFCFCFCECECE';
wwv_flow_api.g_varchar2_table(5) := 'CDCDCDCCCCCCBBBBBBB2B2B2A7A7A79D9D9D9494948B8B8B7F7F7FFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(6) := '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(7) := '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(8) := '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000021F9040100008A002C0000000012000C000008';
wwv_flow_api.g_varchar2_table(9) := 'CB0001081C48B020C144890C1108B0C60E1F4182FCE4A9D3A6CC1881890E0D527386CE9E408200E9B1F3E64C00340211119243064E1E408202EDB913274D00336F0416DA33C08D983F820CF4C13387CD18326D0A0814B0C50B182D57AE58A992054B172E';
wwv_flow_api.g_varchar2_table(10) := '5EBE841148658A131D2136702061A348932852A0305922F04910101212208060E1438D1F4880E080C142A0921314161C7050A1838B1E4688E4A0B1C284C018171A1C603021438A1D438EF098D1028508811A1E1C501001C3881B4292F890F14245090F06';
wwv_flow_api.g_varchar2_table(11) := '631B0C08003B';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(1233697713636621172)
,p_file_name=>'Polska.gif'
,p_mime_type=>'image/gif'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '47494638396112000C00F70000000000FFFFFFAC0D18AC101AB1141EB21E28C9323CA22F37C13A43AD373ED7454FB73D45C64951E2555ED8575FE25C65D85A62BC202BDBE2EABCC5CE7C8288A2A8AEEAF2FA206EB32E74B2316DA23875AB549AD94F8FC9';
wwv_flow_api.g_varchar2_table(2) := '589BD7B5BFC8B4BEC7C7D0D8D4DDE5E2EBF3005AA4055FA8095AA1095AA01069B11066AC1262A81561A4186BAE1B6BAD2178BE2E81C4327FC2276090347AB43883C0367EB84697D9458FD0428AC53B79AC4080B7468AC2509DDC4E98D5529FDD5091CA57';
wwv_flow_api.g_varchar2_table(3) := '9DD64C89BA6AACE169A7DD6EAEE3D9E1E8E7EFF6D8DFE5EBF2F8005EA70360A9055EA50963A90961A70D69B20C62A71D77BE1D72B61F73B42F87CC3589CC3077AF3781BC4297D94292D2418DC84691CC4FA0DF509DDA539AD358A2DD579CD35EA5DD66A9';
wwv_flow_api.g_varchar2_table(4) := 'DEB7C1C9C3CCD3C6C7C7CC0000C80000C90303D00505CC0505C80909D10D0DD81010D21818DC1D1DE42121D2201FA41B1BB02121EA2F2FAF2323BC2828F23535BB2A2AC72E2EC73030E13838D23434D13635F64242FC4646E54242E64646FE5050FB4F4F';
wwv_flow_api.g_varchar2_table(5) := 'F64E4EF55050FEFEFEFCFCFCFAFAFAF9F9F9F7F7F7F6F6F6F2F2F2EEEEEEE7E7E7E4E4E4E1E1E1D8D8D8D6D6D6D4D4D4D2D2D2D0D0D0CECECECDCDCDCCCCCCBBBBBB9D9D9D9494947F7F7FFFFFFF00000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(6) := '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(7) := '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(8) := '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000021F9040100009A002C0000000012000C000008';
wwv_flow_api.g_varchar2_table(9) := 'CB0001081C48B020C14C992E890980A851A44A952439629488D020819930593A546811244A95263D6AA4A85000430229542862644818301F3C4C0011428405221204C2F821A40B15164D96A078E2C20A0F2E5B7208BC01C4878C1549469038D1420A0D1D';
wwv_flow_api.g_varchar2_table(10) := '3B6CC410F8C5CB15284A8E2061E2244A952C5AB0CC98223008070C2A4C944871E1458D0D1D7AE0D090412004040506082010C18082060F1C305890E080403C6BCE8C31A3A60D1D3E7F02F5C963670E1C816ED0902993864D9C3D8004F9D173A78E9C3706';
wwv_flow_api.g_varchar2_table(11) := '631B0C08003B';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(1233698080005621172)
,p_file_name=>'Rosja.gif'
,p_mime_type=>'image/gif'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '47494638396112000C00F70000000000FFFFFF8B8A9DA1A1B45C5E75A5A7BDD2D3DC2A31516B7292737C9BEAECF39CA4BC6578A67789B163676F1E3B70002666052B6A052B690A2E6710367415376E21468221447B35589333558B3452834669A1416092';
wwv_flow_api.g_varchar2_table(2) := '426193324A703B5581415D895071A74E6DA15574A64F6C9A506D9B4255736A85B0646E7E0A2E6612366E1F447B2E4F80324D7638547F3E5D8946679A5877A65A78A3A5B7D1002E6B03306E0935710D3A771D49842F5A94305381365989426BA338588439';
wwv_flow_api.g_varchar2_table(3) := '5984466A9C4F76AB5075A843628C4A69945E80B06686B26C8AB26A83A67B97BE7993B7809BC08E99A8AFBDCFEAF0F6E7E7E6BA1A0AB71B0DBE1E0FBB1E10B81D10B82215C7291AC02719C23022CC3629D33A2BC2372B982D24A33228AF3A2FDA483BA335';
wwv_flow_api.g_varchar2_table(4) := '2CE14C3EBA4236AF3D33D34E41C5483DBA443AC44A3FEC5D50E75A4ED7564AD95B50EF6659E76356EC655AE7655BA7433EDB645EA41D18A51F1AA9241EAA2D28B4302BC2413C9C3B37BB4843D0544FB14945C05551D2645FDB6A65D167627C7878888484';
wwv_flow_api.g_varchar2_table(5) := 'FEFEFEFCFCFCFBFBFBFAFAFAF9F9F9F8F8F8F6F6F6F2F2F2EEEEEEEBEBEBE4E4E4E1E1E1DEDEDED8D8D8D6D6D6D4D4D4D2D2D2D0D0D0CECECECDCDCDCCCCCC7F7F7FFFFFFF00000000000000000000000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(6) := '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(7) := '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(8) := '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000021F90401000097002C0000000012000C000008';
wwv_flow_api.g_varchar2_table(9) := 'CB0001081C48B020414B0E502C51708851A44A9524395A84485020817F0E786050C009244A95263D62948850804202011160326380A3499528416AA4C850804189049A10D0C40002213E7ABC1822C3081225498E08FCD060418207122044A06001C38610';
wwv_flow_api.g_varchar2_table(10) := '223A681058840887153668D4B88123070F20417EECD021F004091615524C507121038C11314A8070D142A01F3C74E4C49953C74E1E387DF8ECD1F3E68EC03157A43C8952250B98336BD8A42113A60B17815AA8409962058B17346DDCA8315346CC972D06';
wwv_flow_api.g_varchar2_table(11) := '631B0C08003B';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(1233698366486621173)
,p_file_name=>'Słowenia.gif'
,p_mime_type=>'image/gif'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '47494638396112000C00F70000D5D4D5C7C6C7C1C2C2B2B3B3D4D5D4E0E0DFDDDDDCCDCDCCCBC6C5E3DEDDFAEFEDF0E9E8C67971CBC3C2B11507B51B0DB21A0DA8190CB71E10B51E10B31E11BC2113B51F12A91E11BE2315C32618BC2719B82619BE2A1D';
wwv_flow_api.g_varchar2_table(2) := 'AD291DB82E21BA2F23C73628C83629C03427CE3B2DC0362A852921D24235CF4235B83C31D9493BB83F34D64A3EB94136A43C32CF4C40B9443AAC4137E35649CE4D42C1493EC74C41BA483DCB4E43C04A3FD15146B3463CDD594DCD5448D9594DBD4D43A3';
wwv_flow_api.g_varchar2_table(3) := '433AEA6255D0574CC85349DF5E52D55B4FB64D43DC5D52D75B50E46357DB5E53EB665ACB584EE66459DF6257C1554CC2574DD76156C75950DF655ABC554CE4675DDE665BBA564CEA6E63E16B61D8695FD1655CE57267EB786DC9665DCF6A61E7796EEB7D';
wwv_flow_api.g_varchar2_table(4) := '73E37A70EA837AEE8A81EC8980ED8D85EBA49DCB9F9BC59B97C69D99F5C4C0C7A09CF9D0CCEFE3E2B51107E55A51F8F7F7FFFFFFFEFEFEFDFDFDFCFCFCFBFBFBFAFAFAF9F9F9F5F5F5F2F2F2F1F1F1EEEEEEECECECEBEBEBE8E8E8E5E5E5E1E1E1DEDEDE';
wwv_flow_api.g_varchar2_table(5) := 'D8D8D8D6D6D6D4D4D4D2D2D2D1D1D1D0D0D0CECECECDCDCDCCCCCCCACACAC4C4C4BCBCBCB9B9B9B2B2B2B0B0B0A7A7A79494948B8B8B7F7F7F00000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(6) := '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(7) := '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(8) := '0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002C0000000012000C000008CB0029091C48B020';
wwv_flow_api.g_varchar2_table(9) := 'C149934A10F972C5C6070A102C7018E1624E1C819322F9F0A205871334675854089182071C3B022539EAB2C5880829891035C9602206133A7A04421A04260A0D0F550E14E27242C70F2A780A080C00078B0C330D10180A9460419A244FFC1012F8A64E10';
wwv_flow_api.g_varchar2_table(10) := '126A121D12F4474F9D354B9400502450CE1E141B54D46000884F19316190F4382040601E031D26386803A5CF9D316E8AECC8B1A891C03F842E3CB080210B1B05648400990183D1238104104590A001C48A2356A60CB9F1A2C5004806631B0C08003B';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(1233698661839621173)
,p_file_name=>'Szwajcaria.gif'
,p_mime_type=>'image/gif'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '47494638396112000C00F70000000000FFFFFFC16163C66768C56B6DCF7274DC8183D38182B06C6DEA9193C67D7ED68C8DF3A0A1F3A3A4C34D52BE5A5EC06265AE6164EE8A8DD17A7ED68184E89A9CBA4950BB5257BD5459B65158C65D62C16065D26C71';
wwv_flow_api.g_varchar2_table(2) := 'A2575CE07C81B96A6EEE9398E68E93C27379B76870BD8288D2A7AE5C53A9271E8431288A5D56AA625D9C2622634B469F7772C18B86CD1D1A58363295534F996461B76F6CBE807DCD817EC98986D01413571A1858201F6932307436357D4A49A74645905B';
wwv_flow_api.g_varchar2_table(3) := '5AA76C6BC17372BD7F7ECF3D3D867172C86667A3717AB8A5ACDFA8AFE0606BAE8C95CBCB6862CC6863CC6E68D6807BEB9B96C78381FBB0ADC33333C53636C83B3ACD3F3FD84E4EC94D4CCB5151E65F5FD55D5DF27070CF6262E26D6DF77B7BF27A7AD870';
wwv_flow_api.g_varchar2_table(4) := '70EF7F7FCD6F6FE68080DB7A7AF88C8CED8989D67B7BCB7675F89090C37271CE7979F29090D07D7DE38B8BF79A99F29797BB7575DD8C8CBB7777C7807FF09B9BD48B8AC58282EA9D9CF8A6A6CC8989C58584C38383E99D9DE89D9DCC8B8BF4A7A7C48786';
wwv_flow_api.g_varchar2_table(5) := 'CC8D8DF5AAAAD69595DF9C9CF8B0B0EFAAAAD79B9AE3A4A4CC9594C79191C69191A07575CA9595AC7F7FF1B3B3E5AAAAD09C9BC49292B88989D39E9ECD9C9BF2B9B8F8BDBDE8B1B1F5BDBCE2AFAEDFACACF6C0C0F1BCBCECBBBBF7C8C7FACBCBFFFFFF00';
wwv_flow_api.g_varchar2_table(6) := '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(7) := '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(8) := '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000021F904010000A1002C0000000012000C000008';
wwv_flow_api.g_varchar2_table(9) := 'CB0001081C48B020C1173874A8B0D1A24424458B1A51DAE4E91328813772F4A831C484832951A450A982454B172F02570801E242060B124FECE41984E8D1A54C9804EEF01164060F1416AC5CC9C2050C193465C6088C41E3470A1827469C6113E78EA042';
wwv_flow_api.g_varchar2_table(10) := '8608F91178C448922248883CD8F245CC1A376FDAA84923108A93264C942C0963A60D1D3C7FFAD4992347209F030420081850C04002060D2A2C50000781C0091B2E64C0A08183070920425010F1214207818900EDD113E810244B9C3A69AA246992234606';
wwv_flow_api.g_varchar2_table(11) := '631B0C08003B';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(1233698905847621174)
,p_file_name=>'USA.gif'
,p_mime_type=>'image/gif'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '47494638396112000C00F70000000000FFFFFFD03536E8D5D6007000006E000046000371030370030573050974090D750D0A510A0F770F107710127A12137B13177B17187E181159111B811B1F831F1F8220196219258425278827216A212A752A389538';
wwv_flow_api.g_varchar2_table(2) := '389338327E323A863B3B873B48A24850A95046944650A75057AE5754A7545EB35E59A85964B86464B66468BA6865B4656ABB6A69B86974C074C2CAC2C1C9C1BEC6BEBDC5BDD2DAD2C9D1C9BEC5BECBD2CBDAE1DAEAF0EA308F2F3C943B419C4066B565CD';
wwv_flow_api.g_varchar2_table(3) := 'CDCCEADBDAD21B1BDE2121A31B1BDB2727AB2121E82F2FAE2323B52626B72828EC3535BA2A2AE53635BD2C2CC32E2EC02D2DC83231C53030CE3434CD3434CA3333F23E3EF44242D53A3AF74646EF4444DB3F3EE04242F84A4AD03F3EE44646F94D4DE949';
wwv_flow_api.g_varchar2_table(4) := '49F94F4FF95050F75050F14E4EED4C4CF85151F45050F65151E04B4BF95958ED5555F65B5BD0BDBDD6C3C3DECBCBF2E0E0FFEEEEFAE9E9FDEDEDF6E6E6FEFEFEFCFCFCFAFAFAF9F9F9F8F8F8F5F5F5F2F2F2EEEEEEEBEBEBE8E8E8E4E4E4E1E1E1DEDEDE';
wwv_flow_api.g_varchar2_table(5) := 'DBDBDBD8D8D8D6D6D6D4D4D4D2D2D2D1D1D1D0D0D0CECECECDCDCDCCCCCCFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(6) := '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(7) := '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(8) := '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000021F9040100008B002C0000000012000C000008';
wwv_flow_api.g_varchar2_table(9) := 'CB0001081C48B0204103062E7C7891E34F21458AD8000992E44A188106267860E10207A1448A10B51952A40A183302196C40A1C2C40D448A121172B3848A97335F046A18B182C48E188A7C180A3400CB963264B20804D1A244070C36141D12E4E78D9830';
wwv_flow_api.g_varchar2_table(10) := '63B44811D8E3040F0B1166201AF4674F9C3466BA0880223045880C0B1CC82004880F1E386BBE5879C244A0081D0F10348011A84F1E3A72D46499E2E488400E1212148050C38F9E3A74E6A089D204091181151410384081C61E3B01EEFCE0024589112106';
wwv_flow_api.g_varchar2_table(11) := '631B0C08003B';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(1233699203909621174)
,p_file_name=>'Włochy.gif'
,p_mime_type=>'image/gif'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(1066213248218455644)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'modern'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(1066213328282455645)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SWITCH'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(1066213486759455645)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(1066213571860455645)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(1066213675983455645)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(1066213751694455645)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'IG'
);
end;
/
prompt --application/shared_components/security/authorizations
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(1082261105747272672)
,p_name=>'Admin'
,p_scheme_type=>'NATIVE_EXISTS'
,p_attribute_01=>'SELECT 1 FROM uzytkownik WHERE login=:APP_USER and rola_id=2;'
,p_error_message=>'Nie jesteś adminem'
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_processes
begin
null;
end;
/
prompt --application/shared_components/logic/application_items
begin
null;
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs
begin
null;
end;
/
prompt --application/shared_components/navigation/trees
begin
null;
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(1066282754210455731)
,p_name=>' Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(1066283308657455731)
,p_parent_id=>0
,p_short_name=>'Start'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(1197053838043389142)
,p_parent_id=>wwv_flow_api.id(1066283308657455731)
,p_short_name=>'Sezony'
,p_link=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.:::'
,p_page_id=>50
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(1198259770436843604)
,p_parent_id=>wwv_flow_api.id(1197053838043389142)
,p_short_name=>'Konkursy i klasyfikacje'
,p_link=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.:::'
,p_page_id=>51
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(1201601091853573320)
,p_parent_id=>wwv_flow_api.id(1198259770436843604)
,p_short_name=>'Wyniki'
,p_link=>'f?p=&APP_ID.:52:&SESSION.'
,p_page_id=>52
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(1216985028178811625)
,p_parent_id=>wwv_flow_api.id(1066283308657455731)
,p_short_name=>'Sezony'
,p_link=>'f?p=&APP_ID.:60:&SESSION.::&DEBUG.:::'
,p_page_id=>60
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(1218647207098539387)
,p_parent_id=>wwv_flow_api.id(1216985028178811625)
,p_short_name=>'Konkursy i klasyfikacje'
,p_link=>'f?p=&APP_ID.:61:&SESSION.::&DEBUG.:::'
,p_page_id=>61
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(1219690252225011691)
,p_parent_id=>wwv_flow_api.id(1218647207098539387)
,p_short_name=>'Wyniki'
,p_link=>'f?p=&APP_ID.:62:&SESSION.'
,p_page_id=>62
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(1222000691176429340)
,p_parent_id=>wwv_flow_api.id(1066283308657455731)
,p_short_name=>'Kraje'
,p_link=>'f?p=&APP_ID.:70:&SESSION.::&DEBUG.:::'
,p_page_id=>70
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(1222306799502493548)
,p_parent_id=>wwv_flow_api.id(1222000691176429340)
,p_short_name=>'Skocznie'
,p_link=>'f?p=&APP_ID.:71:&SESSION.'
,p_page_id=>71
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(1243017849944666902)
,p_parent_id=>wwv_flow_api.id(1198259770436843604)
,p_short_name=>'Klasyfikacja Indywidualna'
,p_link=>'f?p=&APP_ID.:55:&SESSION.::&DEBUG.:::'
,p_page_id=>55
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(1243380613630772871)
,p_parent_id=>wwv_flow_api.id(1198259770436843604)
,p_short_name=>'Klasyfikacja Drużynowa'
,p_link=>'f?p=&APP_ID.:56:&SESSION.'
,p_page_id=>56
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(1304661306212081889)
,p_parent_id=>wwv_flow_api.id(1066283308657455731)
,p_short_name=>'Reprezentacje'
,p_link=>'f?p=&APP_ID.:80:&SESSION.'
,p_page_id=>80
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(1326271459259154210)
,p_parent_id=>wwv_flow_api.id(1218647207098539387)
,p_short_name=>'Klasyfikacja Indywidualna'
,p_link=>'f?p=&APP_ID.:65:&SESSION.'
,p_page_id=>65
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(1327016600722656509)
,p_parent_id=>wwv_flow_api.id(1218647207098539387)
,p_short_name=>'Klasyfikacja Drużynowa'
,p_link=>'f?p=&APP_ID.:66:&SESSION.'
,p_page_id=>66
);
end;
/
prompt --application/shared_components/navigation/breadcrumbs/puchar_świata
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(1195928619412694411)
,p_name=>'Puchar Świata'
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(1066214160597455646)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_internal_name=>'LEFT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>  ',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            <div class="t-Footer-srMode">#SCREEN_READER_TOGGLE#</div>',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066215573394455652)
,p_page_template_id=>wwv_flow_api.id(1066214160597455646)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066215760741455653)
,p_page_template_id=>wwv_flow_api.id(1066214160597455646)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066215890143455653)
,p_page_template_id=>wwv_flow_api.id(1066214160597455646)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066215901610455653)
,p_page_template_id=>wwv_flow_api.id(1066214160597455646)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066216035622455653)
,p_page_template_id=>wwv_flow_api.id(1066214160597455646)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066216196884455653)
,p_page_template_id=>wwv_flow_api.id(1066214160597455646)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066216290708455653)
,p_page_template_id=>wwv_flow_api.id(1066214160597455646)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066216375941455653)
,p_page_template_id=>wwv_flow_api.id(1066214160597455646)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(1066216470276455654)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_internal_name=>'LEFT_AND_RIGHT_SIDE_COLUMNS'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>  ',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            <div class="t-Footer-srMode">#SCREEN_READER_TOGGLE#</div>',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066216558571455654)
,p_page_template_id=>wwv_flow_api.id(1066216470276455654)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066216660762455654)
,p_page_template_id=>wwv_flow_api.id(1066216470276455654)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066216707451455654)
,p_page_template_id=>wwv_flow_api.id(1066216470276455654)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066216825068455654)
,p_page_template_id=>wwv_flow_api.id(1066216470276455654)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066216936436455654)
,p_page_template_id=>wwv_flow_api.id(1066216470276455654)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066217087540455654)
,p_page_template_id=>wwv_flow_api.id(1066216470276455654)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066217138010455654)
,p_page_template_id=>wwv_flow_api.id(1066216470276455654)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066217286055455654)
,p_page_template_id=>wwv_flow_api.id(1066216470276455654)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066217366826455655)
,p_page_template_id=>wwv_flow_api.id(1066216470276455654)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(1066217470732455655)
,p_theme_id=>42
,p_name=>'Login'
,p_internal_name=>'LOGIN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody--login no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #REGION_POSITION_01#',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  <div class="t-Body-wrap">',
'    <div class="t-Body-col t-Body-col--main">',
'      <div class="t-Login-container">',
'      #BODY#',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066217586446455655)
,p_page_template_id=>wwv_flow_api.id(1066217470732455655)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066217679732455655)
,p_page_template_id=>wwv_flow_api.id(1066217470732455655)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(1066217751123455656)
,p_theme_id=>42
,p_name=>'Marquee'
,p_internal_name=>'MASTER_DETAIL'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-info" id="t_Body_info">',
'        #REGION_POSITION_02#',
'      </div>',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>  ',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            <div class="t-Footer-srMode">#SCREEN_READER_TOGGLE#</div>',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066217897809455656)
,p_page_template_id=>wwv_flow_api.id(1066217751123455656)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066217933624455656)
,p_page_template_id=>wwv_flow_api.id(1066217751123455656)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066218069807455656)
,p_page_template_id=>wwv_flow_api.id(1066217751123455656)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066218129806455656)
,p_page_template_id=>wwv_flow_api.id(1066217751123455656)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066218202412455656)
,p_page_template_id=>wwv_flow_api.id(1066217751123455656)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066218306139455656)
,p_page_template_id=>wwv_flow_api.id(1066217751123455656)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066218435216455656)
,p_page_template_id=>wwv_flow_api.id(1066217751123455656)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066218539317455656)
,p_page_template_id=>wwv_flow_api.id(1066217751123455656)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066218685863455656)
,p_page_template_id=>wwv_flow_api.id(1066217751123455656)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(1066218779267455656)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_internal_name=>'MINIMAL_NO_NAVIGATION'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          <div class="t-Footer-body">',
'            <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'            <div class="t-Footer-apex">',
'              <div class="t-Footer-version">#APP_VERSION#</div>  ',
'              <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'              <div class="t-Footer-srMode">#SCREEN_READER_TOGGLE#</div>',
'            </div>',
'          </div>',
'          <div class="t-Footer-top">',
'            <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'          </div>',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066219047452455658)
,p_page_template_id=>wwv_flow_api.id(1066218779267455656)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066219154331455658)
,p_page_template_id=>wwv_flow_api.id(1066218779267455656)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066219211887455658)
,p_page_template_id=>wwv_flow_api.id(1066218779267455656)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066219372873455658)
,p_page_template_id=>wwv_flow_api.id(1066218779267455656)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066219455879455658)
,p_page_template_id=>wwv_flow_api.id(1066218779267455656)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066219583993455658)
,p_page_template_id=>wwv_flow_api.id(1066218779267455656)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066219690133455658)
,p_page_template_id=>wwv_flow_api.id(1066218779267455656)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(1066219793536455658)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_internal_name=>'MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--standard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'      <div class="t-Dialog-bodyWrapperIn"><div class="t-Dialog-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'      </div></div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},''t-Dialog-page--standard ''+#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066219973299455658)
,p_page_template_id=>wwv_flow_api.id(1066219793536455658)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066220088294455658)
,p_page_template_id=>wwv_flow_api.id(1066219793536455658)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066220162380455658)
,p_page_template_id=>wwv_flow_api.id(1066219793536455658)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(1066220412638455659)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_internal_name=>'RIGHT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8"> ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>  ',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            <div class="t-Footer-srMode">#SCREEN_READER_TOGGLE#</div>',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066220642958455660)
,p_page_template_id=>wwv_flow_api.id(1066220412638455659)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066220830895455660)
,p_page_template_id=>wwv_flow_api.id(1066220412638455659)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066220947874455660)
,p_page_template_id=>wwv_flow_api.id(1066220412638455659)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066221065263455660)
,p_page_template_id=>wwv_flow_api.id(1066220412638455659)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066221123029455660)
,p_page_template_id=>wwv_flow_api.id(1066220412638455659)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066221229633455660)
,p_page_template_id=>wwv_flow_api.id(1066220412638455659)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066221324976455660)
,p_page_template_id=>wwv_flow_api.id(1066220412638455659)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066221403609455660)
,p_page_template_id=>wwv_flow_api.id(1066220412638455659)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(1066221527912455660)
,p_theme_id=>42
,p_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          <div class="t-Footer-body">',
'            <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'            <div class="t-Footer-apex">',
'              <div class="t-Footer-version">#APP_VERSION#</div>  ',
'              <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'              <div class="t-Footer-srMode">#SCREEN_READER_TOGGLE#</div>',
'            </div>',
'          </div>',
'          <div class="t-Footer-top">',
'            <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'          </div>',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066221604473455660)
,p_page_template_id=>wwv_flow_api.id(1066221527912455660)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>false
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066221723742455660)
,p_page_template_id=>wwv_flow_api.id(1066221527912455660)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066221825041455660)
,p_page_template_id=>wwv_flow_api.id(1066221527912455660)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066221983680455660)
,p_page_template_id=>wwv_flow_api.id(1066221527912455660)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066222025794455660)
,p_page_template_id=>wwv_flow_api.id(1066221527912455660)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066222107800455660)
,p_page_template_id=>wwv_flow_api.id(1066221527912455660)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066222380749455660)
,p_page_template_id=>wwv_flow_api.id(1066221527912455660)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(1066222512497455661)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_internal_name=>'WIZARD_MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--wizard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'      <div class="t-Dialog-bodyWrapperIn"><div class="t-Dialog-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'      </div></div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},''t-Dialog-page--wizard ''+#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066222615828455661)
,p_page_template_id=>wwv_flow_api.id(1066222512497455661)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066222717704455661)
,p_page_template_id=>wwv_flow_api.id(1066222512497455661)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066222877253455661)
,p_page_template_id=>wwv_flow_api.id(1066222512497455661)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(1066265754362455703)
,p_template_name=>'Icon'
,p_internal_name=>'ICON'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"><'
||'/span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(1066265958847455704)
,p_template_name=>'Text'
,p_internal_name=>'TEXT'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(1066266124075455704)
,p_template_name=>'Text with Icon'
,p_internal_name=>'TEXT_WITH_ICON'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(1066223107818455662)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">#BODY#</div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_internal_name=>'ALERT'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066223382895455662)
,p_plug_template_id=>wwv_flow_api.id(1066223107818455662)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(1066225257254455665)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(1066225549242455666)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes (No Grid)'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES_NO_GRID'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3369790999010910123
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066225725936455667)
,p_plug_template_id=>wwv_flow_api.id(1066225549242455666)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066225801228455667)
,p_plug_template_id=>wwv_flow_api.id(1066225549242455666)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(1066225962691455667)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##CLOSE##DELETE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      <h2 class="t-ButtonRegion-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_internal_name=>'BUTTONS_CONTAINER'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066226191240455667)
,p_plug_template_id=>wwv_flow_api.id(1066225962691455667)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066226227676455667)
,p_plug_template_id=>wwv_flow_api.id(1066225962691455667)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(1066226998626455668)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'   <div class="t-Region-carouselRegions">',
'     #SUB_REGIONS#',
'   </div>',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_internal_name=>'CAROUSEL_CONTAINER'
,p_javascript_file_urls=>'#IMAGE_PREFIX#plugins/com.oracle.apex.carousel/1.1/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066227132892455668)
,p_plug_template_id=>wwv_flow_api.id(1066226998626455668)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066227220459455668)
,p_plug_template_id=>wwv_flow_api.id(1066226998626455668)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(1066231052758455671)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems  t-Region-headerItems--controls">',
'    <button class="t-Button t-Button--icon t-Button--hideShow" type="button"></button>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>'))
,p_page_plug_template_name=>'Collapsible'
,p_internal_name=>'COLLAPSIBLE'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066231249226455671)
,p_plug_template_id=>wwv_flow_api.id(1066231052758455671)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066231323874455671)
,p_plug_template_id=>wwv_flow_api.id(1066231052758455671)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(1066233664155455672)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ContentBlock #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ContentBlock-header"><h1 class="t-ContentBlock-title">#TITLE#</h1></div>',
'  <div class="t-ContentBlock-body">#BODY#</div>',
'  <div class="t-ContentBlock-buttons">#PREVIOUS##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Content Block'
,p_internal_name=>'CONTENT_BLOCK'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-ContentBlock--h1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2320668864738842174
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(1066234629134455673)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-wrap">',
'    <div class="t-HeroRegion-col t-HeroRegion-col--left"><span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'      <h1 class="t-HeroRegion-title">#TITLE#</h1>',
'      #BODY#',
'    </div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Hero'
,p_internal_name=>'HERO'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066234814989455674)
,p_plug_template_id=>wwv_flow_api.id(1066234629134455673)
,p_name=>'Region Body'
,p_placeholder=>'#BODY#'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(1066235469553455674)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-wrap">',
'    <div class="t-DialogRegion-bodyWrapperOut"><div class="t-DialogRegion-bodyWrapperIn"><div class="t-DialogRegion-body">#BODY#</div></div></div>',
'    <div class="t-DialogRegion-buttons">',
'       <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'         <div class="t-ButtonRegion-wrap">',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'         </div>',
'       </div>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_internal_name=>'INLINE_DIALOG'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066235661614455674)
,p_plug_template_id=>wwv_flow_api.id(1066235469553455674)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(1066237061632455677)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#" role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Interactive Report'
,p_internal_name=>'INTERACTIVE_REPORT'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(1066237433146455677)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'  </div>',
'  <div class="t-Login-body">',
'    #BODY#',
'  </div>',
'  <div class="t-Login-buttons">',
'    #NEXT#',
'  </div>',
'  <div class="t-Login-links">',
'    #EDIT##CREATE#',
'  </div>',
'  #SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_internal_name=>'LOGIN'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066237636876455677)
,p_plug_template_id=>wwv_flow_api.id(1066237433146455677)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(1066237758001455677)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066237884560455678)
,p_plug_template_id=>wwv_flow_api.id(1066237758001455677)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066237922026455678)
,p_plug_template_id=>wwv_flow_api.id(1066237758001455677)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(1066241355705455679)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Tabs Container'
,p_internal_name=>'TABS_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066241477509455680)
,p_plug_template_id=>wwv_flow_api.id(1066241355705455679)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066241547294455680)
,p_plug_template_id=>wwv_flow_api.id(1066241355705455679)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(1066242772489455680)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#"> ',
'  <div class="t-BreadcrumbRegion-body">',
'    <div class="t-BreadcrumbRegion-breadcrumb">',
'      #BODY#',
'    </div>',
'    <div class="t-BreadcrumbRegion-title">',
'      <h1 class="t-BreadcrumbRegion-titleText">#TITLE#</h1>',
'    </div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-buttons">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Title Bar'
,p_internal_name=>'TITLE_BAR'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(1066243301163455681)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title">#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">',
'        #BODY#',
'      </div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_internal_name=>'WIZARD_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(1066243423099455681)
,p_plug_template_id=>wwv_flow_api.id(1066243301163455681)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(1066253559391455689)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_theme_id=>42
,p_theme_class_id=>3
,p_list_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(1066255614003455691)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--featured'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Attributes'
,p_a06_label=>'Card Color Class'
,p_reference_id=>2885322685880632508
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(1066258744356455695)
,p_list_template_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_name=>'Links List'
,p_internal_name=>'LINKS_LIST'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="t-LinksList-item#A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#<'
||'/span></a></li>'
,p_item_templ_curr_w_child=>'<li class="t-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t'
||'-LinksList-badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(1066259801413455696)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES# u-color #A06#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES# u-color #A06#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showIcons:t-MediaList--showDesc'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Class'
,p_a06_label=>'Icon Color Class'
,p_reference_id=>2066548068783481421
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(1066261433739455698)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_internal_name=>'MENU_BAR'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_reference_id=>2008709236185638887
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(1066262072625455698)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_internal_name=>'MENU_POPUP'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({ slide: e.hasClass("js-slide")});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Data ID'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut'
,p_reference_id=>3492264004432431646
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(1066262196589455699)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_internal_name=>'NAVIGATION_BAR'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_reference_id=>2846096252961119197
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(1066262375194455699)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Side Navigation Menu'
,p_internal_name=>'SIDE_NAVIGATION_MENU'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>'apex.jQuery(''body'').addClass(''t-PageBody--leftNav'');'
,p_theme_id=>42
,p_theme_class_id=>19
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav" id="t_Body_nav" role="navigation" aria-label="&APP_TITLE!ATTR.">',
'<div class="t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&APP_TITLE!ATTR."><ul style="display:none">'))
,p_list_template_after_rows=>'</ul></div></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True/False'
,p_a04_label=>'Title'
,p_reference_id=>2466292414354694776
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(1066262461193455699)
,p_list_template_current=>'<li class="t-Tabs-item is-active"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-Tabs-item"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_name=>'Tabs'
,p_internal_name=>'TABS'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Tabs--simple'
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>3288206686691809997
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(1066263483822455700)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_internal_name=>'TOP_NAVIGATION_MENU'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True / False'
,p_a03_label=>'Hide'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut Key'
,p_reference_id=>2525307901300239072
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(1066264251550455702)
,p_list_template_current=>'<li class="t-WizardSteps-step is-active" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></div></li>'
,p_list_template_noncurrent=>'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"><span class="t-Icon a-Icon icon-check"></span></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"'
||'></span></span></div></li>'
,p_list_template_name=>'Wizard Progress'
,p_internal_name=>'WIZARD_PROGRESS'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h2 class="u-VisuallyHidden">#CURRENT_PROGRESS#</h2>',
'<ul class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'))
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(1066244003576455682)
,p_row_template_name=>'Alerts'
,p_internal_name=>'ALERTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(1066244283333455683)
,p_row_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
'  <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(1066246361157455684)
,p_row_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':CARD_LINK is not null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <div class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--featured'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(1066249048545455686)
,p_row_template_name=>'Comments'
,p_internal_name=>'COMMENTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'    <div class="t-Comments-icon a-MediaBlock-graphic">',
'        <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'    </div>',
'    <div class="t-Comments-body a-MediaBlock-content">',
'        <div class="t-Comments-info">',
'            #USER_NAME# &middot; <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>',
''))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(1066249497466455686)
,p_row_template_name=>'Search Results'
,p_internal_name=>'SEARCH_RESULTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(1066249505199455687)
,p_row_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES#>',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" summary="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(1066249505199455687)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(1066251126170455688)
,p_row_template_name=>'Timeline'
,p_internal_name=>'TIMELINE'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <div class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':EVENT_LINK is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <a href="#EVENT_LINK#" class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </a>',
'</li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-Timeline #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_timeline">',
''))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_reference_id=>1513373588340069864
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(1066251419032455688)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_COLUMN'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES#>'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(1066252515130455689)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_ROW'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(1066264904259455702)
,p_template_name=>'Hidden'
,p_internal_name=>'HIDDEN'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(1066265177223455703)
,p_template_name=>'Optional'
,p_internal_name=>'OPTIONAL'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(1066265354338455703)
,p_template_name=>'Optional - Above'
,p_internal_name=>'OPTIONAL_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(1066265437921455703)
,p_template_name=>'Required'
,p_internal_name=>'REQUIRED'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer is-required rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(1066265503946455703)
,p_template_name=>'Required - Above'
,p_internal_name=>'REQUIRED_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(1066266665357455705)
,p_name=>'Breadcrumb'
,p_internal_name=>'BREADCRUMB'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active"><h1 class="t-Breadcrumb-label">#NAME#</h1></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(1066267173542455706)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="t-Form-field t-Form-searchField"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_height=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(1066266840050455706)
,p_cal_template_name=>'Calendar'
,p_internal_name=>'CALENDAR'
,p_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_cust_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_cust_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">'
,p_cust_weekend_close_format=>'</td>'
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_cust_wk_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_weekend_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_wk_weekend_close_format=>'</td>'
,p_agenda_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(1066268525889455711)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(1066221527912455660)
,p_default_dialog_template=>wwv_flow_api.id(1066219793536455658)
,p_error_template=>wwv_flow_api.id(1066217470732455655)
,p_printer_friendly_template=>wwv_flow_api.id(1066221527912455660)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(1066217470732455655)
,p_default_button_template=>wwv_flow_api.id(1066265958847455704)
,p_default_region_template=>wwv_flow_api.id(1066237758001455677)
,p_default_chart_template=>wwv_flow_api.id(1066237758001455677)
,p_default_form_template=>wwv_flow_api.id(1066237758001455677)
,p_default_reportr_template=>wwv_flow_api.id(1066237758001455677)
,p_default_tabform_template=>wwv_flow_api.id(1066237758001455677)
,p_default_wizard_template=>wwv_flow_api.id(1066237758001455677)
,p_default_menur_template=>wwv_flow_api.id(1066242772489455680)
,p_default_listr_template=>wwv_flow_api.id(1066237758001455677)
,p_default_irr_template=>wwv_flow_api.id(1066237061632455677)
,p_default_report_template=>wwv_flow_api.id(1066249505199455687)
,p_default_label_template=>wwv_flow_api.id(1066265177223455703)
,p_default_menu_template=>wwv_flow_api.id(1066266665357455705)
,p_default_calendar_template=>wwv_flow_api.id(1066266840050455706)
,p_default_list_template=>wwv_flow_api.id(1066258744356455695)
,p_default_nav_list_template=>wwv_flow_api.id(1066263483822455700)
,p_default_top_nav_list_temp=>wwv_flow_api.id(1066263483822455700)
,p_default_side_nav_list_temp=>wwv_flow_api.id(1066262375194455699)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(1066225962691455667)
,p_default_dialogr_template=>wwv_flow_api.id(1066225257254455665)
,p_default_option_label=>wwv_flow_api.id(1066265177223455703)
,p_default_required_label=>wwv_flow_api.id(1066265437921455703)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(1066262196589455699)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.1/')
,p_files_version=>62
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#HAMMERJS_URL#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/modernizr-custom#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(1066267362303455707)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_read_only=>true
,p_reference_id=>4007676303523989775
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(1066267599264455707)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>true
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(1066267621644455708)
,p_theme_id=>42
,p_name=>'Vita - Dark'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Dark.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Dark#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3543348412015319650
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(1066267773333455708)
,p_theme_id=>42
,p_name=>'Vita - Red'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Red.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Red#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>1938457712423918173
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(1066267899608455708)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_Accent-BG":"#505f6d","@g_Accent-OG":"#ececec","@g_Body-Title-BG":"#dee1e4","@l_Link-Base":"#337ac0","@g_Body-BG":"#f5f5f5"}}'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066223649657455664)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066223852204455664)
,p_theme_id=>42
,p_name=>'ALERT_TITLE'
,p_display_name=>'Alert Title'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the title of the alert is displayed.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066224136822455665)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066224318750455665)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066226385586455667)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066226550870455667)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066227479666455668)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066227850179455669)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066228688307455669)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066229320752455670)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066229696221455670)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066230534454455671)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066232489604455672)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066233808917455673)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066234363913455673)
,p_theme_id=>42
,p_name=>'BODY_STYLE'
,p_display_name=>'Body Style'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Controls the display of the region''s body container.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066234914837455674)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON'
,p_display_name=>'Display Icon'
,p_display_sequence=>50
,p_template_types=>'REGION'
,p_help_text=>'Display the Hero Region icon.'
,p_null_text=>'Yes (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066236236828455676)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066241629705455680)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066241935362455680)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066242448338455680)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066243541336455681)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066244418667455683)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066244795521455683)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066246579240455685)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066247409090455685)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the overall style for the component.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066247626647455685)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>70
,p_template_types=>'REPORT'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066248080420455685)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066249126580455686)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066249785132455687)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066250114589455687)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066250352628455687)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066251599909455688)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066253805885455690)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066254843263455691)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066256048557455692)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066257171946455694)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066257486169455694)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>80
,p_template_types=>'LIST'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066257757473455694)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066259331837455695)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066260621136455697)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066264366119455702)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066266286654455704)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066269078930455713)
,p_theme_id=>42
,p_name=>'BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the bottom margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066269339123455713)
,p_theme_id=>42
,p_name=>'REGION_BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>210
,p_template_types=>'REGION'
,p_help_text=>'Set the bottom margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066270363361455714)
,p_theme_id=>42
,p_name=>'LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the left margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066270635523455714)
,p_theme_id=>42
,p_name=>'REGION_LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'REGION'
,p_help_text=>'Set the left margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066271403355455715)
,p_theme_id=>42
,p_name=>'RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'FIELD'
,p_help_text=>'Set the right margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066271649227455715)
,p_theme_id=>42
,p_name=>'REGION_RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'REGION'
,p_help_text=>'Set the right margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066272640259455715)
,p_theme_id=>42
,p_name=>'TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'FIELD'
,p_help_text=>'Set the top margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066272835391455715)
,p_theme_id=>42
,p_name=>'REGION_TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'REGION'
,p_help_text=>'Set the top margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066273742919455716)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066273949687455716)
,p_theme_id=>42
,p_name=>'SPACING_BOTTOM'
,p_display_name=>'Spacing Bottom'
,p_display_sequence=>100
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the bottom of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066274279633455716)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066274470748455717)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066274675472455717)
,p_theme_id=>42
,p_name=>'SPACING_TOP'
,p_display_name=>'Spacing Top'
,p_display_sequence=>90
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the top of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066274972009455717)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066275176569455717)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066275901811455718)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066276878398455718)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066277344665455719)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066277538300455719)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066277725045455719)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066277930526455719)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Padding'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066278632089455720)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066278958728455720)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066279176737455721)
,p_theme_id=>42
,p_name=>'ITEM_POST_TEXT'
,p_display_name=>'Item Post Text'
,p_display_sequence=>30
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Post Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066279360422455721)
,p_theme_id=>42
,p_name=>'ITEM_PRE_TEXT'
,p_display_name=>'Item Pre Text'
,p_display_sequence=>20
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Pre Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1066279581835455721)
,p_theme_id=>42
,p_name=>'RADIO_GROUP_DISPLAY'
,p_display_name=>'Radio Group Display'
,p_display_sequence=>300
,p_template_types=>'FIELD'
,p_help_text=>'Determines the display for radio group items.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066220313885455658)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(1066219793536455658)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066222902807455661)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_api.id(1066222512497455661)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066223539764455663)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1066223107818455662)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066223778318455664)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1066223107818455662)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(1066223649657455664)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066223908884455664)
,p_theme_id=>42
,p_name=>'HIDDENHEADER'
,p_display_name=>'Hidden but Accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1066223107818455662)
,p_css_classes=>'t-Alert--accessibleHeading'
,p_group_id=>wwv_flow_api.id(1066223852204455664)
,p_template_types=>'REGION'
,p_help_text=>'Visually hides the alert title, but assistive technologies can still read it.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066224050428455664)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1066223107818455662)
,p_css_classes=>'t-Alert--removeHeading'
,p_group_id=>wwv_flow_api.id(1066223852204455664)
,p_template_types=>'REGION'
,p_help_text=>'Hides the Alert Title from being displayed.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066224297188455665)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1066223107818455662)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(1066224136822455665)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066224413390455665)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1066223107818455662)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(1066224318750455665)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066224607262455665)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(1066223107818455662)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(1066223649657455664)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066224751280455665)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(1066223107818455662)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(1066224136822455665)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066224891147455665)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(1066223107818455662)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(1066223649657455664)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066224955870455665)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1066223107818455662)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(1066224136822455665)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066225021640455665)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1066223107818455662)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(1066223649657455664)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066225109767455665)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1066223107818455662)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(1066224318750455665)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066226433077455667)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1066225962691455667)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(1066226385586455667)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066226604181455667)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(1066225962691455667)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(1066226550870455667)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066226720793455667)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(1066225962691455667)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(1066226385586455667)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066226870040455668)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(1066225962691455667)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(1066226550870455667)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066227599030455668)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1066226998626455668)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(1066227479666455668)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066227697706455668)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(1066226998626455668)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(1066227479666455668)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066227761424455668)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(1066226998626455668)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(1066227479666455668)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066228065371455669)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1066226998626455668)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(1066227850179455669)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066228176649455669)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1066226998626455668)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(1066227850179455669)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066228256906455669)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(1066226998626455668)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(1066227850179455669)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066228447098455669)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1066226998626455668)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(1066227479666455668)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066228508364455669)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(1066226998626455668)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(1066227850179455669)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066228754582455670)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1066226998626455668)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(1066228688307455669)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066228821216455670)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1066226998626455668)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(1066228688307455669)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066229099235455670)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(1066226998626455668)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(1066228688307455669)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066229124238455670)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(1066226998626455668)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(1066228688307455669)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066229278945455670)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(1066226998626455668)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(1066228688307455669)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066229539317455670)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1066226998626455668)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(1066229320752455670)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066229774628455670)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1066226998626455668)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(1066229696221455670)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066229847611455670)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1066226998626455668)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(1066229320752455670)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066229993888455670)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1066226998626455668)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066230090578455670)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1066226998626455668)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(1066226385586455667)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066230174866455670)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1066226998626455668)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066230226850455670)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1066226998626455668)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(1066229696221455670)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066230398283455670)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(1066226998626455668)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066230444699455671)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(1066226998626455668)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066230646765455671)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1066226998626455668)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(1066230534454455671)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066230861627455671)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1066226998626455668)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(1066230534454455671)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066230977204455671)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1066226998626455668)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(1066226385586455667)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066231450617455671)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1066231052758455671)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(1066227850179455669)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066231586742455671)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1066231052758455671)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(1066227850179455669)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066231603454455671)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(1066231052758455671)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(1066227850179455669)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066231778414455671)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(1066231052758455671)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(1066227850179455669)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066231862852455672)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1066231052758455671)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(1066228688307455669)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066231912196455672)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1066231052758455671)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(1066228688307455669)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066232123874455672)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(1066231052758455671)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(1066228688307455669)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066232283499455672)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(1066231052758455671)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(1066228688307455669)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066232321708455672)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(1066231052758455671)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(1066228688307455669)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066232592662455672)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1066231052758455671)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(1066232489604455672)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066232620687455672)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1066231052758455671)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(1066232489604455672)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066232766197455672)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1066231052758455671)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(1066229696221455670)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066232869033455672)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1066231052758455671)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066233097312455672)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1066231052758455671)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(1066226385586455667)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066233107850455672)
,p_theme_id=>42
,p_name=>'REMEMBER_COLLAPSIBLE_STATE'
,p_display_name=>'Remember Collapsible State'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1066231052758455671)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
,p_help_text=>'This option saves the current state of the collapsible region for the duration of the session.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066233266417455672)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(1066231052758455671)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(1066226385586455667)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066233385117455672)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1066231052758455671)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(1066229696221455670)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066233420008455672)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1066231052758455671)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(1066226385586455667)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066233761029455673)
,p_theme_id=>42
,p_name=>'ADD_BODY_PADDING'
,p_display_name=>'Add Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1066233664155455672)
,p_css_classes=>'t-ContentBlock--padded'
,p_template_types=>'REGION'
,p_help_text=>'Adds padding to the region''s body container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066233917614455673)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H1'
,p_display_name=>'Heading Level 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1066233664155455672)
,p_css_classes=>'t-ContentBlock--h1'
,p_group_id=>wwv_flow_api.id(1066233808917455673)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066234093703455673)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H2'
,p_display_name=>'Heading Level 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1066233664155455672)
,p_css_classes=>'t-ContentBlock--h2'
,p_group_id=>wwv_flow_api.id(1066233808917455673)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066234171918455673)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H3'
,p_display_name=>'Heading Level 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(1066233664155455672)
,p_css_classes=>'t-ContentBlock--h3'
,p_group_id=>wwv_flow_api.id(1066233808917455673)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066234468568455673)
,p_theme_id=>42
,p_name=>'LIGHT_BACKGROUND'
,p_display_name=>'Light Background'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1066233664155455672)
,p_css_classes=>'t-ContentBlock--lightBG'
,p_group_id=>wwv_flow_api.id(1066234363913455673)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly lighter background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066234520617455673)
,p_theme_id=>42
,p_name=>'SHADOW_BACKGROUND'
,p_display_name=>'Shadow Background'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1066233664155455672)
,p_css_classes=>'t-ContentBlock--shadowBG'
,p_group_id=>wwv_flow_api.id(1066234363913455673)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly darker background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066235037329455674)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON_NO'
,p_display_name=>'No'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1066234629134455673)
,p_css_classes=>'t-HeroRegion--hideIcon'
,p_group_id=>wwv_flow_api.id(1066234914837455674)
,p_template_types=>'REGION'
,p_help_text=>'Hide the Hero Region icon.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066235102842455674)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1066234629134455673)
,p_css_classes=>'t-HeroRegion--featured'
,p_group_id=>wwv_flow_api.id(1066226385586455667)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066235288737455674)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1066234629134455673)
,p_css_classes=>'t-HeroRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the hero region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066235387169455674)
,p_theme_id=>42
,p_name=>'STACKED_FEATURED'
,p_display_name=>'Stacked Featured'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1066234629134455673)
,p_css_classes=>'t-HeroRegion--featured t-HeroRegion--centered'
,p_group_id=>wwv_flow_api.id(1066226385586455667)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066235750010455674)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1066235469553455674)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066235903486455674)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1066235469553455674)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066236320475455676)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(1066235469553455674)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(1066236236828455676)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066236424803455676)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1066235469553455674)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(1066236236828455676)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066236792155455677)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1066235469553455674)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066236889137455677)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(1066235469553455674)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066236923707455677)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1066235469553455674)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(1066236236828455676)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066237201935455677)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1066237061632455677)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066237376808455677)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1066237061632455677)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066238073049455678)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1066237758001455677)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(1066227850179455669)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066238171646455678)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1066237758001455677)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(1066227850179455669)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066238237520455678)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(1066237758001455677)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(1066227850179455669)
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066238370722455678)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(1066237758001455677)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(1066227850179455669)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066238436252455678)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1066237758001455677)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(1066228688307455669)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066238566104455678)
,p_theme_id=>42
,p_name=>'ACCENT_10'
,p_display_name=>'Accent 10'
,p_display_sequence=>100
,p_region_template_id=>wwv_flow_api.id(1066237758001455677)
,p_css_classes=>'t-Region--accent10'
,p_group_id=>wwv_flow_api.id(1066228688307455669)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066238697178455678)
,p_theme_id=>42
,p_name=>'ACCENT_11'
,p_display_name=>'Accent 11'
,p_display_sequence=>110
,p_region_template_id=>wwv_flow_api.id(1066237758001455677)
,p_css_classes=>'t-Region--accent11'
,p_group_id=>wwv_flow_api.id(1066228688307455669)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066238896498455678)
,p_theme_id=>42
,p_name=>'ACCENT_12'
,p_display_name=>'Accent 12'
,p_display_sequence=>120
,p_region_template_id=>wwv_flow_api.id(1066237758001455677)
,p_css_classes=>'t-Region--accent12'
,p_group_id=>wwv_flow_api.id(1066228688307455669)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066238991561455678)
,p_theme_id=>42
,p_name=>'ACCENT_13'
,p_display_name=>'Accent 13'
,p_display_sequence=>130
,p_region_template_id=>wwv_flow_api.id(1066237758001455677)
,p_css_classes=>'t-Region--accent13'
,p_group_id=>wwv_flow_api.id(1066228688307455669)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066239033471455678)
,p_theme_id=>42
,p_name=>'ACCENT_14'
,p_display_name=>'Accent 14'
,p_display_sequence=>140
,p_region_template_id=>wwv_flow_api.id(1066237758001455677)
,p_css_classes=>'t-Region--accent14'
,p_group_id=>wwv_flow_api.id(1066228688307455669)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066239298445455678)
,p_theme_id=>42
,p_name=>'ACCENT_15'
,p_display_name=>'Accent 15'
,p_display_sequence=>150
,p_region_template_id=>wwv_flow_api.id(1066237758001455677)
,p_css_classes=>'t-Region--accent15'
,p_group_id=>wwv_flow_api.id(1066228688307455669)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066239396467455678)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1066237758001455677)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(1066228688307455669)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066239452835455678)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(1066237758001455677)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(1066228688307455669)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066239512357455678)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(1066237758001455677)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(1066228688307455669)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066239699941455678)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(1066237758001455677)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(1066228688307455669)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066239789823455679)
,p_theme_id=>42
,p_name=>'ACCENT_6'
,p_display_name=>'Accent 6'
,p_display_sequence=>60
,p_region_template_id=>wwv_flow_api.id(1066237758001455677)
,p_css_classes=>'t-Region--accent6'
,p_group_id=>wwv_flow_api.id(1066228688307455669)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066239829280455679)
,p_theme_id=>42
,p_name=>'ACCENT_7'
,p_display_name=>'Accent 7'
,p_display_sequence=>70
,p_region_template_id=>wwv_flow_api.id(1066237758001455677)
,p_css_classes=>'t-Region--accent7'
,p_group_id=>wwv_flow_api.id(1066228688307455669)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066239984418455679)
,p_theme_id=>42
,p_name=>'ACCENT_8'
,p_display_name=>'Accent 8'
,p_display_sequence=>80
,p_region_template_id=>wwv_flow_api.id(1066237758001455677)
,p_css_classes=>'t-Region--accent8'
,p_group_id=>wwv_flow_api.id(1066228688307455669)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066240022552455679)
,p_theme_id=>42
,p_name=>'ACCENT_9'
,p_display_name=>'Accent 9'
,p_display_sequence=>90
,p_region_template_id=>wwv_flow_api.id(1066237758001455677)
,p_css_classes=>'t-Region--accent9'
,p_group_id=>wwv_flow_api.id(1066228688307455669)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066240183062455679)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1066237758001455677)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(1066229320752455670)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066240395744455679)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1066237758001455677)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(1066229696221455670)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066240454198455679)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1066237758001455677)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(1066229320752455670)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066240549928455679)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1066237758001455677)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066240622316455679)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1066237758001455677)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(1066226385586455667)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066240753769455679)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(1066237758001455677)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(1066226385586455667)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066240976463455679)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1066237758001455677)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(1066229696221455670)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066241038987455679)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1066237758001455677)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066241191298455679)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1066237758001455677)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(1066226385586455667)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066241240366455679)
,p_theme_id=>42
,p_name=>'TEXT_CONTENT'
,p_display_name=>'Text Content'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(1066237758001455677)
,p_css_classes=>'t-Region--textContent'
,p_group_id=>wwv_flow_api.id(1066226385586455667)
,p_template_types=>'REGION'
,p_help_text=>'Useful for displaying primarily text-based content, such as FAQs and more.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066241874864455680)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1066241355705455679)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(1066241629705455680)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066242008690455680)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1066241355705455679)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(1066241935362455680)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066242163981455680)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1066241355705455679)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066242237025455680)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1066241355705455679)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(1066241935362455680)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066242585007455680)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1066241355705455679)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(1066242448338455680)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066242673089455680)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1066241355705455679)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(1066242448338455680)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066242861727455681)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1066242772489455680)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(1066233808917455673)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066242938475455681)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1066242772489455680)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066243049742455681)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1066242772489455680)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(1066233808917455673)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066243608920455682)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1066243301163455681)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(1066243541336455681)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066243710459455682)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1066243301163455681)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(1066243541336455681)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066243898758455682)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1066243301163455681)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066244692698455683)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(1066244283333455683)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(1066244418667455683)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066244818029455683)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(1066244283333455683)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(1066244795521455683)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066244968765455683)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(1066244283333455683)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(1066244418667455683)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066245018034455683)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(1066244283333455683)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(1066244795521455683)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066245182491455683)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(1066244283333455683)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(1066244418667455683)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066245280102455683)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(1066244283333455683)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(1066244795521455683)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066245384238455684)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(1066244283333455683)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(1066244795521455683)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066245411841455684)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(1066244283333455683)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(1066244418667455683)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066245620374455684)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(1066244283333455683)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(1066244418667455683)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066245771269455684)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(1066244283333455683)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(1066244795521455683)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066245810802455684)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(1066244283333455683)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(1066244795521455683)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066245915011455684)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(1066244283333455683)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(1066244795521455683)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066246121149455684)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(1066244283333455683)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'REPORT'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066246260357455684)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(1066244283333455683)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(1066244795521455683)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066246444239455684)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(1066246361157455684)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(1066244795521455683)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066246659472455685)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(1066246361157455684)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(1066246579240455685)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066246899709455685)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(1066246361157455684)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(1066244795521455683)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066246920445455685)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(1066246361157455684)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(1066246579240455685)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066247140863455685)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(1066246361157455684)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(1066244795521455683)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066247229420455685)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(1066246361157455684)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(1066246579240455685)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066247320489455685)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(1066246361157455684)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(1066244795521455683)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066247550229455685)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(1066246361157455684)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(1066247409090455685)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066247796128455685)
,p_theme_id=>42
,p_name=>'CARDS_COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(1066246361157455684)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(1066247626647455685)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066247864719455685)
,p_theme_id=>42
,p_name=>'CARD_RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(1066246361157455684)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(1066247626647455685)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066247911465455685)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(1066246361157455684)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(1066247409090455685)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066248105569455685)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(1066246361157455684)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(1066248080420455685)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066248357068455686)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(1066246361157455684)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(1066248080420455685)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066248450194455686)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(1066246361157455684)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(1066247409090455685)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066248511980455686)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(1066246361157455684)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(1066244795521455683)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066248691528455686)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(1066246361157455684)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(1066246579240455685)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066248866736455686)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(1066246361157455684)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(1066244795521455683)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066248952790455686)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(1066246361157455684)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066249284788455686)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(1066249048545455686)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(1066249126580455686)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066249388386455686)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(1066249048545455686)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(1066249126580455686)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066249839916455687)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(1066249505199455687)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(1066249785132455687)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066249991144455687)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(1066249505199455687)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(1066249785132455687)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066250241245455687)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(1066249505199455687)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(1066250114589455687)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066250445839455687)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(1066249505199455687)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(1066250352628455687)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066250547484455687)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(1066249505199455687)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(1066250352628455687)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066250632439455687)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(1066249505199455687)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(1066250352628455687)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066250785387455687)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(1066249505199455687)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(1066250114589455687)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066250886489455687)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(1066249505199455687)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066250948320455687)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(1066249505199455687)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(1066250352628455687)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066251226313455688)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(1066251126170455688)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_api.id(1066247409090455685)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact version of timeline with smaller text and fewer columns.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066251656309455688)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(1066251419032455688)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(1066251599909455688)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066251792920455688)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(1066251419032455688)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(1066251599909455688)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066251843696455688)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(1066251419032455688)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(1066251599909455688)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066251971289455688)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(1066251419032455688)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(1066244795521455683)
,p_template_types=>'REPORT'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066252020049455688)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(1066251419032455688)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(1066244795521455683)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066252125611455688)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(1066251419032455688)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(1066251599909455688)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066252206231455689)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(1066251419032455688)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(1066251599909455688)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066252423321455689)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(1066251419032455688)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(1066251599909455688)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066252614079455689)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(1066252515130455689)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(1066251599909455688)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066252882431455689)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(1066252515130455689)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(1066251599909455688)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066252904658455689)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(1066252515130455689)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(1066251599909455688)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066253056623455689)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(1066252515130455689)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(1066244795521455683)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066253147877455689)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(1066252515130455689)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(1066244795521455683)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066253295557455689)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(1066252515130455689)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(1066251599909455688)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066253395117455689)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(1066252515130455689)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(1066251599909455688)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066253491863455689)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(1066252515130455689)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(1066251599909455688)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066253946160455690)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(1066253559391455689)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(1066253805885455690)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066254086986455690)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(1066253559391455689)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(1066253805885455690)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066254273239455690)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(1066253559391455689)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(1066253805885455690)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066254397450455690)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(1066253559391455689)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(1066253805885455690)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066254489128455691)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(1066253559391455689)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(1066253805885455690)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066254568950455691)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(1066253559391455689)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(1066253805885455690)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066254680556455691)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(1066253559391455689)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(1066253805885455690)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066254996341455691)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(1066253559391455689)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(1066254843263455691)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066255015283455691)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(1066253559391455689)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(1066254843263455691)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066255185719455691)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(1066253559391455689)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'LIST'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066255258259455691)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(1066253559391455689)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(1066254843263455691)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066255357754455691)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(1066253559391455689)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(1066253805885455690)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066255410367455691)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(1066253559391455689)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(1066254843263455691)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066255579823455691)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(1066253559391455689)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(1066254843263455691)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066255922425455692)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(1066255614003455691)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(1066253805885455690)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066256142223455692)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(1066255614003455691)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(1066256048557455692)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066256252336455692)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(1066255614003455691)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(1066253805885455690)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066256396434455692)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(1066255614003455691)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(1066256048557455692)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066256756569455693)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(1066255614003455691)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(1066253805885455690)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066256881033455693)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(1066255614003455691)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(1066256048557455692)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066256927904455693)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(1066255614003455691)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(1066253805885455690)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066257286540455694)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(1066255614003455691)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(1066257171946455694)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066257351799455694)
,p_theme_id=>42
,p_name=>'CARDS_STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(1066255614003455691)
,p_css_classes=>'t-Cards--stacked'
,p_group_id=>wwv_flow_api.id(1066253805885455690)
,p_template_types=>'LIST'
,p_help_text=>'Stacks the cards on top of each other.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066257503004455694)
,p_theme_id=>42
,p_name=>'COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(1066255614003455691)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(1066257486169455694)
,p_template_types=>'LIST'
,p_help_text=>'Fills the card background with the color of the icon or default link style.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066257686284455694)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(1066255614003455691)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(1066257171946455694)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066257889114455694)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(1066255614003455691)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(1066257757473455694)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066257925138455694)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(1066255614003455691)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(1066257757473455694)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066258053182455694)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(1066255614003455691)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(1066257171946455694)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066258204405455694)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(1066255614003455691)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(1066253805885455690)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066258357976455694)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(1066255614003455691)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(1066256048557455692)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066258443142455694)
,p_theme_id=>42
,p_name=>'RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(1066255614003455691)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(1066257486169455694)
,p_template_types=>'LIST'
,p_help_text=>'Raises the card so it pops up.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066258584932455694)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(1066255614003455691)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(1066253805885455690)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066258694479455695)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(1066255614003455691)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies the colors from the theme''s color palette to the icons or initials within cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066258983633455695)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(1066258744356455695)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(1066257171946455694)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066259076461455695)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(1066258744356455695)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066259150173455695)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(1066258744356455695)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066259223577455695)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(1066258744356455695)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066259475229455695)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(1066258744356455695)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(1066259331837455695)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066259532689455695)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(1066258744356455695)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(1066259331837455695)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066259911914455696)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(1066259801413455696)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(1066253805885455690)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066260100938455696)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(1066259801413455696)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(1066253805885455690)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066260262164455697)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(1066259801413455696)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(1066253805885455690)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066260356781455697)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(1066259801413455696)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(1066253805885455690)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066260588300455697)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(1066259801413455696)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies colors from the Theme''s color palette to icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066260774456455697)
,p_theme_id=>42
,p_name=>'LIST_SIZE_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(1066259801413455696)
,p_css_classes=>'t-MediaList--large'
,p_group_id=>wwv_flow_api.id(1066260621136455697)
,p_template_types=>'LIST'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066261005799455698)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(1066259801413455696)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066261113867455698)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(1066259801413455696)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066261203746455698)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(1066259801413455696)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Display an icon next to the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066261302444455698)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(1066259801413455696)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(1066253805885455690)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066261516267455698)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(1066261433739455698)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066261632088455698)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(1066261433739455698)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066261725020455698)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(1066261433739455698)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066261998831455698)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(1066261433739455698)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066262641288455700)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(1066262461193455699)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(1066257757473455694)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066262743933455700)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(1066262461193455699)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(1066253805885455690)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066262945478455700)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(1066262461193455699)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(1066257757473455694)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066263039924455700)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(1066262461193455699)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(1066260621136455697)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066263153179455700)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(1066262461193455699)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(1066257171946455694)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066263206736455700)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(1066262461193455699)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(1066257171946455694)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066263373063455700)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(1066262461193455699)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(1066260621136455697)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066263717148455701)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(1066263483822455700)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066263948837455701)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(1066263483822455700)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066264031375455701)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(1066263483822455700)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066264198274455701)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(1066263483822455700)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066264574367455702)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(1066264251550455702)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(1066264366119455702)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066264611579455702)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(1066264251550455702)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(1066264366119455702)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066264775656455702)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(1066264251550455702)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(1066264366119455702)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066264830815455702)
,p_theme_id=>42
,p_name=>'VERTICAL_LIST'
,p_display_name=>'Vertical Orientation'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(1066264251550455702)
,p_css_classes=>'t-WizardSteps--vertical'
,p_template_types=>'LIST'
,p_help_text=>'Displays the wizard progress list in a vertical orientation and is suitable for displaying within a side column of a page.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066266336482455704)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(1066266124075455704)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(1066266286654455704)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066266480394455705)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(1066266124075455704)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(1066266286654455704)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066269220025455713)
,p_theme_id=>42
,p_name=>'FBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(1066269078930455713)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066269476867455713)
,p_theme_id=>42
,p_name=>'RBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(1066269339123455713)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066269524277455713)
,p_theme_id=>42
,p_name=>'FBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(1066269078930455713)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium bottom margin for this field.'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066269650855455713)
,p_theme_id=>42
,p_name=>'RBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(1066269339123455713)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066269741203455713)
,p_theme_id=>42
,p_name=>'FBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(1066269078930455713)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066269895393455713)
,p_theme_id=>42
,p_name=>'RBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(1066269339123455713)
,p_template_types=>'REGION'
,p_help_text=>'Removes the bottom margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066270037760455714)
,p_theme_id=>42
,p_name=>'FBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(1066269078930455713)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066270179746455714)
,p_theme_id=>42
,p_name=>'RBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(1066269339123455713)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066270499070455714)
,p_theme_id=>42
,p_name=>'FLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(1066270363361455714)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066270775773455714)
,p_theme_id=>42
,p_name=>'RLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(1066270635523455714)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066270808824455714)
,p_theme_id=>42
,p_name=>'FLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(1066270363361455714)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066270951382455714)
,p_theme_id=>42
,p_name=>'RLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(1066270635523455714)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066271029346455715)
,p_theme_id=>42
,p_name=>'FLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(1066270363361455714)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066271129389455715)
,p_theme_id=>42
,p_name=>'RLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(1066270635523455714)
,p_template_types=>'REGION'
,p_help_text=>'Removes the left margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066271214654455715)
,p_theme_id=>42
,p_name=>'FLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(1066270363361455714)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066271347585455715)
,p_theme_id=>42
,p_name=>'RLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(1066270635523455714)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small left margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066271541159455715)
,p_theme_id=>42
,p_name=>'FRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(1066271403355455715)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066271767140455715)
,p_theme_id=>42
,p_name=>'RRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(1066271649227455715)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066271802370455715)
,p_theme_id=>42
,p_name=>'FRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(1066271403355455715)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066271954455455715)
,p_theme_id=>42
,p_name=>'RRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(1066271649227455715)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066272156722455715)
,p_theme_id=>42
,p_name=>'FRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(1066271403355455715)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066272246516455715)
,p_theme_id=>42
,p_name=>'RRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(1066271649227455715)
,p_template_types=>'REGION'
,p_help_text=>'Removes the right margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066272320177455715)
,p_theme_id=>42
,p_name=>'FRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(1066271403355455715)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066272431452455715)
,p_theme_id=>42
,p_name=>'RRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(1066271649227455715)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066272778089455715)
,p_theme_id=>42
,p_name=>'FTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(1066272640259455715)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066272914606455715)
,p_theme_id=>42
,p_name=>'RTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(1066272835391455715)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066273000694455716)
,p_theme_id=>42
,p_name=>'FTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(1066272640259455715)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066273136865455716)
,p_theme_id=>42
,p_name=>'RTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(1066272835391455715)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066273266310455716)
,p_theme_id=>42
,p_name=>'FTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(1066272640259455715)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066273325574455716)
,p_theme_id=>42
,p_name=>'RTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(1066272835391455715)
,p_template_types=>'REGION'
,p_help_text=>'Removes the top margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066273419456455716)
,p_theme_id=>42
,p_name=>'FTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(1066272640259455715)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066273621831455716)
,p_theme_id=>42
,p_name=>'RTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(1066272835391455715)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066273869826455716)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(1066273742919455716)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066274141283455716)
,p_theme_id=>42
,p_name=>'LARGEBOTTOMMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapBottom'
,p_group_id=>wwv_flow_api.id(1066273949687455716)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066274324719455716)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(1066274279633455716)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066274587337455717)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(1066274470748455717)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066274864846455717)
,p_theme_id=>42
,p_name=>'LARGETOPMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapTop'
,p_group_id=>wwv_flow_api.id(1066274675472455717)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066275031657455717)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>30
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(1066274972009455717)
,p_template_types=>'BUTTON'
,p_help_text=>'A large button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066275223961455717)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_LINK'
,p_display_name=>'Display as Link'
,p_display_sequence=>30
,p_css_classes=>'t-Button--link'
,p_group_id=>wwv_flow_api.id(1066275176569455717)
,p_template_types=>'BUTTON'
,p_help_text=>'This option makes the button appear as a text link.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066275397680455717)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(1066275176569455717)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066275523230455717)
,p_theme_id=>42
,p_name=>'SMALLBOTTOMMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padBottom'
,p_group_id=>wwv_flow_api.id(1066273949687455716)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066275649529455717)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(1066274279633455716)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066275746061455717)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(1066274470748455717)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066275880534455717)
,p_theme_id=>42
,p_name=>'SMALLTOPMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padTop'
,p_group_id=>wwv_flow_api.id(1066274675472455717)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066276068280455718)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(1066275901811455718)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066276247933455718)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(1066275901811455718)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066276340475455718)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(1066275901811455718)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066276460306455718)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(1066273742919455716)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066276574522455718)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(1066275176569455717)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066276615224455718)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(1066274972009455717)
,p_template_types=>'BUTTON'
,p_help_text=>'A small button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066276955174455718)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(1066276878398455718)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066277000529455718)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(1066273742919455716)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066277103153455718)
,p_theme_id=>42
,p_name=>'TINY'
,p_display_name=>'Tiny'
,p_display_sequence=>10
,p_css_classes=>'t-Button--tiny'
,p_group_id=>wwv_flow_api.id(1066274972009455717)
,p_template_types=>'BUTTON'
,p_help_text=>'A very small button.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066277266410455718)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(1066273742919455716)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066277439017455719)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(1066277344665455719)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066277635981455719)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(1066277538300455719)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066277862281455719)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(1066277725045455719)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066278152357455719)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(1066277930526455719)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066278428868455720)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(1066277930526455719)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066278781142455720)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(1066278632089455720)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066278803130455720)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(1066277538300455719)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066279080145455720)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(1066278958728455720)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066279273381455721)
,p_theme_id=>42
,p_name=>'POST_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--postTextBlock'
,p_group_id=>wwv_flow_api.id(1066279176737455721)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Post Text in a block style immediately after the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066279453125455721)
,p_theme_id=>42
,p_name=>'PRE_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--preTextBlock'
,p_group_id=>wwv_flow_api.id(1066279360422455721)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Pre Text in a block style immediately before the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066279827533455721)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_PILL_BUTTON'
,p_display_name=>'Display as Pill Button'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--radioButtonGroup'
,p_group_id=>wwv_flow_api.id(1066279581835455721)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the radio buttons to look like a button set / pill button.  Note that the the radio buttons must all be in the same row for this option to work.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066279931474455721)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1066280009300455721)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(1066278958728455720)
,p_template_types=>'FIELD'
);
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts
begin
wwv_flow_api.create_shortcut(
 p_id=>wwv_flow_api.id(1084425036729476993)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(1066281226088455725)
,p_name=>'APEX'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'f_logowanie'
,p_attribute_05=>'N'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(1066280661461455724)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN_DESKTOP:&SESSION.'
,p_theme_style_by_user_pref=>false
,p_navigation_list_id=>wwv_flow_api.id(1066213815583455645)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(1066262375194455699)
,p_nav_list_template_options=>'#DEFAULT#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(1066280370387455722)
,p_nav_bar_list_template_id=>wwv_flow_api.id(1066262196589455699)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Witaj'
,p_page_mode=>'NORMAL'
,p_step_title=>'Witaj'
,p_step_sub_title=>'Home'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Body-contentInner{',
'    background: url("http://vignette1.wikia.nocookie.net/bezsensopedia/images/d/d9/Holmenkollbakken.jpg/revision/latest?cb=20110327112533&path-prefix=pl");',
'    background-size: contain;',
'    background-repeat: no-repeat;',
'    width: 100% !IMPORTANT;',
'    height: 0;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20170107170424'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1066283490024455732)
,p_plug_name=>'Breadcrumbs'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1066242772489455680)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(1066282754210455731)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1066266665357455705)
,p_plug_query_row_template=>1
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Edytuj Użytkowników'
,p_page_mode=>'NORMAL'
,p_step_title=>'Użytkownicy'
,p_step_sub_title=>'Użytkownicy'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(1082261105747272672)
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20170107171445'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1109085700820432658)
,p_plug_name=>'Użytkownicy'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1066237758001455677)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'SELECT * FROM uzytkownik;'
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1109086998468432660)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1109087413513432660)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1109088616472432663)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1109089257620432664)
,p_name=>'LOGIN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOGIN'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Login'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_width=>16
,p_is_required=>true
,p_max_length=>16
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1109089878443432664)
,p_name=>'HASLO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HASLO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_PASSWORD'
,p_heading=>'Haslo'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_item_width=>20
,p_is_required=>true
,p_max_length=>20
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1109160466105432665)
,p_name=>'ROLA_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROLA_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Rola Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>'SELECT nazwa,id FROM rola'
,p_lov_display_extra=>true
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(1109086203737432658)
,p_internal_uid=>1109086203737432658
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'RESET:SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(1109086633439432659)
,p_interactive_grid_id=>wwv_flow_api.id(1109086203737432658)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(1109086761823432659)
,p_report_id=>wwv_flow_api.id(1109086633439432659)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1109087837044432661)
,p_view_id=>wwv_flow_api.id(1109086761823432659)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(1109087413513432660)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1109089084181432663)
,p_view_id=>wwv_flow_api.id(1109086761823432659)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(1109088616472432663)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1109089685482432664)
,p_view_id=>wwv_flow_api.id(1109086761823432659)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(1109089257620432664)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1109160268963432665)
,p_view_id=>wwv_flow_api.id(1109086761823432659)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(1109089878443432664)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1109160897184432665)
,p_view_id=>wwv_flow_api.id(1109086761823432659)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(1109160466105432665)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1149603891933437537)
,p_tabular_form_region_id=>wwv_flow_api.id(1109085700820432658)
,p_validation_name=>'v_LOGIN'
,p_validation_sequence=>10
,p_validation=>'LOGIN'
,p_validation2=>'^[a-zA-Z0-9]{6,20]$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Login może zawierać tylko litery i cyfry oraz musi być długości od 6 do 20!'
,p_always_execute=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'LOGIN'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1109161082855432666)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(1109085700820432658)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>' - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Zapisano zmiany :)'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Użytkownicy'
,p_page_mode=>'NORMAL'
,p_step_title=>'Użytkownicy'
,p_step_sub_title=>'Użytkownicy'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(1082261105747272672)
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20170107171401'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(1109826565364539517)
,p_name=>'Lista użytkowników'
,p_template=>wwv_flow_api.id(1066237758001455677)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>'SELECT u.login,r.nazwa FROM uzytkownik u INNER JOIN rola r ON r.id = u.rola_id;'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(1066249505199455687)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<br> Nie znaleziono danych.'
,p_query_num_rows_type=>'ROW_RANGES'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_LEFT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1109827606270539521)
,p_query_column_id=>1
,p_column_alias=>'LOGIN'
,p_column_display_sequence=>1
,p_column_heading=>'Login'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1533567447144138606)
,p_query_column_id=>2
,p_column_alias=>'NAZWA'
,p_column_display_sequence=>2
,p_column_heading=>'Rola'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Rekordy'
,p_page_mode=>'NORMAL'
,p_step_title=>'Rekordy'
,p_step_sub_title=>'Rekordy'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(1082261105747272672)
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20161229202752'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(1110461032986642895)
,p_name=>'Historia rekordów'
,p_template=>wwv_flow_api.id(1066237758001455677)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select r.ID,',
'       r.TYP,',
'       r.ODLEGLOSC,',
'       r.REKORDZISTA,',
'       r.DATA,',
'       r.BELKA,',
'       s.nazwa,',
'       r.AKTUALNY,',
's.punkt_hs',
'  from REKORD r INNER JOIN Skocznia s ON s.id = skocznia_id'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(1066249505199455687)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1110461792373642898)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Id'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1110462153556642898)
,p_query_column_id=>2
,p_column_alias=>'TYP'
,p_column_display_sequence=>2
,p_column_heading=>'Typ'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1110462540551642899)
,p_query_column_id=>3
,p_column_alias=>'ODLEGLOSC'
,p_column_display_sequence=>6
,p_column_heading=>'Odleglosc'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1110462976706642899)
,p_query_column_id=>4
,p_column_alias=>'REKORDZISTA'
,p_column_display_sequence=>7
,p_column_heading=>'Rekordzista'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1110463320491642900)
,p_query_column_id=>5
,p_column_alias=>'DATA'
,p_column_display_sequence=>5
,p_column_heading=>'Data'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1110463779292642900)
,p_query_column_id=>6
,p_column_alias=>'BELKA'
,p_column_display_sequence=>8
,p_column_heading=>'Belka'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1090313287325527808)
,p_query_column_id=>7
,p_column_alias=>'NAZWA'
,p_column_display_sequence=>3
,p_column_heading=>'Nazwa'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1110464550648642901)
,p_query_column_id=>8
,p_column_alias=>'AKTUALNY'
,p_column_display_sequence=>9
,p_column_heading=>'Aktualny'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1090313304966527809)
,p_query_column_id=>9
,p_column_alias=>'PUNKT_HS'
,p_column_display_sequence=>4
,p_column_heading=>'Punkt HS'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Edytuj Rekordy'
,p_page_mode=>'NORMAL'
,p_step_title=>'Edytuj Rekordy'
,p_step_sub_title=>'Edytuj Rekordy'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(1082261105747272672)
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20161229235410'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1110540110632666316)
,p_plug_name=>'Edytuj Rekordy'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1066237758001455677)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select r.TYP,',
'       r.ODLEGLOSC,',
'       r.REKORDZISTA,',
'       r.DATA,',
'       r.BELKA,',
'       r.SKOCZNIA_ID,',
's.punkt_hs,',
'       AKTUALNY',
'  from REKORD r INNER JOIN skocznia s ON s.id=skocznia_id'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1090314746172527823)
,p_name=>'PUNKT_HS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PUNKT_HS'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Punkt hs'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1110541317746666318)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1110541826534666319)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1110542403447666320)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1110543071995666321)
,p_name=>'TYP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TYP'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Typ'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:zimowy;zimowy,letni;letni'
,p_lov_display_extra=>true
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1110543666400666322)
,p_name=>'ODLEGLOSC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ODLEGLOSC'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Odleglosc'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_01=>'90'
,p_attribute_02=>'260'
,p_attribute_03=>'left'
,p_item_width=>10
,p_is_required=>true
,p_max_length=>5
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1110544285462666323)
,p_name=>'REKORDZISTA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REKORDZISTA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Rekordzista'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_width=>50
,p_is_required=>true
,p_max_length=>256
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1110544840040666324)
,p_name=>'DATA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATA'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Data'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_02=>'1950-01-01'
,p_attribute_03=>'2016-12-28'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
,p_attribute_08=>'1950:2016'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1110545449637666330)
,p_name=>'BELKA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BELKA'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Belka'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attribute_01=>'0'
,p_attribute_02=>'30'
,p_attribute_03=>'left'
,p_item_width=>5
,p_is_required=>false
,p_max_length=>2
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1110546098771666331)
,p_name=>'SKOCZNIA_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SKOCZNIA_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Skocznia Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>'SELECT nazwa, id FROM skocznia'
,p_lov_display_extra=>true
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1110546648937666332)
,p_name=>'AKTUALNY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AKTUALNY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_RADIOGROUP'
,p_heading=>'Aktualny'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attribute_01=>'1'
,p_is_required=>true
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:TAK;t,NIE;n'
,p_lov_display_extra=>true
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(1110540647985666317)
,p_internal_uid=>1110540647985666317
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'RESET:SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(1110541054052666318)
,p_interactive_grid_id=>wwv_flow_api.id(1110540647985666317)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(1110541126601666318)
,p_report_id=>wwv_flow_api.id(1110541054052666318)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1110542230582666319)
,p_view_id=>wwv_flow_api.id(1110541126601666318)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(1110541826534666319)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1110542888234666321)
,p_view_id=>wwv_flow_api.id(1110541126601666318)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(1110542403447666320)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1110543435493666322)
,p_view_id=>wwv_flow_api.id(1110541126601666318)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(1110543071995666321)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1110544073029666323)
,p_view_id=>wwv_flow_api.id(1110541126601666318)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(1110543666400666322)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1110544693795666324)
,p_view_id=>wwv_flow_api.id(1110541126601666318)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(1110544285462666323)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1110545266547666330)
,p_view_id=>wwv_flow_api.id(1110541126601666318)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(1110544840040666324)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1110545865404666331)
,p_view_id=>wwv_flow_api.id(1110541126601666318)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(1110545449637666330)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1110546489520666332)
,p_view_id=>wwv_flow_api.id(1110541126601666318)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(1110546098771666331)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1110547073316666332)
,p_view_id=>wwv_flow_api.id(1110541126601666318)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(1110546648937666332)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1113084371639128482)
,p_view_id=>wwv_flow_api.id(1110541126601666318)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(1090314746172527823)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1149603954009437538)
,p_tabular_form_region_id=>wwv_flow_api.id(1110540110632666316)
,p_validation_name=>'v_ODL_pół_metra'
,p_validation_sequence=>10
,p_validation=>'MOD(:ODLEGLOSC,0.5) = 0'
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'Odległość może być tylko co 0.5 metra'
,p_always_execute=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'ODLEGLOSC'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1110547281561666332)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(1110540110632666316)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>' - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_process_error_message=>'Popraw błędy'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Zapisano zmiany :)'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_api.create_page(
 p_id=>6
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Przebudowy'
,p_page_mode=>'NORMAL'
,p_step_title=>'Przebudowy'
,p_step_sub_title=>'Przebudowy'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(1082261105747272672)
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20161229202827'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(1111089643672280966)
,p_name=>'Lista przebudów'
,p_template=>wwv_flow_api.id(1066237758001455677)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.ID,',
'       p.RODZAJ,',
'       p.UKONCZONO,',
'       p.DATA_ROZP,',
'       p.DATA_UKON,',
'       s.nazwa',
'  from PRZEBUDOWA p INNER JOIN skocznia s ON s.id = skocznia_id'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(1066249505199455687)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1111090311475280968)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Id'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1111090733231280969)
,p_query_column_id=>2
,p_column_alias=>'RODZAJ'
,p_column_display_sequence=>2
,p_column_heading=>'Rodzaj'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1111091181415280969)
,p_query_column_id=>3
,p_column_alias=>'UKONCZONO'
,p_column_display_sequence=>3
,p_column_heading=>'Ukonczono'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1111091567662280969)
,p_query_column_id=>4
,p_column_alias=>'DATA_ROZP'
,p_column_display_sequence=>4
,p_column_heading=>'Data Rozp'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1111091954028280970)
,p_query_column_id=>5
,p_column_alias=>'DATA_UKON'
,p_column_display_sequence=>5
,p_column_heading=>'Data Ukon'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1090313551606527811)
,p_query_column_id=>6
,p_column_alias=>'NAZWA'
,p_column_display_sequence=>6
,p_column_heading=>'Nazwa'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_api.create_page(
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Edytuj Przebudowy'
,p_page_mode=>'NORMAL'
,p_step_title=>'Edytuj Przebudowy'
,p_step_sub_title=>'Edytuj Przebudowy'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(1082261105747272672)
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20161229235627'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1111048422382925900)
,p_plug_name=>'Edytuj Przebudowy'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1066237758001455677)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       RODZAJ,',
'       UKONCZONO,',
'       DATA_ROZP,',
'       DATA_UKON,',
'       SKOCZNIA_ID',
'  from PRZEBUDOWA'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1111049661972925905)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1111160180468925906)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1111160797783925907)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_enable_filter=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1111161386125925908)
,p_name=>'RODZAJ'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RODZAJ'
,p_data_type=>'CLOB'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Rodzaj'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_width=>50
,p_is_required=>false
,p_max_length=>500
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1111161999179925908)
,p_name=>'UKONCZONO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UKONCZONO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_RADIOGROUP'
,p_heading=>'Ukonczono'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_01=>'1'
,p_is_required=>true
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:TAK;t,NIE;n'
,p_lov_display_extra=>true
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'t'
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1111162513659925909)
,p_name=>'DATA_ROZP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATA_ROZP'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Data Rozp'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attribute_02=>'1950-01-01'
,p_attribute_03=>'2016-12-28'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
,p_attribute_08=>'1950:2016'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1111163123661925909)
,p_name=>'DATA_UKON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATA_UKON'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Data Ukon'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_attribute_02=>'1950-01-01'
,p_attribute_03=>'2016-12-28'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
,p_attribute_08=>'1950:2016'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1111163705332925910)
,p_name=>'SKOCZNIA_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SKOCZNIA_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Skocznia Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>'SELECT nazwa,id FROM skocznia'
,p_lov_display_extra=>true
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(1111048910190925901)
,p_internal_uid=>1111048910190925901
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'RESET:SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(1111049362480925902)
,p_interactive_grid_id=>wwv_flow_api.id(1111048910190925901)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(1111049406919925904)
,p_report_id=>wwv_flow_api.id(1111049362480925902)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1111160582531925906)
,p_view_id=>wwv_flow_api.id(1111049406919925904)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(1111160180468925906)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1111161147045925908)
,p_view_id=>wwv_flow_api.id(1111049406919925904)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(1111160797783925907)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1111161733525925908)
,p_view_id=>wwv_flow_api.id(1111049406919925904)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(1111161386125925908)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1111162360987925909)
,p_view_id=>wwv_flow_api.id(1111049406919925904)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(1111161999179925908)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1111162937390925909)
,p_view_id=>wwv_flow_api.id(1111049406919925904)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(1111162513659925909)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1111163588532925910)
,p_view_id=>wwv_flow_api.id(1111049406919925904)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(1111163123661925909)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1111164174383925911)
,p_view_id=>wwv_flow_api.id(1111049406919925904)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(1111163705332925910)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1111164330535925911)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(1111048422382925900)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>' - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Zapisano zmiany :)'
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_api.create_page(
 p_id=>8
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Wykonawcy'
,p_page_mode=>'NORMAL'
,p_step_title=>'Wykonawcy'
,p_step_sub_title=>'Wykonawcy'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(1082261105747272672)
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20161229202853'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(1111883956484156436)
,p_name=>'Lista wykonawców'
,p_template=>wwv_flow_api.id(1066237758001455677)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       NAZWA,',
'       ADRES',
'  from WYKONAWCA'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(1066249505199455687)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1111884699734156441)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1111885059419156441)
,p_query_column_id=>2
,p_column_alias=>'NAZWA'
,p_column_display_sequence=>2
,p_column_heading=>'Nazwa'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1090315132108527827)
,p_query_column_id=>3
,p_column_alias=>'ADRES'
,p_column_display_sequence=>3
,p_column_heading=>'Adres'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_api.create_page(
 p_id=>9
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Edytuj Wykonawców'
,p_page_mode=>'NORMAL'
,p_step_title=>'Edytuj Wykonawców'
,p_step_sub_title=>'Edytuj Wykonawców'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(1082261105747272672)
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20161229211609'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1111927167409184700)
,p_plug_name=>'Edytuj Wykonawców'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1066237758001455677)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       NAZWA,',
'       ADRES',
'  from WYKONAWCA'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1090315271011527828)
,p_name=>'ADRES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ADRES'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Adres'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_width=>50
,p_is_required=>true
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1111928345843184702)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1111928847169184703)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1111929495681184704)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_enable_filter=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1111930084741184704)
,p_name=>'NAZWA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NAZWA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Nazwa'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_width=>50
,p_is_required=>true
,p_max_length=>256
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(1111927637885184701)
,p_internal_uid=>1111927637885184701
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'RESET:SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(1111928061364184702)
,p_interactive_grid_id=>wwv_flow_api.id(1111927637885184701)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(1111928100959184702)
,p_report_id=>wwv_flow_api.id(1111928061364184702)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1111929204004184703)
,p_view_id=>wwv_flow_api.id(1111928100959184702)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(1111928847169184703)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1111929817229184704)
,p_view_id=>wwv_flow_api.id(1111928100959184702)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(1111929495681184704)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1111930482410184705)
,p_view_id=>wwv_flow_api.id(1111928100959184702)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(1111930084741184704)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1125529723082215257)
,p_view_id=>wwv_flow_api.id(1111928100959184702)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(1090315271011527828)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1111930613247184705)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(1111927167409184700)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>' - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Zapisano zmiany :)'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_api.create_page(
 p_id=>10
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Przeb_wykon'
,p_page_mode=>'NORMAL'
,p_step_title=>'Przeb_wykon'
,p_step_sub_title=>'Przeb_wykon'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(1082261105747272672)
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20161229202916'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(1111967634698228290)
,p_name=>'Przebudowa-wykonawca'
,p_template=>wwv_flow_api.id(1066237758001455677)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pw.PRZEBUDOWA_ID,',
'       p.rodzaj,',
'       s.nazwa AS skocznia,',
'       w.nazwa AS wykonawca',
'  from PRZEB_WYKON pw INNER JOIN wykonawca w ON w.id = pw.wykonawca_id INNER JOIN przebudowa p ON p.id = pw.przebudowa_id INNER JOIN skocznia s ON s.id = p.skocznia_id'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(1066249505199455687)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1111968350008228291)
,p_query_column_id=>1
,p_column_alias=>'PRZEBUDOWA_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Przebudowa Id'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1090313780767527813)
,p_query_column_id=>2
,p_column_alias=>'RODZAJ'
,p_column_display_sequence=>2
,p_column_heading=>'Rodzaj'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1090313856166527814)
,p_query_column_id=>3
,p_column_alias=>'SKOCZNIA'
,p_column_display_sequence=>3
,p_column_heading=>'Skocznia'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1090313978354527815)
,p_query_column_id=>4
,p_column_alias=>'WYKONAWCA'
,p_column_display_sequence=>4
,p_column_heading=>'Wykonawca'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_api.create_page(
 p_id=>11
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Edytuj Przeb_wykon'
,p_page_mode=>'NORMAL'
,p_step_title=>'Edytuj Przeb_wykon'
,p_step_sub_title=>'Edytuj Przeb_wykon'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(1082261105747272672)
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20161229211624'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1112099532247683858)
,p_plug_name=>'Edytuj Przeb_wykon'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1066237758001455677)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PRZEBUDOWA_ID,',
'       WYKONAWCA_ID',
'  from PRZEB_WYKON'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1112110781535683860)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1112111257892683861)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1112111888031683862)
,p_name=>'PRZEBUDOWA_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRZEBUDOWA_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Przebudowa_ID'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>'SELECT (rodzaj || '' '' || data_rozp ) AS Opis, id FROM przebudowa;'
,p_lov_display_extra=>true
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1112112452493683863)
,p_name=>'WYKONAWCA_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WYKONAWCA_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Wykonawca Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>'SELECT nazwa, id FROM wykonawca'
,p_lov_display_extra=>true
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(1112100071272683859)
,p_internal_uid=>1112100071272683859
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'RESET:SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(1112110406721683859)
,p_interactive_grid_id=>wwv_flow_api.id(1112100071272683859)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(1112110501779683860)
,p_report_id=>wwv_flow_api.id(1112110406721683859)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1112111672127683861)
,p_view_id=>wwv_flow_api.id(1112110501779683860)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(1112111257892683861)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1112112266683683863)
,p_view_id=>wwv_flow_api.id(1112110501779683860)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(1112111888031683862)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1112112873898683863)
,p_view_id=>wwv_flow_api.id(1112110501779683860)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(1112112452493683863)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1112113029522683863)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(1112099532247683858)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>' - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Zapisano zmiany :)'
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_api.create_page(
 p_id=>12
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Konkursy'
,p_page_mode=>'NORMAL'
,p_step_title=>'Konkursy'
,p_step_sub_title=>'Konkurs'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(1082261105747272672)
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20161229202941'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1112688557705930031)
,p_plug_name=>'Konkursy'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1066237061632455677)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select k.ID,',
'       k.RODZAJ,',
'(s.miejscowosc || '' HS-'' || s.punkt_hs ) AS Skocznia,',
'       k.DATA,',
'       k.IL_WIDZOW,',
'       k.SEZON_NAZWA',
'  from KONKURS k INNER JOIN skocznia s ON s.id = k.skocznia_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(1135319962311600032)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'KZPL_KROPEQ@INTERIA.PL'
,p_internal_uid=>1135319962311600032
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1135320089836600033)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1135350170624600034)
,p_db_column_name=>'RODZAJ'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Rodzaj'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1135350274501600035)
,p_db_column_name=>'SKOCZNIA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Skocznia'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1135350300243600036)
,p_db_column_name=>'DATA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Data'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1135350451947600037)
,p_db_column_name=>'IL_WIDZOW'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Ilosc widzów'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1135350541751600038)
,p_db_column_name=>'SEZON_NAZWA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Sezon nazwa'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(1149569995462422781)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'11495700'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'ID:RODZAJ:SKOCZNIA:DATA:IL_WIDZOW:SEZON_NAZWA'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_api.create_page(
 p_id=>13
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Edytuj Konkursy'
,p_page_mode=>'NORMAL'
,p_step_title=>'Edytuj Konkursy'
,p_step_sub_title=>'Edytuj Konkursy'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(1082261105747272672)
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20170107142631'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1112716006443597531)
,p_plug_name=>'Edytuj Konkursy'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1066237758001455677)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       RODZAJ,',
'       DATA,',
'       IL_WIDZOW,',
'       SEZON_NAZWA,',
'       SKOCZNIA_ID',
'  from KONKURS'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1090315036886527826)
,p_name=>'SKOCZNIA_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SKOCZNIA_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Skocznia'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>'SELECT (miejscowosc || '' HS-'' || punkt_hs) AS nazwa, id FROM skocznia;'
,p_lov_display_extra=>true
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1112717216900597537)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1112717793840597538)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1112718301698597541)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1112718952098597541)
,p_name=>'RODZAJ'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RODZAJ'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Rodzaj'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:indywidualny;indywidualny,druzynowy;druzynowy'
,p_lov_display_extra=>true
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1112719544780597542)
,p_name=>'DATA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATA'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Data'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
,p_attribute_08=>'1950:2017'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1112720115182597542)
,p_name=>'IL_WIDZOW'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IL_WIDZOW'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Il Widzow'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_01=>'0'
,p_attribute_02=>'35000'
,p_attribute_03=>'left'
,p_item_width=>10
,p_is_required=>false
,p_max_length=>6
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1112720796488597543)
,p_name=>'SEZON_NAZWA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEZON_NAZWA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Nazwa sezonu'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>'SELECT nazwa AS sezon, nazwa FROM sezon'
,p_lov_display_extra=>true
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(1112716508686597532)
,p_internal_uid=>1112716508686597532
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'RESET:SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(1112716954220597535)
,p_interactive_grid_id=>wwv_flow_api.id(1112716508686597532)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(1112717049965597535)
,p_report_id=>wwv_flow_api.id(1112716954220597535)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1112718184504597540)
,p_view_id=>wwv_flow_api.id(1112717049965597535)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(1112717793840597538)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1112718700323597541)
,p_view_id=>wwv_flow_api.id(1112717049965597535)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(1112718301698597541)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1112719382686597541)
,p_view_id=>wwv_flow_api.id(1112717049965597535)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(1112718952098597541)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1112719955884597542)
,p_view_id=>wwv_flow_api.id(1112717049965597535)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(1112719544780597542)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1112720520125597543)
,p_view_id=>wwv_flow_api.id(1112717049965597535)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(1112720115182597542)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1112721100858597544)
,p_view_id=>wwv_flow_api.id(1112717049965597535)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(1112720796488597543)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1125158732965789489)
,p_view_id=>wwv_flow_api.id(1112717049965597535)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(1090315036886527826)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1149604027812437539)
,p_tabular_form_region_id=>wwv_flow_api.id(1112716006443597531)
,p_validation_name=>'v_IL_WIDZOW'
,p_validation_sequence=>10
,p_validation=>'MOD(:IL_WIDZOW,1) = 0'
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'Podaj pełną liczbę'
,p_always_execute=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'IL_WIDZOW'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1112721302231597545)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(1112716006443597531)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>' - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Zapisano zmiany :)'
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_api.create_page(
 p_id=>14
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Edytuj Skocznie'
,p_page_mode=>'NORMAL'
,p_step_title=>'Edytuj Skocznie'
,p_step_sub_title=>'Edytuj Skocznie'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(1082261105747272672)
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20161230001135'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1093637295336012136)
,p_plug_name=>'Edytuj Skocznie'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1066237758001455677)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       NAZWA,',
'       MIEJSCOWOSC,',
'       KRAJ,',
'       PUNKT_K,',
'       PUNKT_HS,',
'       ROK_POWST,',
'       PRZEBUDOWANA',
'  from SKOCZNIA'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1093638428822012139)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1093638961137012140)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1093639558612012141)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1093760113010012142)
,p_name=>'NAZWA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NAZWA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Nazwa'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_width=>25
,p_is_required=>true
,p_max_length=>128
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1093760721827012143)
,p_name=>'MIEJSCOWOSC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MIEJSCOWOSC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Miejscowosc'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_width=>25
,p_is_required=>true
,p_max_length=>128
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1093761315009012145)
,p_name=>'KRAJ'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'KRAJ'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Kraj'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_width=>25
,p_is_required=>false
,p_max_length=>128
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1093761989465012146)
,p_name=>'PUNKT_K'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PUNKT_K'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Punkt K'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'90'
,p_attribute_02=>'200'
,p_attribute_03=>'right'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1093762542467012146)
,p_name=>'PUNKT_HS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PUNKT_HS'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Punkt Hs'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'97'
,p_attribute_02=>'225'
,p_attribute_03=>'right'
,p_item_width=>5
,p_is_required=>true
,p_max_length=>3
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1093763137806012147)
,p_name=>'ROK_POWST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROK_POWST'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Rok Powst'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'CENTER'
,p_attribute_02=>'1950-01-01'
,p_attribute_03=>'2016-12-28'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
,p_attribute_08=>'1950:2016'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1093763792119012147)
,p_name=>'PRZEBUDOWANA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRZEBUDOWANA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_RADIOGROUP'
,p_heading=>'Przebudowana'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attribute_01=>'1'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:TAK;t,NIE;n'
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'n'
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1149604126487437540)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(1093637709592012137)
,p_internal_uid=>1093637709592012137
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'RESET:SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(1093638174427012138)
,p_interactive_grid_id=>wwv_flow_api.id(1093637709592012137)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(1093638210803012138)
,p_report_id=>wwv_flow_api.id(1093638174427012138)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1093639363068012141)
,p_view_id=>wwv_flow_api.id(1093638210803012138)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(1093638961137012140)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1093639944825012142)
,p_view_id=>wwv_flow_api.id(1093638210803012138)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(1093639558612012141)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1093760562272012143)
,p_view_id=>wwv_flow_api.id(1093638210803012138)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(1093760113010012142)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1093761190076012143)
,p_view_id=>wwv_flow_api.id(1093638210803012138)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(1093760721827012143)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1093761755033012146)
,p_view_id=>wwv_flow_api.id(1093638210803012138)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(1093761315009012145)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1093762344859012146)
,p_view_id=>wwv_flow_api.id(1093638210803012138)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(1093761989465012146)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1093762917434012147)
,p_view_id=>wwv_flow_api.id(1093638210803012138)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(1093762542467012146)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1093763512680012147)
,p_view_id=>wwv_flow_api.id(1093638210803012138)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(1093763137806012147)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1093764185705012147)
,p_view_id=>wwv_flow_api.id(1093638210803012138)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(1093763792119012147)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1174032856705402868)
,p_view_id=>wwv_flow_api.id(1093638210803012138)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(1149604126487437540)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1149604294958437541)
,p_tabular_form_region_id=>wwv_flow_api.id(1093637295336012136)
,p_validation_name=>'v_PUNKT_K'
,p_validation_sequence=>10
,p_validation=>'MOD(:PUNKT_K,1) = 0'
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'Punkt konstrukcyjny powinien mieć pełne metry!'
,p_always_execute=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'PUNKT_K'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1149604337246437542)
,p_tabular_form_region_id=>wwv_flow_api.id(1093637295336012136)
,p_validation_name=>'v_PUNKT_HS'
,p_validation_sequence=>20
,p_validation=>'MOD(:PUNKT_HS,1) = 0'
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'Rozmiar skoczni powinien mieć pełne metry!'
,p_always_execute=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'PUNKT_HS'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1093764335698012148)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(1093637295336012136)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>' - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Zapisano zmiany :)'
);
end;
/
prompt --application/pages/page_00015
begin
wwv_flow_api.create_page(
 p_id=>15
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Pogody'
,p_page_mode=>'NORMAL'
,p_step_title=>'Pogody'
,p_step_sub_title=>'Pogody'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(1082261105747272672)
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20161229203021'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1125638222649849274)
,p_plug_name=>'Spis pogód'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1066237061632455677)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.OGOLNIE,',
'       p.OPADY,',
'       p.RODZAJ_OP,',
'       p.ILOSC_OP,',
'       p.SILA_W,',
'       p.KONKURS_ID,',
's.nazwa,',
'k.data',
'  from POGODA p INNER JOIN konkurs k ON k.id = p.konkurs_id INNER JOIN skocznia s ON s.id = k.skocznia_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(1135319053166600023)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'KZPL_KROPEQ@INTERIA.PL'
,p_internal_uid=>1135319053166600023
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1135319164338600024)
,p_db_column_name=>'OGOLNIE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Ogolnie'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1135319231720600025)
,p_db_column_name=>'OPADY'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Opady'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1135319307048600026)
,p_db_column_name=>'RODZAJ_OP'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Rodzaj op'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1135319468020600027)
,p_db_column_name=>'ILOSC_OP'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Ilosc op'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1135319536641600028)
,p_db_column_name=>'SILA_W'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Sila w'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1135319629727600029)
,p_db_column_name=>'KONKURS_ID'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Konkurs id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1135319734656600030)
,p_db_column_name=>'NAZWA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Nazwa'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1135319808834600031)
,p_db_column_name=>'DATA'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Data'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(1149526415312409863)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'11495265'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'OGOLNIE:OPADY:RODZAJ_OP:ILOSC_OP:SILA_W:KONKURS_ID:NAZWA:DATA'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_api.create_page(
 p_id=>16
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Edytuj Pogody'
,p_page_mode=>'NORMAL'
,p_step_title=>'Edytuj Pogody'
,p_step_sub_title=>'Edytuj Pogody'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(1082261105747272672)
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20161230002434'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1126781144103319228)
,p_plug_name=>'Edytuj Pogody'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1066237758001455677)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.OGOLNIE,',
'       p.OPADY,',
'       p.RODZAJ_OP,',
'       p.ILOSC_OP,',
'       p.SILA_W,',
'       p.konkurs_id,',
's.nazwa,',
'k.data',
'  from POGODA p INNER JOIN konkurs k ON k.id = p.konkurs_id INNER JOIN skocznia s ON s.id = k.skocznia_id'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1090315367157527829)
,p_name=>'NAZWA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NAZWA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Nazwa skoczni'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1090315421752527830)
,p_name=>'DATA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATA'
,p_data_type=>'DATE'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Data konkursu'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'CENTER'
,p_attribute_02=>'VALUE'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1126782385179319231)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1126782839664319231)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1126783459378319233)
,p_name=>'OGOLNIE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OGOLNIE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Ogólnie'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_item_width=>50
,p_is_required=>true
,p_max_length=>1024
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1126784087598319234)
,p_name=>'OPADY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPADY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_RADIOGROUP'
,p_heading=>'Opady'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_01=>'1'
,p_is_required=>true
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:TAK;t,NIE;n'
,p_lov_display_extra=>true
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1126784682253319235)
,p_name=>'RODZAJ_OP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RODZAJ_OP'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Rodzaj Opadów'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_width=>50
,p_is_required=>false
,p_max_length=>64
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1126785208548319235)
,p_name=>'ILOSC_OP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ILOSC_OP'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Ilosc Opadów'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_width=>50
,p_is_required=>false
,p_max_length=>512
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1126785862622319237)
,p_name=>'SILA_W'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SILA_W'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Siła Wiatru'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_width=>50
,p_is_required=>false
,p_max_length=>512
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1126786409163319238)
,p_name=>'KONKURS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'KONKURS_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Konkurs ID'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>'SELECT id AS ajdi, id FROM konkurs'
,p_lov_display_extra=>true
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(1126781688897319229)
,p_internal_uid=>1126781688897319229
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_no_data_found_message=>'BRAK DANYCH'
,p_show_toolbar=>true
,p_toolbar_buttons=>'RESET:SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(1126782095009319230)
,p_interactive_grid_id=>wwv_flow_api.id(1126781688897319229)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(1126782167805319230)
,p_report_id=>wwv_flow_api.id(1126782095009319230)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1126783221773319232)
,p_view_id=>wwv_flow_api.id(1126782167805319230)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(1126782839664319231)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1126783898371319234)
,p_view_id=>wwv_flow_api.id(1126782167805319230)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(1126783459378319233)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1126784484436319235)
,p_view_id=>wwv_flow_api.id(1126782167805319230)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(1126784087598319234)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1126785063461319235)
,p_view_id=>wwv_flow_api.id(1126782167805319230)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(1126784682253319235)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1126785654342319236)
,p_view_id=>wwv_flow_api.id(1126782167805319230)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(1126785208548319235)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1126786275677319238)
,p_view_id=>wwv_flow_api.id(1126782167805319230)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(1126785862622319237)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1126786884331319238)
,p_view_id=>wwv_flow_api.id(1126782167805319230)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(1126786409163319238)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1127291786993358509)
,p_view_id=>wwv_flow_api.id(1126782167805319230)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(1090315367157527829)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1127424511657376107)
,p_view_id=>wwv_flow_api.id(1126782167805319230)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(1090315421752527830)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1126787039848319238)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(1126781144103319228)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>' - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Zapisano zmiany :)'
);
end;
/
prompt --application/pages/page_00017
begin
wwv_flow_api.create_page(
 p_id=>17
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Wyniki_ind'
,p_page_mode=>'NORMAL'
,p_step_title=>'Wyniki_ind'
,p_step_sub_title=>'Wyniki_ind'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(1082261105747272672)
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20161229203047'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1128883390840513367)
,p_plug_name=>'Wyniki indywidualne'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1066237061632455677)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select wi.ID,',
'       wi.NR_SERII,',
'       wi.SKOK,',
'       wi.WIATR,',
'       wi.PKT_WIATR,',
'       wi.BELKA,',
'       wi.PKT_BELKA,',
'(s.miejscowosc || '' HS-'' || s.punkt_hs || '' '' || k.data) AS Konkurs,',
'(z.imie || '' '' || z.nazwisko ) AS Zawodnik',
'  from WYNIK_IND wi INNER JOIN konkurs k ON k.id=wi.konkurs_id INNER JOIN skocznia s ON s.id=k.skocznia_id',
'INNER JOIN zawodnik z ON z.id=wi.zawodnik_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(1135351061199600043)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'KZPL_KROPEQ@INTERIA.PL'
,p_internal_uid=>1135351061199600043
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1135351169731600044)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1135351233990600045)
,p_db_column_name=>'NR_SERII'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nr serii'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1135351367700600046)
,p_db_column_name=>'SKOK'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Skok'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1135351482495600047)
,p_db_column_name=>'WIATR'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Wiatr'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1135351541980600048)
,p_db_column_name=>'PKT_WIATR'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Pkt wiatr'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1135351644544600049)
,p_db_column_name=>'BELKA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Belka'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1135351745262600050)
,p_db_column_name=>'PKT_BELKA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Pkt belka'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1149600204745437501)
,p_db_column_name=>'KONKURS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Konkurs'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1149600383174437502)
,p_db_column_name=>'ZAWODNIK'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Zawodnik'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(1149674798276441577)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'11496748'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'ID:NR_SERII:SKOK:WIATR:PKT_WIATR:BELKA:PKT_BELKA:KONKURS:ZAWODNIK'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00018
begin
wwv_flow_api.create_page(
 p_id=>18
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Edytuj Wyniki'
,p_page_mode=>'NORMAL'
,p_step_title=>'Edytuj Wyniki'
,p_step_sub_title=>'Edytuj Wyniki'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(1082261105747272672)
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20161230003716'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1129645118015202579)
,p_plug_name=>'Edytuj Wyniki'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1066237758001455677)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select wi.ID,',
'       wi.ZAWODNIK_ID,',
'       wi.NR_SERII,',
'       wi.SKOK,',
'       wi.WIATR,',
'       wi.PKT_WIATR,',
'       wi.BELKA,',
'       wi.PKT_BELKA,',
'       wi.KONKURS_ID,',
'(s.miejscowosc || '' HS-'' || s.punkt_hs) AS miejscowosc,',
'k.data',
'  from WYNIK_IND wi INNER JOIN konkurs k ON k.id=wi.konkurs_id INNER JOIN skocznia s ON s.id=k.skocznia_id'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1090316737016527843)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1090316849711527844)
,p_name=>'NR_SERII'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NR_SERII'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Nr serii'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:0;0,1;1,2;2'
,p_lov_display_extra=>true
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1090316959557527845)
,p_name=>'SKOK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SKOK'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Skok'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_attribute_01=>'0'
,p_attribute_02=>'260'
,p_attribute_03=>'left'
,p_is_required=>true
,p_max_length=>5
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1090317027869527846)
,p_name=>'WIATR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WIATR'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Wiatr'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_attribute_01=>'-3'
,p_attribute_02=>'3'
,p_attribute_03=>'left'
,p_item_width=>5
,p_is_required=>false
,p_max_length=>5
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1090317127268527847)
,p_name=>'PKT_WIATR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PKT_WIATR'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Pkt wiatr'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
,p_attribute_01=>'-40'
,p_attribute_02=>'40'
,p_attribute_03=>'right'
,p_item_width=>5
,p_is_required=>false
,p_max_length=>5
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1090317267380527848)
,p_name=>'BELKA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BELKA'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Belka'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>200
,p_value_alignment=>'LEFT'
,p_attribute_01=>'0'
,p_attribute_02=>'30'
,p_attribute_03=>'left'
,p_item_width=>2
,p_is_required=>true
,p_max_length=>2
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1090317394924527849)
,p_name=>'PKT_BELKA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PKT_BELKA'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Pkt belka'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>210
,p_value_alignment=>'LEFT'
,p_attribute_01=>'-40'
,p_attribute_02=>'40'
,p_attribute_03=>'left'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1090317401891527850)
,p_name=>'KONKURS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'KONKURS_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Konkurs id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>220
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>'SELECT (s.miejscowosc || '' HS-'' || s.punkt_hs || '' '' || k.data ) as Konkurs, k.id FROM konkurs k INNER JOIN skocznia s ON s.id=k.skocznia_id'
,p_lov_display_extra=>true
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1129646307124202584)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1129646827400202585)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1135317155354600004)
,p_name=>'ZAWODNIK_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ZAWODNIK_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Zawodnik id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>'SELECT (imie || '' '' || nazwisko) as Skoczek, id FROM zawodnik;'
,p_lov_display_extra=>true
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(1129645616592202580)
,p_internal_uid=>1129645616592202580
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'RESET:SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(1129646087689202583)
,p_interactive_grid_id=>wwv_flow_api.id(1129645616592202580)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(1129646117393202584)
,p_report_id=>wwv_flow_api.id(1129646087689202583)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1129647251170202587)
,p_view_id=>wwv_flow_api.id(1129646117393202584)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(1129646827400202585)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1135599777083650250)
,p_view_id=>wwv_flow_api.id(1129646117393202584)
,p_display_seq=>13
,p_column_id=>wwv_flow_api.id(1090316737016527843)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1135600264581650270)
,p_view_id=>wwv_flow_api.id(1129646117393202584)
,p_display_seq=>14
,p_column_id=>wwv_flow_api.id(1090316849711527844)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1135600784516650287)
,p_view_id=>wwv_flow_api.id(1129646117393202584)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(1090316959557527845)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1135601177883650305)
,p_view_id=>wwv_flow_api.id(1129646117393202584)
,p_display_seq=>16
,p_column_id=>wwv_flow_api.id(1090317027869527846)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1135601627475650324)
,p_view_id=>wwv_flow_api.id(1129646117393202584)
,p_display_seq=>17
,p_column_id=>wwv_flow_api.id(1090317127268527847)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1135602188545650342)
,p_view_id=>wwv_flow_api.id(1129646117393202584)
,p_display_seq=>18
,p_column_id=>wwv_flow_api.id(1090317267380527848)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1135602669881650360)
,p_view_id=>wwv_flow_api.id(1129646117393202584)
,p_display_seq=>19
,p_column_id=>wwv_flow_api.id(1090317394924527849)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1135603171016650378)
,p_view_id=>wwv_flow_api.id(1129646117393202584)
,p_display_seq=>20
,p_column_id=>wwv_flow_api.id(1090317401891527850)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1142956511861243121)
,p_view_id=>wwv_flow_api.id(1129646117393202584)
,p_display_seq=>23
,p_column_id=>wwv_flow_api.id(1135317155354600004)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1149604483837437543)
,p_tabular_form_region_id=>wwv_flow_api.id(1129645118015202579)
,p_validation_name=>'v_SKOK_pół_metra'
,p_validation_sequence=>10
,p_validation=>'MOD(:SKOK,0.5) = 0'
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'Skok mierzony jest co 0.5 metra!'
,p_always_execute=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'SKOK'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1149604551577437544)
,p_tabular_form_region_id=>wwv_flow_api.id(1129645118015202579)
,p_validation_name=>'v_WIATR'
,p_validation_sequence=>20
,p_validation=>'MOD(:WIATR,0.01) = 0'
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'Wiatr musi mieć dokładność do 0.01'
,p_always_execute=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'WIATR'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1149604691090437545)
,p_tabular_form_region_id=>wwv_flow_api.id(1129645118015202579)
,p_validation_name=>'V_PKT_WIATR'
,p_validation_sequence=>30
,p_validation=>'MOD(:PKT_WIATR,0.1) = 0'
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'Punkty za wiatr muszą być z dokładnością do 0.1'
,p_always_execute=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'PKT_WIATR'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1149604783022437546)
,p_tabular_form_region_id=>wwv_flow_api.id(1129645118015202579)
,p_validation_name=>'V_BELKA'
,p_validation_sequence=>40
,p_validation=>'MOD(:BELKA,1) = 0'
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'Belka musi być pełną liczbą'
,p_always_execute=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'BELKA'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1149604822898437547)
,p_tabular_form_region_id=>wwv_flow_api.id(1129645118015202579)
,p_validation_name=>'V_PKT_BELKA'
,p_validation_sequence=>50
,p_validation=>'MOD(:PKT_BELKA,0.1) = 0'
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'Bonifikata za belkę musi być z dokładnością do 0.1'
,p_always_execute=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'PKT_BELKA'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1129822287126202596)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(1129645118015202579)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>' - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Zapisano zmiany :)'
);
end;
/
prompt --application/pages/page_00019
begin
wwv_flow_api.create_page(
 p_id=>19
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Noty'
,p_page_mode=>'NORMAL'
,p_step_title=>'Noty'
,p_step_sub_title=>'Noty'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(1082261105747272672)
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20161229203113'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1137457367930152572)
,p_plug_name=>'Lista przyznanych not'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1066237061632455677)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       NOTA,',
'       WYNIK_IND_ID',
'  from NOTY'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(1135350646200600039)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'KZPL_KROPEQ@INTERIA.PL'
,p_internal_uid=>1135350646200600039
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1135350738679600040)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1135350805055600041)
,p_db_column_name=>'NOTA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nota'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1135350909526600042)
,p_db_column_name=>'WYNIK_IND_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Wynik ind id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(1149577257559428986)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'11495773'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'ID:NOTA:WYNIK_IND_ID'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_api.create_page(
 p_id=>20
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Edytuj Noty'
,p_page_mode=>'NORMAL'
,p_step_title=>'Edytuj Noty'
,p_step_sub_title=>'Edytuj Noty'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(1082261105747272672)
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20161230004128'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1138375526401207869)
,p_plug_name=>'Edytuj Noty'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1066237758001455677)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       NOTA,',
'       WYNIK_IND_ID',
'  from NOTY'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1138376722674207871)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1138377250913207872)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1138377867875207873)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Id nota'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1138378463081207874)
,p_name=>'NOTA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NOTA'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Nota'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_01=>'0'
,p_attribute_02=>'20'
,p_attribute_03=>'left'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1138379090178207874)
,p_name=>'WYNIK_IND_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WYNIK_IND_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Wynik Ind Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>'SELECT id as ajdi, id FROM wynik_ind'
,p_lov_display_extra=>true
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(1138376090983207870)
,p_internal_uid=>1138376090983207870
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'RESET:SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(1138376426132207871)
,p_interactive_grid_id=>wwv_flow_api.id(1138376090983207870)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(1138376508386207871)
,p_report_id=>wwv_flow_api.id(1138376426132207871)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1138377616155207873)
,p_view_id=>wwv_flow_api.id(1138376508386207871)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(1138377250913207872)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1138378286541207873)
,p_view_id=>wwv_flow_api.id(1138376508386207871)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(1138377867875207873)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1138378880058207874)
,p_view_id=>wwv_flow_api.id(1138376508386207871)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(1138378463081207874)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1138379404973207874)
,p_view_id=>wwv_flow_api.id(1138376508386207871)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(1138379090178207874)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1149604989571437548)
,p_tabular_form_region_id=>wwv_flow_api.id(1138375526401207869)
,p_validation_name=>'V_NOTA'
,p_validation_sequence=>10
,p_validation=>'MOD(:NOTA,0.5) = 0'
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'Noty przyznawane są co 0.5!'
,p_always_execute=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'NOTA'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1138379696514207875)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(1138375526401207869)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>' - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Zapisano zmiany :)'
);
end;
/
prompt --application/pages/page_00021
begin
wwv_flow_api.create_page(
 p_id=>21
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Skocznie_admin'
,p_page_mode=>'NORMAL'
,p_step_title=>'Skocznie'
,p_step_sub_title=>'Skocznie'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(1082261105747272672)
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20161228185726'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(1096218238644539138)
,p_name=>'Skocznie'
,p_template=>wwv_flow_api.id(1066237758001455677)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       NAZWA,',
'       MIEJSCOWOSC,',
'       KRAJ,',
'       PUNKT_K,',
'       PUNKT_HS,',
'       ROK_POWST,',
'       PRZEBUDOWANA',
'  from SKOCZNIA'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(1066249505199455687)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1096218964760539142)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Id'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1096219347967539143)
,p_query_column_id=>2
,p_column_alias=>'NAZWA'
,p_column_display_sequence=>2
,p_column_heading=>'Nazwa'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1096219771978539143)
,p_query_column_id=>3
,p_column_alias=>'MIEJSCOWOSC'
,p_column_display_sequence=>3
,p_column_heading=>'Miejscowosc'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1096220143811539143)
,p_query_column_id=>4
,p_column_alias=>'KRAJ'
,p_column_display_sequence=>4
,p_column_heading=>'Kraj'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1096220589954539144)
,p_query_column_id=>5
,p_column_alias=>'PUNKT_K'
,p_column_display_sequence=>5
,p_column_heading=>'Punkt K'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1096220905918539144)
,p_query_column_id=>6
,p_column_alias=>'PUNKT_HS'
,p_column_display_sequence=>6
,p_column_heading=>'Punkt Hs'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1096221321065539145)
,p_query_column_id=>7
,p_column_alias=>'ROK_POWST'
,p_column_display_sequence=>7
,p_column_heading=>'Rok Powst'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1096221764122539146)
,p_query_column_id=>8
,p_column_alias=>'PRZEBUDOWANA'
,p_column_display_sequence=>8
,p_column_heading=>'Przebudowana'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
end;
/
prompt --application/pages/page_00022
begin
wwv_flow_api.create_page(
 p_id=>22
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'SezonyReport'
,p_page_mode=>'NORMAL'
,p_step_title=>'SezonyReport'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(1082261105747272672)
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20161229203148'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1096700634189606375)
,p_plug_name=>'Sezony'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1066237061632455677)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "ROWID", ',
'"NAZWA",',
'"LICZBA_KONK",',
'"RODZAJ"',
'from "#OWNER#"."SEZON" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(1096701036566606376)
,p_name=>'Report 1'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:23:&APP_SESSION.::::P23_ROWID:#ROWID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
,p_owner=>'KZPL_KROPEQ@INTERIA.PL'
,p_internal_uid=>1096701036566606376
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1096701172156606378)
,p_db_column_name=>'ROWID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ROWID'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1096701563233606380)
,p_db_column_name=>'NAZWA'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Nazwa'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1096701944575606381)
,p_db_column_name=>'LICZBA_KONK'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Liczba Konk'
,p_column_type=>'NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1096702320775606381)
,p_db_column_name=>'RODZAJ'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Rodzaj'
,p_column_type=>'STRING'
,p_security_scheme=>wwv_flow_api.id(1082261105747272672)
,p_help_text=>'zimowy lub letni'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(1096703800063607392)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'10967039'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'ROWID:NAZWA:LICZBA_KONK:RODZAJ'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1096702737067606381)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(1096700634189606375)
,p_button_name=>'DODAJ'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1066265958847455704)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Dodaj'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:23'
);
end;
/
prompt --application/pages/page_00023
begin
wwv_flow_api.create_page(
 p_id=>23
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'SezonyForm'
,p_page_mode=>'NORMAL'
,p_step_title=>'SezonyForm'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(1082261105747272672)
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20170107142038'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1096567442724603290)
,p_plug_name=>'Dodaj Sezon'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1066237758001455677)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1096567986021603291)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(1096567442724603290)
,p_button_name=>'ZAPISZ'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1066265958847455704)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Zapisz zmiany'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P23_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1096568172050603291)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1096567442724603290)
,p_button_name=>'ANULUJ'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1066265958847455704)
,p_button_image_alt=>'Anuluj'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1096567815853603291)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(1096567442724603290)
,p_button_name=>'DODAJ'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1066265958847455704)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Dodaj'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P23_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1096568081639603291)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(1096567442724603290)
,p_button_name=>'USUŃ'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1066265958847455704)
,p_button_image_alt=>'Usuń'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P23_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(1096569745815603293)
,p_branch_action=>'f?p=&APP_ID.:22:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1096620103546603375)
,p_name=>'P23_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1096567442724603290)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rowid'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1066265177223455703)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1096620490249603392)
,p_name=>'P23_NAZWA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(1096567442724603290)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nazwa sezonu'
,p_source=>'NAZWA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(1066265177223455703)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1096620818865603392)
,p_name=>'P23_LICZBA_KONK'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(1096567442724603290)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Liczba konkursów'
,p_source=>'LICZBA_KONK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>2
,p_field_template=>wwv_flow_api.id(1066265177223455703)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'0'
,p_attribute_02=>'37'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1096621211676603393)
,p_name=>'P23_RODZAJ'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(1096567442724603290)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rodzaj'
,p_source=>'RODZAJ'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:zimowy;zimowy,letni;letni'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1066265177223455703)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1533567224721138604)
,p_validation_name=>'New'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  DECLARE',
'  v_rok_przed NUMBER;',
'v_rok_po NUMBER;',
'BEGIN',
'  -- sprawdzamy wpierw czy dlugosc sie zgadza',
'  IF(LENGTH(:P23_nazwa) = 9 ) THEN',
'      -- sprawdzamy czy możemy konwertować do NUMBER ( czy kolejne znaki to cyfry )',
'      IF (SUBSTR(:P23_nazwa,1,1) IN (''1'',''2'',''3'',''4'',''5'',''6'',''7'',''8'',''9'') ',
'        AND SUBSTR(:P23_nazwa,2,1) IN (''0'',''1'',''2'',''3'',''4'',''5'',''6'',''7'',''8'',''9'')',
'        AND SUBSTR(:P23_nazwa,3,1) IN (''0'',''1'',''2'',''3'',''4'',''5'',''6'',''7'',''8'',''9'')',
'        AND SUBSTR(:P23_nazwa,4,1) IN (''0'',''1'',''2'',''3'',''4'',''5'',''6'',''7'',''8'',''9'')',
'        AND SUBSTR(:P23_nazwa,5,1) = ''/''',
'        AND SUBSTR(:P23_nazwa,6,1) IN (''1'',''2'',''3'',''4'',''5'',''6'',''7'',''8'',''9'')',
'        AND SUBSTR(:P23_nazwa,7,1) IN (''0'',''1'',''2'',''3'',''4'',''5'',''6'',''7'',''8'',''9'')',
'        AND SUBSTR(:P23_nazwa,8,1) IN (''0'',''1'',''2'',''3'',''4'',''5'',''6'',''7'',''8'',''9'')',
'        AND SUBSTR(:P23_nazwa,9,1) IN (''0'',''1'',''2'',''3'',''4'',''5'',''6'',''7'',''8'',''9'')',
'      ) THEN',
'          v_rok_przed := TO_NUMBER(SUBSTR(:P23_nazwa,1,4));',
'          v_rok_po := TO_NUMBER(SUBSTR(:P23_nazwa,6,4));',
'          IF( v_rok_po - v_rok_przed = 1 ) THEN',
'            RETURN True;',
'          ELSE',
'            RETURN false;',
'          END IF;',
'      ELSE',
'          RETURN false;',
'      END IF;',
'  ELSIF(LENGTH(:P23_nazwa) = 4 ) THEN',
'      IF (SUBSTR(:P23_nazwa,1,1) IN (''1'',''2'',''3'',''4'',''5'',''6'',''7'',''8'',''9'') ',
'        AND SUBSTR(:P23_nazwa,2,1) IN (''0'',''1'',''2'',''3'',''4'',''5'',''6'',''7'',''8'',''9'')',
'        AND SUBSTR(:P23_nazwa,3,1) IN (''0'',''1'',''2'',''3'',''4'',''5'',''6'',''7'',''8'',''9'')',
'        AND SUBSTR(:P23_nazwa,4,1) IN (''0'',''1'',''2'',''3'',''4'',''5'',''6'',''7'',''8'',''9'')',
'      ) THEN',
'          RETURN true;',
'      ELSE',
'          RETURN false;',
'      END IF;',
'  ELSE',
'    RETURN false;',
'  END IF;',
'  END;'))
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Wzór nazw: 2014/2015 lub 2014'
,p_always_execute=>'N'
,p_associated_item=>wwv_flow_api.id(1096620490249603392)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1096622948215603395)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from SEZON'
,p_attribute_02=>'SEZON'
,p_attribute_03=>'P23_ROWID'
,p_attribute_04=>'ROWID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1096623314215603395)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of SEZON'
,p_attribute_02=>'SEZON'
,p_attribute_03=>'P23_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1096623725630603396)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1096568081639603291)
);
end;
/
prompt --application/pages/page_00024
begin
wwv_flow_api.create_page(
 p_id=>24
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Sezony'
,p_page_mode=>'NORMAL'
,p_step_title=>'Sezony'
,p_step_sub_title=>'Sezony'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(1082261105747272672)
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20161229203213'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1102538152676902561)
,p_plug_name=>'Sezony'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1066237061632455677)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAZWA,',
'       LICZBA_KONK,',
'       RODZAJ',
'  from SEZON'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(1135318682196600019)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'KZPL_KROPEQ@INTERIA.PL'
,p_internal_uid=>1135318682196600019
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1135318727917600020)
,p_db_column_name=>'NAZWA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Nazwa'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1135318863756600021)
,p_db_column_name=>'LICZBA_KONK'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Liczba konk'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1135318913615600022)
,p_db_column_name=>'RODZAJ'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Rodzaj'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(1149436334599392356)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'11494364'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'NAZWA:LICZBA_KONK:RODZAJ'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00025
begin
wwv_flow_api.create_page(
 p_id=>25
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Zawodnicy'
,p_page_mode=>'NORMAL'
,p_step_title=>'Zawodnicy'
,p_step_sub_title=>'Zawodnicy'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(1082261105747272672)
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20161229203225'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1146277384429076729)
,p_plug_name=>'Zawodnicy'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1066237061632455677)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select z.ID,',
'       z.IMIE,',
'       z.NAZWISKO,',
'k.nazwa AS klub,',
'kz.nazwa AS Kraj',
'  from ZAWODNIK z INNER JOIN klub k ON k.id=z.klub_id INNER JOIN kraj_zaw kz ON kz.id=z.kraj_zaw_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(1146277474668076729)
,p_name=>'Zawodnicy'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'KZPL_KROPEQ@INTERIA.PL'
,p_internal_uid=>1146277474668076729
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1146277870554076730)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1146278234178076731)
,p_db_column_name=>'IMIE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Imie'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1146278689985076732)
,p_db_column_name=>'NAZWISKO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Nazwisko'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1135318030238600013)
,p_db_column_name=>'KLUB'
,p_display_order=>13
,p_column_identifier=>'E'
,p_column_label=>'Klub sportowy'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1135318177127600014)
,p_db_column_name=>'KRAJ'
,p_display_order=>23
,p_column_identifier=>'F'
,p_column_label=>'Kraj zawodnika'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(1146155304629695092)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'11461554'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'ID:IMIE:NAZWISKO:KLUB:KRAJ'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00026
begin
wwv_flow_api.create_page(
 p_id=>26
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Edytuj Zawodników'
,p_page_mode=>'NORMAL'
,p_step_title=>'Edytuj Zawodników'
,p_step_sub_title=>'Edytuj Zawodników'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(1082261105747272672)
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20161230004321'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1147289116423126211)
,p_plug_name=>'Edytuj Zawodników'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1066237758001455677)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       IMIE,',
'       NAZWISKO,',
'       KRAJ_ZAW_ID,',
'KLUB_ID',
'  from ZAWODNIK'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1135318448167600017)
,p_name=>'KRAJ_ZAW_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'KRAJ_ZAW_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Kraj zawodnika'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>'SELECT nazwa, id FROM kraj_zaw'
,p_lov_display_extra=>true
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1135318586872600018)
,p_name=>'KLUB_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'KLUB_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Klub sportowy'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>'SELECT nazwa, id FROM klub'
,p_lov_display_extra=>true
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1147290387290126214)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1147290831455126214)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1147291422307126216)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1147292011436126216)
,p_name=>'IMIE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IMIE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Imie'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_width=>32
,p_is_required=>true
,p_max_length=>128
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1147292685701126218)
,p_name=>'NAZWISKO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NAZWISKO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Nazwisko'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_width=>32
,p_is_required=>true
,p_max_length=>128
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(1147289605622126212)
,p_internal_uid=>1147289605622126212
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'RESET:SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(1147290098825126213)
,p_interactive_grid_id=>wwv_flow_api.id(1147289605622126212)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(1147290182882126213)
,p_report_id=>wwv_flow_api.id(1147290098825126213)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1147291296255126215)
,p_view_id=>wwv_flow_api.id(1147290182882126213)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(1147290831455126214)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1147291806813126216)
,p_view_id=>wwv_flow_api.id(1147290182882126213)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(1147291422307126216)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1147292472271126218)
,p_view_id=>wwv_flow_api.id(1147290182882126213)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(1147292011436126216)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1147293046962126219)
,p_view_id=>wwv_flow_api.id(1147290182882126213)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(1147292685701126218)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1148023263551203987)
,p_view_id=>wwv_flow_api.id(1147290182882126213)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(1135318448167600017)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1148023733511204004)
,p_view_id=>wwv_flow_api.id(1147290182882126213)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(1135318586872600018)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1147294462040126221)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(1147289116423126211)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>' - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Zapisano zmiany :)'
);
end;
/
prompt --application/pages/page_00027
begin
wwv_flow_api.create_page(
 p_id=>27
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Kraje'
,p_page_mode=>'NORMAL'
,p_step_title=>'Kraje'
,p_step_sub_title=>'Kraje'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(1082261105747272672)
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20161229203249'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1148573757741889521)
,p_plug_name=>'Kraje'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1066237061632455677)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       NAZWA,',
'       LIMIT_START',
'  from KRAJ_ZAW'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(1148573833369889521)
,p_name=>'Kraje'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'KZPL_KROPEQ@INTERIA.PL'
,p_internal_uid=>1148573833369889521
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1148574246201889523)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1148574677574889524)
,p_db_column_name=>'NAZWA'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Nazwa'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1148575013655889524)
,p_db_column_name=>'LIMIT_START'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Limit Start'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(1149154026858955850)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'11491541'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'ID:NAZWA:LIMIT_START'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00028
begin
wwv_flow_api.create_page(
 p_id=>28
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Edytuj Kraje'
,p_page_mode=>'NORMAL'
,p_step_title=>'Edytuj Kraje'
,p_step_sub_title=>'Edytuj Kraje'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(1082261105747272672)
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20161229212023'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1149200588347967680)
,p_plug_name=>'Edytuj Kraje'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1066237758001455677)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       NAZWA,',
'       LIMIT_START',
'  from KRAJ_ZAW'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1149201755232967685)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1149202249446967686)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1149202840456967687)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1149203473752967687)
,p_name=>'NAZWA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NAZWA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Nazwa kraju'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_width=>32
,p_is_required=>true
,p_max_length=>32
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1149204039609967688)
,p_name=>'LIMIT_START'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LIMIT_START'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Limit Startowy'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:2;2,3;3,4;4,5;5,6;6,7;7'
,p_lov_display_extra=>true
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(1149201077379967683)
,p_internal_uid=>1149201077379967683
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'RESET:SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(1149201416410967684)
,p_interactive_grid_id=>wwv_flow_api.id(1149201077379967683)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(1149201506536967684)
,p_report_id=>wwv_flow_api.id(1149201416410967684)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1149202668936967686)
,p_view_id=>wwv_flow_api.id(1149201506536967684)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(1149202249446967686)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1149203268830967687)
,p_view_id=>wwv_flow_api.id(1149201506536967684)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(1149202840456967687)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1149203894536967688)
,p_view_id=>wwv_flow_api.id(1149201506536967684)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(1149203473752967687)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1149204493991967688)
,p_view_id=>wwv_flow_api.id(1149201506536967684)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(1149204039609967688)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1149204619249967688)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(1149200588347967680)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>' - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Zapisano zmiany :)'
);
end;
/
prompt --application/pages/page_00029
begin
wwv_flow_api.create_page(
 p_id=>29
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Trenerzy'
,p_page_mode=>'NORMAL'
,p_step_title=>'Trenerzy'
,p_step_sub_title=>'Trenerzy'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(1082261105747272672)
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20161229203314'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1149888333963479213)
,p_plug_name=>'Trenerzy'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1066237061632455677)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select t.IMIE,',
'       t.NAZWISKO,',
'       t.OD,',
'       t.DO,',
'       kz.nazwa',
'  from TRENER t INNER JOIN kraj_zaw kz ON kz.id=t.kraj_zaw_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(1149888477138479213)
,p_name=>'Trenerzy'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'KZPL_KROPEQ@INTERIA.PL'
,p_internal_uid=>1149888477138479213
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1149888864293479215)
,p_db_column_name=>'IMIE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Imie'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1149889240366479216)
,p_db_column_name=>'NAZWISKO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Nazwisko'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1149889628661479216)
,p_db_column_name=>'OD'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Od'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1149890095004479216)
,p_db_column_name=>'DO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Do'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1149600486190437503)
,p_db_column_name=>'NAZWA'
,p_display_order=>14
,p_column_identifier=>'F'
,p_column_label=>'Reprezentacja'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(1149925264241105280)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'11499253'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'IMIE:NAZWISKO:OD:DO:NAZWA'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00030
begin
wwv_flow_api.create_page(
 p_id=>30
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Edytuj Trenerów'
,p_page_mode=>'NORMAL'
,p_step_title=>'Edytuj Trenerów'
,p_step_sub_title=>'Edytuj Trenerów'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(1082261105747272672)
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20161229212034'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1150172766877134542)
,p_plug_name=>'Edytuj Trenerów'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1066237758001455677)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select IMIE,',
'       NAZWISKO,',
'       OD,',
'       DO,',
'       KRAJ_ZAW_ID',
'  from TRENER'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1150173983305134545)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1150174468889134545)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1150175015038134547)
,p_name=>'IMIE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IMIE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Imie'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_width=>32
,p_is_required=>true
,p_max_length=>32
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1150175674820134548)
,p_name=>'NAZWISKO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NAZWISKO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Nazwisko'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_width=>32
,p_is_required=>true
,p_max_length=>32
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1150176252928134548)
,p_name=>'OD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OD'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Od'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
,p_attribute_08=>'1950:2016'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1150176862704134549)
,p_name=>'DO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DO'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Do'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
,p_attribute_08=>'1950:2016'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1150177468496134549)
,p_name=>'KRAJ_ZAW_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'KRAJ_ZAW_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Reprezentacja'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>'SELECT nazwa, id FROM kraj_zaw'
,p_lov_display_extra=>true
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(1150173202346134543)
,p_internal_uid=>1150173202346134543
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'RESET:SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(1150173641074134544)
,p_interactive_grid_id=>wwv_flow_api.id(1150173202346134543)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(1150173798823134544)
,p_report_id=>wwv_flow_api.id(1150173641074134544)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1150174888638134546)
,p_view_id=>wwv_flow_api.id(1150173798823134544)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(1150174468889134545)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1150175418952134547)
,p_view_id=>wwv_flow_api.id(1150173798823134544)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(1150175015038134547)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1150176067386134548)
,p_view_id=>wwv_flow_api.id(1150173798823134544)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(1150175674820134548)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1150176613856134548)
,p_view_id=>wwv_flow_api.id(1150173798823134544)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(1150176252928134548)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1150177289518134549)
,p_view_id=>wwv_flow_api.id(1150173798823134544)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(1150176862704134549)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1150177819196134549)
,p_view_id=>wwv_flow_api.id(1150173798823134544)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(1150177468496134549)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1150178029137134550)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(1150172766877134542)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>' - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Zapisano zmiany :)'
);
end;
/
prompt --application/pages/page_00031
begin
wwv_flow_api.create_page(
 p_id=>31
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Kluby'
,p_page_mode=>'NORMAL'
,p_step_title=>'Kluby'
,p_step_sub_title=>'Kluby'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(1082261105747272672)
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20161229203340'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1151719741560211066)
,p_plug_name=>'Kluby'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1066237061632455677)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       NAZWA,',
'       MIASTO,',
'       KRAJ',
'  from KLUB'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(1151719849122211066)
,p_name=>'Kluby'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'KZPL_KROPEQ@INTERIA.PL'
,p_internal_uid=>1151719849122211066
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1151730274810211068)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1151730682188211069)
,p_db_column_name=>'NAZWA'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Nazwa'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1151731098693211069)
,p_db_column_name=>'MIASTO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Miasto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1151731491156211071)
,p_db_column_name=>'KRAJ'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Położenie klubu'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(1151750860844214903)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'11517509'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'ID:NAZWA:MIASTO:KRAJ'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00032
begin
wwv_flow_api.create_page(
 p_id=>32
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Edytuj Kluby'
,p_page_mode=>'NORMAL'
,p_step_title=>'Edytuj Kluby'
,p_step_sub_title=>'Edytuj Kluby'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(1082261105747272672)
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20161229212047'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1151781092593225843)
,p_plug_name=>'Edytuj Kluby'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1066237758001455677)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       NAZWA,',
'       MIASTO,',
'       KRAJ',
'  from KLUB'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1151782211395225845)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1151782782301225847)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1151783366970225848)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1151783956945225849)
,p_name=>'NAZWA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NAZWA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Nazwa'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_width=>32
,p_is_required=>true
,p_max_length=>32
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1151784538166225850)
,p_name=>'MIASTO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MIASTO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Miasto'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_width=>32
,p_is_required=>true
,p_max_length=>32
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1151785157996225851)
,p_name=>'KRAJ'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'KRAJ'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Położenie klubu'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_width=>32
,p_is_required=>true
,p_max_length=>32
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(1151781558471225844)
,p_internal_uid=>1151781558471225844
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'RESET:SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(1151781927090225844)
,p_interactive_grid_id=>wwv_flow_api.id(1151781558471225844)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(1151782005357225845)
,p_report_id=>wwv_flow_api.id(1151781927090225844)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1151783139592225848)
,p_view_id=>wwv_flow_api.id(1151782005357225845)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(1151782782301225847)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1151783740573225849)
,p_view_id=>wwv_flow_api.id(1151782005357225845)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(1151783366970225848)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1151784349272225849)
,p_view_id=>wwv_flow_api.id(1151782005357225845)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(1151783956945225849)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1151784978007225850)
,p_view_id=>wwv_flow_api.id(1151782005357225845)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(1151784538166225850)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1151785594496225851)
,p_view_id=>wwv_flow_api.id(1151782005357225845)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(1151785157996225851)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1151785735489225852)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(1151781092593225843)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>' - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Zapisano zmiany :)'
);
end;
/
prompt --application/pages/page_00033
begin
wwv_flow_api.create_page(
 p_id=>33
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Sponsorzy'
,p_page_mode=>'NORMAL'
,p_step_title=>'Sponsorzy'
,p_step_sub_title=>'Sponsorzy'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(1082261105747272672)
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20161229203406'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1161347811630424705)
,p_plug_name=>'Sponsorzy'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1066237061632455677)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       NAZWA',
'  from SPONSORZY'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(1161347927196424705)
,p_name=>'Sponsorzy'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'KZPL_KROPEQ@INTERIA.PL'
,p_internal_uid=>1161347927196424705
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1161348381583424709)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1161348752501424710)
,p_db_column_name=>'NAZWA'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Nazwa sponsora'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(1161435131335048471)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'11614352'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'ID:NAZWA'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00034
begin
wwv_flow_api.create_page(
 p_id=>34
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Edytuj Sponsorów'
,p_page_mode=>'NORMAL'
,p_step_title=>'Edytuj Sponsorów'
,p_step_sub_title=>'Edytuj Sponsorów'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(1082261105747272672)
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20161229212105'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1161486608629444032)
,p_plug_name=>'Edytuj Sponsorów'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1066237758001455677)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       NAZWA',
'  from SPONSORZY'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1161487857186444034)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1161488358254444035)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1161488953521444036)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1161489529252444036)
,p_name=>'NAZWA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NAZWA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Nazwa sponsora'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_width=>32
,p_is_required=>true
,p_max_length=>32
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(1161487132342444033)
,p_internal_uid=>1161487132342444033
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'RESET:SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(1161487546058444033)
,p_interactive_grid_id=>wwv_flow_api.id(1161487132342444033)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(1161487647846444034)
,p_report_id=>wwv_flow_api.id(1161487546058444033)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1161488743025444035)
,p_view_id=>wwv_flow_api.id(1161487647846444034)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(1161488358254444035)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1161489331884444036)
,p_view_id=>wwv_flow_api.id(1161487647846444034)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(1161488953521444036)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1161489986865444037)
,p_view_id=>wwv_flow_api.id(1161487647846444034)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(1161489529252444036)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1161550122202444037)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(1161486608629444032)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>' - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Zapisano zmiany :)'
);
end;
/
prompt --application/pages/page_00035
begin
wwv_flow_api.create_page(
 p_id=>35
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Klub_Sponsor'
,p_page_mode=>'NORMAL'
,p_step_title=>'Klub_Sponsor'
,p_step_sub_title=>'Klub_Sponsor'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(1082261105747272672)
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20161229203430'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1161652801039465336)
,p_plug_name=>'Klub_Sponsor'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1066237061632455677)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.nazwa AS Sponsor,',
'       k.nazwa AS Klub',
'  from KLUB_SPON ks INNER JOIN klub k ON k.id=ks.klub_id INNER JOIN Sponsorzy s ON s.id=ks.sponsorzy_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(1161652965534465336)
,p_name=>'Klub_Sponsor'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'KZPL_KROPEQ@INTERIA.PL'
,p_internal_uid=>1161652965534465336
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1149600528715437504)
,p_db_column_name=>'SPONSOR'
,p_display_order=>10
,p_column_identifier=>'C'
,p_column_label=>'Sponsor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1149600649333437505)
,p_db_column_name=>'KLUB'
,p_display_order=>20
,p_column_identifier=>'D'
,p_column_label=>'Klub'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(1161667900236093945)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'11616680'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'SPONSOR:KLUB'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00036
begin
wwv_flow_api.create_page(
 p_id=>36
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Edytuj Klub_Sponsor'
,p_page_mode=>'NORMAL'
,p_step_title=>'Edytuj Klub_Sponsor'
,p_step_sub_title=>'Edytuj Klub_Sponsor'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(1082261105747272672)
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20161230004636'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1161900093966491302)
,p_plug_name=>'Edytuj Klub_Sponsor'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1066237758001455677)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SPONSORZY_ID,',
'       KLUB_ID',
'  from KLUB_SPON'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1161951240006491303)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1161951730107491304)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1161952372959491305)
,p_name=>'SPONSORZY_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SPONSORZY_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Sponsor'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>'SELECT nazwa, id FROM Sponsorzy'
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1161952982299491305)
,p_name=>'KLUB_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'KLUB_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Klub'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>'SELECT nazwa, id FROM Klub'
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(1161950552521491303)
,p_internal_uid=>1161950552521491303
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'RESET:SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(1161950975154491303)
,p_interactive_grid_id=>wwv_flow_api.id(1161950552521491303)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(1161951098341491303)
,p_report_id=>wwv_flow_api.id(1161950975154491303)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1161952117660491304)
,p_view_id=>wwv_flow_api.id(1161951098341491303)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(1161951730107491304)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1161952750161491305)
,p_view_id=>wwv_flow_api.id(1161951098341491303)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(1161952372959491305)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1161953331512491305)
,p_view_id=>wwv_flow_api.id(1161951098341491303)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(1161952982299491305)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1161953528180491306)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(1161900093966491302)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>' - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Zapisano zmiany :)'
);
end;
/
prompt --application/pages/page_00037
begin
wwv_flow_api.create_page(
 p_id=>37
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Punktacja'
,p_page_mode=>'NORMAL'
,p_step_title=>'Punktacja'
,p_step_sub_title=>'Punktacja'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(1082261105747272672)
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20170101201112'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(1162338757376622750)
,p_name=>'Punktacja'
,p_template=>wwv_flow_api.id(1066237758001455677)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       MIEJSCE,',
'       PUNKTY',
'  from PUNKTACJA'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(1066249505199455687)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES'
,p_pagination_display_position=>'BOTTOM_LEFT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1149600718250437506)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1149600854360437507)
,p_query_column_id=>2
,p_column_alias=>'MIEJSCE'
,p_column_display_sequence=>2
,p_column_heading=>'Miejsce'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1149600903386437508)
,p_query_column_id=>3
,p_column_alias=>'PUNKTY'
,p_column_display_sequence=>3
,p_column_heading=>'Punkty'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
end;
/
prompt --application/pages/page_00038
begin
wwv_flow_api.create_page(
 p_id=>38
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Edytuj Punktacje'
,p_page_mode=>'NORMAL'
,p_step_title=>'Edytuj Punktacje'
,p_step_sub_title=>'Edytuj Punktacje'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(1082261105747272672)
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20161230004855'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1162386066452258993)
,p_plug_name=>'Edytuj Punktacje'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1066237758001455677)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       MIEJSCE,',
'       PUNKTY',
'  from PUNKTACJA'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1162387210345258997)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1162387740302258998)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1162388316063258999)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1162388990605259000)
,p_name=>'MIEJSCE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MIEJSCE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Miejsce'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_01=>'1'
,p_attribute_02=>'30'
,p_attribute_03=>'left'
,p_item_width=>5
,p_is_required=>true
,p_max_length=>2
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1162389540339259000)
,p_name=>'PUNKTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PUNKTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Punkty'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_01=>'0'
,p_attribute_02=>'100'
,p_attribute_03=>'left'
,p_item_width=>5
,p_is_required=>true
,p_max_length=>3
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(1162386545610258994)
,p_internal_uid=>1162386545610258994
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'RESET:SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(1162386978853258995)
,p_interactive_grid_id=>wwv_flow_api.id(1162386545610258994)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(1162387079244258996)
,p_report_id=>wwv_flow_api.id(1162386978853258995)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1162388184129258998)
,p_view_id=>wwv_flow_api.id(1162387079244258996)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(1162387740302258998)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1162388795644259000)
,p_view_id=>wwv_flow_api.id(1162387079244258996)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(1162388316063258999)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1162389389519259000)
,p_view_id=>wwv_flow_api.id(1162387079244258996)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(1162388990605259000)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1162389928165259001)
,p_view_id=>wwv_flow_api.id(1162387079244258996)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(1162389540339259000)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1149605084963437549)
,p_tabular_form_region_id=>wwv_flow_api.id(1162386066452258993)
,p_validation_name=>'V_MIEJSCE'
,p_validation_sequence=>10
,p_validation=>'MOD(:MIEJSCE,1) = 0'
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'Podaj pełną liczbę'
,p_always_execute=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'MIEJSCE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1149605189838437550)
,p_tabular_form_region_id=>wwv_flow_api.id(1162386066452258993)
,p_validation_name=>'V_PUNKTY'
,p_validation_sequence=>20
,p_validation=>'MOD(:PUNKTY,1) = 0'
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'Podaj pełną liczbę'
,p_always_execute=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'PUNKTY'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1162390117069259001)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(1162386066452258993)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>' - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Zapisano zmiany :)'
);
end;
/
prompt --application/pages/page_00039
begin
wwv_flow_api.create_page(
 p_id=>39
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Konk_zaw'
,p_page_mode=>'NORMAL'
,p_step_title=>'Konk_zaw'
,p_step_sub_title=>'Konk_zaw'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20170102120251'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(1382085166112581542)
,p_name=>'Konkurs Zawodnik'
,p_template=>wwv_flow_api.id(1066237758001455677)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select (z.imie || '' '' || z.nazwisko ) AS Zawodnik,',
'       (s.miejscowosc || '' HS-'' || s.punkt_hs || '' '' || k.data ) AS Konkurs',
'  from KONK_ZAW kz ',
'  INNER JOIN zawodnik z ON z.id=kz.zawodnik_id',
'  INNER JOIN konkurs k ON k.id=kz.konkurs_id',
'  INNER JOIN skocznia s ON s.id=k.skocznia_id;'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(1066249505199455687)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'Nie znaleziono zawodników w żadnym z konkursów.'
,p_query_num_rows_type=>'ROW_RANGES'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_LEFT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1316021464645402344)
,p_query_column_id=>1
,p_column_alias=>'ZAWODNIK'
,p_column_display_sequence=>1
,p_column_heading=>'Zawodnik'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1316021598707402345)
,p_query_column_id=>2
,p_column_alias=>'KONKURS'
,p_column_display_sequence=>2
,p_column_heading=>'Konkurs'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
end;
/
prompt --application/pages/page_00040
begin
wwv_flow_api.create_page(
 p_id=>40
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Edytuj Konk_zaw'
,p_page_mode=>'NORMAL'
,p_step_title=>'Edytuj Konk_zaw'
,p_step_sub_title=>'Edytuj Konk_zaw'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20170102130403'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1392999355127922557)
,p_plug_name=>'Edytuj Konk_zaw'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1066237758001455677)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ZAWODNIK_ID,',
'       KONKURS_ID',
'  from KONK_ZAW'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1393000508004922560)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1393001029037922561)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1393001602107922561)
,p_name=>'ZAWODNIK_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ZAWODNIK_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Zawodnik'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select (imie || '' '' || nazwisko ) AS zawodnik,',
'        id',
'       from Zawodnik;'))
,p_lov_display_extra=>true
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1393002208311922562)
,p_name=>'KONKURS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'KONKURS_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Konkurs'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select (s.miejscowosc || '' HS-'' || s.punkt_hs || ''  ( '' || k.data || '' )'') AS skocznia,',
'k.id',
'FROM konkurs k INNER JOIN skocznia s ON s.id=k.skocznia_id;'))
,p_lov_display_extra=>true
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(1392999804604922558)
,p_internal_uid=>1392999804604922558
,p_is_editable=>true
,p_edit_operations=>'i:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'RESET:SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(1393000282281922559)
,p_interactive_grid_id=>wwv_flow_api.id(1392999804604922558)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(1393000391065922560)
,p_report_id=>wwv_flow_api.id(1393000282281922559)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1393001425675922561)
,p_view_id=>wwv_flow_api.id(1393000391065922560)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(1393001029037922561)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1393002001631922562)
,p_view_id=>wwv_flow_api.id(1393000391065922560)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(1393001602107922561)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1393002653331922562)
,p_view_id=>wwv_flow_api.id(1393000391065922560)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(1393002208311922562)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1393002855303922562)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(1392999355127922557)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>' - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00050
begin
wwv_flow_api.create_page(
 p_id=>50
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Puchar Świata'
,p_page_mode=>'NORMAL'
,p_step_title=>'Puchar Świata'
,p_step_sub_title=>'Puchar Świata'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20170102182327'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(1197051295136389095)
,p_name=>'Sezony Pucharu Świata'
,p_template=>wwv_flow_api.id(1066237758001455677)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>'SELECT nazwa,liczba_konk FROM sezon WHERE rodzaj = ''zimowy'' ORDER BY nazwa DESC'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(1066249505199455687)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'Brak zarejestrowanych sezonów w wybranym cyklu.'
,p_query_num_rows_type=>'ROW_RANGES'
,p_pagination_display_position=>'BOTTOM_LEFT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1227024733401831230)
,p_query_column_id=>1
,p_column_alias=>'NAZWA'
,p_column_display_sequence=>1
,p_column_heading=>'Nazwa'
,p_column_link=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.:RP:WYBRANY_SEZON:#NAZWA#'
,p_column_linktext=>'#NAZWA#'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1227024842640831231)
,p_query_column_id=>2
,p_column_alias=>'LICZBA_KONK'
,p_column_display_sequence=>2
,p_column_heading=>'Liczba konkursów'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1197053405205389141)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1066242772489455680)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(1066282754210455731)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1066266665357455705)
,p_plug_query_row_template=>1
);
end;
/
prompt --application/pages/page_00051
begin
wwv_flow_api.create_page(
 p_id=>51
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Konkursy'
,p_page_mode=>'NORMAL'
,p_step_title=>'Konkursy'
,p_step_sub_title=>'Konkursy'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20170107143257'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(1198253663301843593)
,p_name=>'Lista konkursów PŚ w sezonie'
,p_template=>wwv_flow_api.id(1066237758001455677)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT k.id, k.rodzaj, k.data, k.il_widzow, k.sezon_nazwa, ',
's.miejscowosc, ( ''HS-'' || s.punkt_hs ||''(K-'' || s.punkt_k || '')'' ) AS Rozmiar, s.kraj,',
'',
'(SELECT (imie || '' ''|| nazwisko ) FROM zawodnik WHERE id=',
'        (SELECT id_zaw ',
'         FROM wyniki_konkursow_id ',
'         WHERE ID_KONK=k.id ',
'         AND wynik=  ',
'             (SELECT MAX(wynik) ',
'              FROM wyniki_konkursow_id ',
'              WHERE id_konk=k.id',
'             )',
'        )',
') AS Zwyciezca',
'',
'FROM Konkurs k INNER JOIN skocznia s ON s.id=k.skocznia_id',
'WHERE k.sezon_nazwa = :WYBRANY_SEZON',
'ORDER BY k.data ASC;'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(1066249505199455687)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'Brak zarejestrowanych konkursów w tym sezonie.'
,p_query_num_rows_type=>'ROW_RANGES'
,p_pagination_display_position=>'BOTTOM_LEFT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1227023446304831217)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1227023538636831218)
,p_query_column_id=>2
,p_column_alias=>'RODZAJ'
,p_column_display_sequence=>2
,p_column_heading=>'Rodzaj'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1227023605439831219)
,p_query_column_id=>3
,p_column_alias=>'DATA'
,p_column_display_sequence=>4
,p_column_heading=>'Data'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1227023715760831220)
,p_query_column_id=>4
,p_column_alias=>'IL_WIDZOW'
,p_column_display_sequence=>3
,p_column_heading=>'Liczba widzów'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1227023876711831221)
,p_query_column_id=>5
,p_column_alias=>'SEZON_NAZWA'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1227023911816831222)
,p_query_column_id=>6
,p_column_alias=>'MIEJSCOWOSC'
,p_column_display_sequence=>7
,p_column_heading=>'Miejscowość'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1227024097218831223)
,p_query_column_id=>7
,p_column_alias=>'ROZMIAR'
,p_column_display_sequence=>8
,p_column_heading=>'Rozmiar skoczni'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1242261019618513422)
,p_query_column_id=>8
,p_column_alias=>'KRAJ'
,p_column_display_sequence=>6
,p_column_heading=>'Kraj'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<img src="#APP_IMAGES##KRAJ#.gif">'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1242261135693513423)
,p_query_column_id=>9
,p_column_alias=>'ZWYCIEZCA'
,p_column_display_sequence=>10
,p_column_heading=>'Zwyciezca'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1227024128549831224)
,p_query_column_id=>10
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>9
,p_column_link=>'f?p=&APP_ID.:52:&SESSION.::&DEBUG.:RP:WYBRANY_KONKURS:#ID#'
,p_column_linktext=>'Wyniki'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1242261254440513424)
,p_query_column_id=>11
,p_column_alias=>'DERIVED$02'
,p_column_display_sequence=>11
,p_column_heading=>'Pogoda'
,p_column_link=>'f?p=&APP_ID.:53:&SESSION.::&DEBUG.:RP:KONKURS_POGODA:#ID#'
,p_column_linktext=>'Szczegóły'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1198259358731843604)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1066242772489455680)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(1066282754210455731)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1066266665357455705)
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_caching=>'USER'
,p_plug_caching_max_age_in_sec=>21600
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(1237451347233560128)
,p_name=>'Klasyfikacje'
,p_template=>wwv_flow_api.id(1066237758001455677)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>'SELECT nazwa FROM sezon WHERE nazwa = :WYBRANY_SEZON;'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(1066249505199455687)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'Brak zarejestrowanych klasyfikacji dla tego sezonu.'
,p_query_num_rows_type=>'ROW_RANGES'
,p_pagination_display_position=>'BOTTOM_LEFT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1237453025113560145)
,p_query_column_id=>1
,p_column_alias=>'NAZWA'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1237453129161560146)
,p_query_column_id=>2
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>Indywidualna</b>'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1237453307451560148)
,p_query_column_id=>3
,p_column_alias=>'DERIVED$02'
,p_column_display_sequence=>3
,p_column_heading=>'Przejdź'
,p_column_link=>'f?p=&APP_ID.:55:&SESSION.::&DEBUG.:RP:SEZON_KLASYFIKACJI_IND:&WYBRANY_SEZON.'
,p_column_linktext=>'ZOBACZ'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1237453420762560149)
,p_query_column_id=>4
,p_column_alias=>'DERIVED$03'
,p_column_display_sequence=>4
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>Drużynowa</b>'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1237453563537560150)
,p_query_column_id=>5
,p_column_alias=>'DERIVED$04'
,p_column_display_sequence=>5
,p_column_heading=>'Przejdź'
,p_column_link=>'f?p=&APP_ID.:56:&SESSION.::&DEBUG.:RP:SEZON_KLASYFIKACJI_DRUZ:&WYBRANY_SEZON.'
,p_column_linktext=>'ZOBACZ'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1189455712053834814)
,p_name=>'WYBRANY_SEZON'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1198253663301843593)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/page_00052
begin
wwv_flow_api.create_page(
 p_id=>52
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Wyniki'
,p_page_mode=>'NORMAL'
,p_step_title=>'Wyniki'
,p_step_sub_title=>'Wyniki'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20161231005252'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1201600628923573320)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1066242772489455680)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(1066282754210455731)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1066266665357455705)
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(1201601207352573321)
,p_name=>'Wyniki'
,p_template=>wwv_flow_api.id(1066237758001455677)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWNUM AS Pozycja, reszta.* FROM (SELECT kz.nazwa, (z.imie || '' '' || z.nazwisko) AS Zawodnik, ',
'        (SELECT skok FROM wynik_ind WHERE konkurs_id=:WYBRANY_KONKURS AND zawodnik_id=wki.id_zaw AND nr_serii=1 ) AS Skok1,',
'        (SELECT SUM(n.nota)-MAX(n.nota)-MIN(n.nota) FROM wynik_ind wi INNER JOIN noty n ON wi.id=n.wynik_ind_id WHERE wi.konkurs_id=:WYBRANY_KONKURS AND wi.zawodnik_id=wki.id_zaw AND nr_serii=1 ) AS Nota1,',
'        (SELECT skok FROM wynik_ind WHERE konkurs_id=:WYBRANY_KONKURS AND zawodnik_id=wki.id_zaw AND nr_serii=2 ) AS Skok2, ',
'        (SELECT SUM(n.nota)-MAX(n.nota)-MIN(n.nota) FROM wynik_ind wi INNER JOIN noty n ON wi.id=n.wynik_ind_id WHERE wi.konkurs_id=:WYBRANY_KONKURS AND wi.zawodnik_id=wki.id_zaw AND nr_serii=1 ) AS Nota2,',
'        wki.wynik',
'FROM wyniki_konkursow_id wki ',
'INNER JOIN zawodnik z ON z.id = wki.id_zaw',
'INNER JOIN kraj_zaw kz ON kz.id=z.kraj_zaw_id',
'WHERE wki.id_konk = :WYBRANY_KONKURS',
'ORDER BY wki.wynik DESC) reszta;'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(1066249505199455687)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'Brak wyników'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1227025091150831233)
,p_query_column_id=>1
,p_column_alias=>'POZYCJA'
,p_column_display_sequence=>1
,p_column_heading=>'Pozycja'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#POZYCJA#</b>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1227024255141831225)
,p_query_column_id=>2
,p_column_alias=>'NAZWA'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<img src="#APP_IMAGES##NAZWA#.gif">'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1189456543062834822)
,p_query_column_id=>3
,p_column_alias=>'ZAWODNIK'
,p_column_display_sequence=>3
,p_column_heading=>'Zawodnik'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#ZAWODNIK#</b>'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_report_column_width=>200
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1189456649545834823)
,p_query_column_id=>4
,p_column_alias=>'SKOK1'
,p_column_display_sequence=>4
,p_column_heading=>'Skok1'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_report_column_width=>76
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1227025102239831234)
,p_query_column_id=>5
,p_column_alias=>'NOTA1'
,p_column_display_sequence=>5
,p_column_heading=>'Nota1'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1189456773998834824)
,p_query_column_id=>6
,p_column_alias=>'SKOK2'
,p_column_display_sequence=>6
,p_column_heading=>'Skok2'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_report_column_width=>75
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1227025259118831235)
,p_query_column_id=>7
,p_column_alias=>'NOTA2'
,p_column_display_sequence=>7
,p_column_heading=>'Nota2'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1189456897113834825)
,p_query_column_id=>8
,p_column_alias=>'WYNIK'
,p_column_display_sequence=>8
,p_column_heading=>'Wynik'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#WYNIK#</b>'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_report_column_width=>75
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1189455902603834816)
,p_name=>'WYBRANY_KONKURS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1201601207352573321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/page_00053
begin
wwv_flow_api.create_page(
 p_id=>53
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Pogoda'
,p_page_mode=>'MODAL'
,p_step_title=>'Pogoda'
,p_step_sub_title=>'Pogoda'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20161231013543'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(1244984131567109989)
,p_name=>'Pogoda'
,p_template=>wwv_flow_api.id(1066237758001455677)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'BODY'
,p_source=>'SELECT * FROM Pogoda WHERE konkurs_id = :KONKURS_POGODA'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(1066251419032455688)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'Nie znaleziono informacji o pogodzie.'
,p_query_num_rows_type=>'ROW_RANGES'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_LEFT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1244984821544110002)
,p_query_column_id=>1
,p_column_alias=>'OGOLNIE'
,p_column_display_sequence=>1
,p_column_heading=>'Ogólnie'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#OGOLNIE#</b>'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1244985275611110002)
,p_query_column_id=>2
,p_column_alias=>'OPADY'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1244985637021110003)
,p_query_column_id=>3
,p_column_alias=>'RODZAJ_OP'
,p_column_display_sequence=>3
,p_column_heading=>'Rodzaj Opadów'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#RODZAJ_OP#</b>'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1244986091196110003)
,p_query_column_id=>4
,p_column_alias=>'ILOSC_OP'
,p_column_display_sequence=>4
,p_column_heading=>'Ilość Opadów'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#ILOSC_OP#</b>'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1244986440668110003)
,p_query_column_id=>5
,p_column_alias=>'SILA_W'
,p_column_display_sequence=>5
,p_column_heading=>'Siła Wiatru'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#SILA_W#</b>'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1244986878097110004)
,p_query_column_id=>6
,p_column_alias=>'KONKURS_ID'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1242261394117513425)
,p_name=>'KONKURS_POGODA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1244984131567109989)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/page_00055
begin
wwv_flow_api.create_page(
 p_id=>55
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Klasyfikacja Indywidualna'
,p_page_mode=>'NORMAL'
,p_step_title=>'Klasyfikacja Indywidualna'
,p_step_sub_title=>'Klasyfikacja Ind.'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20170101222311'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(1242236472590887034)
,p_name=>'Klasyfikacja Indywidualna'
,p_template=>wwv_flow_api.id(1066237758001455677)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWNUM AS Pozycja, reszta.* FROM (SELECT kz.nazwa, (z.imie || '' '' || z.nazwisko ) AS Skoczek, ki.* ',
'FROM Klasyf_ind ki ',
'INNER JOIN zawodnik z ON z.id=ki.zawodnik_id ',
'INNER JOIN kraj_zaw kz ON kz.id=z.kraj_zaw_id',
'WHERE ki.sezon_nazwa = :SEZON_KLASYFIKACJI_IND',
'ORDER BY ki.punkty DESC) reszta;'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(1066249505199455687)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES'
,p_pagination_display_position=>'BOTTOM_LEFT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1242260473515513416)
,p_query_column_id=>1
,p_column_alias=>'POZYCJA'
,p_column_display_sequence=>2
,p_column_heading=>'Pozycja'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#POZYCJA#</b>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1242260213709513414)
,p_query_column_id=>2
,p_column_alias=>'NAZWA'
,p_column_display_sequence=>4
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<img src="#APP_IMAGES##NAZWA#.gif">'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1242260125659513413)
,p_query_column_id=>3
,p_column_alias=>'SKOCZEK'
,p_column_display_sequence=>3
,p_column_heading=>'Zawodnik'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1242079631849513408)
,p_query_column_id=>4
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1242079738261513409)
,p_query_column_id=>5
,p_column_alias=>'PUNKTY'
,p_column_display_sequence=>5
,p_column_heading=>'Punkty'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#PUNKTY#</b>'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1242079833092513410)
,p_query_column_id=>6
,p_column_alias=>'ILOSC_KONK'
,p_column_display_sequence=>6
,p_column_heading=>'Ilość konkursów'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1242079975062513411)
,p_query_column_id=>7
,p_column_alias=>'ZAWODNIK_ID'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1242080036139513412)
,p_query_column_id=>8
,p_column_alias=>'SEZON_NAZWA'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1242260585938513417)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1066242772489455680)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(1066282754210455731)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1066266665357455705)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1242078915418513301)
,p_name=>'SEZON_KLASYFIKACJI_IND'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1242236472590887034)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/page_00056
begin
wwv_flow_api.create_page(
 p_id=>56
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Klasyfikacja Drużynowa'
,p_page_mode=>'NORMAL'
,p_step_title=>'Klasyfikacja Drużynowa'
,p_step_sub_title=>'Klasyfikacja Drużynowa'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20170101222447'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(1243370062868772843)
,p_name=>'Klasyfikacja drużynowa'
,p_template=>wwv_flow_api.id(1066237758001455677)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWNUM AS Pozycja, reszta.* FROM (SELECT kz.nazwa, kd.* ',
'FROM Klasyf_druz kd',
'INNER JOIN kraj_zaw kz ON kz.id=kd.kraj_zaw_id',
'WHERE kd.sezon_nazwa = :SEZON_KLASYFIKACJI_DRUZ',
'ORDER BY kd.punkty DESC) reszta'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(1066249505199455687)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_LEFT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1243370750777772848)
,p_query_column_id=>1
,p_column_alias=>'POZYCJA'
,p_column_display_sequence=>1
,p_column_heading=>'Pozycja'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1243371181414772849)
,p_query_column_id=>2
,p_column_alias=>'NAZWA'
,p_column_display_sequence=>3
,p_column_heading=>'Kraj'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1243371908774772850)
,p_query_column_id=>3
,p_column_alias=>'ID'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1243372321037772850)
,p_query_column_id=>4
,p_column_alias=>'PUNKTY'
,p_column_display_sequence=>4
,p_column_heading=>'Punkty'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1243372709377772851)
,p_query_column_id=>5
,p_column_alias=>'KRAJ_ZAW_ID'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1243373132036772851)
,p_query_column_id=>6
,p_column_alias=>'SEZON_NAZWA'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1242260658565513418)
,p_query_column_id=>7
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<img src="#APP_IMAGES##NAZWA#.gif">'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1243380274051772870)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1066242772489455680)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(1066282754210455731)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1066266665357455705)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1242260766380513419)
,p_name=>'SEZON_KLASYFIKACJI_DRUZ'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1243370062868772843)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/page_00060
begin
wwv_flow_api.create_page(
 p_id=>60
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Letnie Grand Prix'
,p_page_mode=>'NORMAL'
,p_step_title=>'Letnie Grand Prix'
,p_step_sub_title=>'Letnie Grand Prix'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20170102182344'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(1216982225653811615)
,p_name=>'Sezony letniego Grand Prix'
,p_template=>wwv_flow_api.id(1066237758001455677)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>'SELECT nazwa, liczba_konk FROM sezon WHERE rodzaj=''letni'' ORDER BY nazwa DESC'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(1066249505199455687)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'Brak zarejestrowanych sezonów w wybranym cyklu.'
,p_query_num_rows_type=>'ROW_RANGES'
,p_pagination_display_position=>'BOTTOM_LEFT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1227025612053831239)
,p_query_column_id=>1
,p_column_alias=>'NAZWA'
,p_column_display_sequence=>1
,p_column_heading=>'Nazwa'
,p_column_link=>'f?p=&APP_ID.:61:&SESSION.::&DEBUG.:RP:WYBRANY_SEZON_LGP:#NAZWA#'
,p_column_linktext=>'#NAZWA#'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1227025796570831240)
,p_query_column_id=>2
,p_column_alias=>'LICZBA_KONK'
,p_column_display_sequence=>2
,p_column_heading=>'Liczba konkursów'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1216984635897811625)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1066242772489455680)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(1066282754210455731)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1066266665357455705)
,p_plug_query_row_template=>1
);
end;
/
prompt --application/pages/page_00061
begin
wwv_flow_api.create_page(
 p_id=>61
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Konkursy'
,p_page_mode=>'NORMAL'
,p_step_title=>'Konkursy'
,p_step_sub_title=>'Konkursy'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20170101223536'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(1218627938050539364)
,p_name=>'Lista konkursów LGP w sezonie'
,p_template=>wwv_flow_api.id(1066237758001455677)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'SELECT k.id, k.rodzaj, k.data, k.il_widzow, k.sezon_nazwa, ',
's.miejscowosc, ( ''HS-'' || s.punkt_hs ||''(K-'' || s.punkt_k || '')'' ) AS Rozmiar, s.kraj,',
'',
'(SELECT (imie || '' ''|| nazwisko ) FROM zawodnik WHERE id=',
'        (SELECT id_zaw ',
'         FROM wyniki_konkursow_id ',
'         WHERE ID_KONK=k.id ',
'         AND wynik=  ',
'             (SELECT MAX(wynik) ',
'              FROM wyniki_konkursow_id ',
'              WHERE id_konk=k.id',
'             )',
'        )',
') AS Zwyciezca',
'',
'FROM Konkurs k INNER JOIN skocznia s ON s.id=k.skocznia_id',
'WHERE k.sezon_nazwa = :WYBRANY_SEZON_LGP',
'ORDER BY k.data ASC;'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(1066249505199455687)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES'
,p_pagination_display_position=>'BOTTOM_LEFT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1227026667927831249)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1227026779307831250)
,p_query_column_id=>2
,p_column_alias=>'RODZAJ'
,p_column_display_sequence=>2
,p_column_heading=>'Rodzaj'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1237448669308560101)
,p_query_column_id=>3
,p_column_alias=>'DATA'
,p_column_display_sequence=>4
,p_column_heading=>'Data'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1237448748823560102)
,p_query_column_id=>4
,p_column_alias=>'IL_WIDZOW'
,p_column_display_sequence=>3
,p_column_heading=>'Liczba widzów'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1237448826055560103)
,p_query_column_id=>5
,p_column_alias=>'SEZON_NAZWA'
,p_column_display_sequence=>5
,p_column_heading=>'Sezon'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1237448961058560104)
,p_query_column_id=>6
,p_column_alias=>'MIEJSCOWOSC'
,p_column_display_sequence=>7
,p_column_heading=>'Miejscowosc'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1237449060994560105)
,p_query_column_id=>7
,p_column_alias=>'ROZMIAR'
,p_column_display_sequence=>8
,p_column_heading=>'Rozmiar'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1242261542658513427)
,p_query_column_id=>8
,p_column_alias=>'KRAJ'
,p_column_display_sequence=>6
,p_column_heading=>'Kraj'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<img src="#APP_IMAGES##KRAJ#.gif">'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1242261630770513428)
,p_query_column_id=>9
,p_column_alias=>'ZWYCIEZCA'
,p_column_display_sequence=>10
,p_column_heading=>'Zwyciezca'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1237449139355560106)
,p_query_column_id=>10
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>9
,p_column_link=>'f?p=&APP_ID.:62:&SESSION.::&DEBUG.:RP:WYBRANY_KONKURS_LGP:#ID#'
,p_column_linktext=>'Wyniki'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1242261410757513426)
,p_query_column_id=>11
,p_column_alias=>'DERIVED$02'
,p_column_display_sequence=>11
,p_column_heading=>'Pogoda'
,p_column_link=>'f?p=&APP_ID.:53:&SESSION.::&DEBUG.:RP:KONKURS_POGODA:#ID#'
,p_column_linktext=>'Szczegóły'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1218646807713539386)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1066242772489455680)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(1066282754210455731)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1066266665357455705)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(1316018865611402318)
,p_name=>'Klasyfikacje'
,p_template=>wwv_flow_api.id(1066237758001455677)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>'SELECT nazwa FROM sezon WHERE nazwa = :WYBRANY_SEZON_LGP;'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(1066249505199455687)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES'
,p_pagination_display_position=>'BOTTOM_LEFT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1316018901850402319)
,p_query_column_id=>1
,p_column_alias=>'NAZWA'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1316019079134402320)
,p_query_column_id=>2
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>Indywidualna</b>'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1316019189725402321)
,p_query_column_id=>3
,p_column_alias=>'DERIVED$02'
,p_column_display_sequence=>3
,p_column_heading=>'Przejdź'
,p_column_link=>'f?p=&APP_ID.:65:&SESSION.::&DEBUG.:RP:SEZON_KLASYFIKACJI_IND_LGP:#NAZWA#'
,p_column_linktext=>'ZOBACZ'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1316019201977402322)
,p_query_column_id=>4
,p_column_alias=>'DERIVED$03'
,p_column_display_sequence=>4
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>Drużynowa</b>'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1316019351927402323)
,p_query_column_id=>5
,p_column_alias=>'DERIVED$04'
,p_column_display_sequence=>5
,p_column_heading=>'Przejdź'
,p_column_link=>'f?p=&APP_ID.:66:&SESSION.::&DEBUG.:RP:SEZON_KLASYFIKACJI_DRUZ_LGP:#NAZWA#'
,p_column_linktext=>'ZOBACZ'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1189457261085834829)
,p_name=>'WYBRANY_SEZON_LGP'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1218627938050539364)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/page_00062
begin
wwv_flow_api.create_page(
 p_id=>62
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Wyniki'
,p_page_mode=>'NORMAL'
,p_step_title=>'Wyniki'
,p_step_sub_title=>'Wyniki'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20161230231353'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(1219686227178011680)
,p_name=>'Wyniki'
,p_template=>wwv_flow_api.id(1066237758001455677)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWNUM AS Pozycja, reszta.* FROM (SELECT kz.nazwa, (z.imie || '' '' || z.nazwisko) AS Zawodnik, ',
'        (SELECT skok FROM wynik_ind WHERE konkurs_id=:WYBRANY_KONKURS_LGP AND zawodnik_id=wki.id_zaw AND nr_serii=1 ) AS Skok1,',
'        (SELECT SUM(n.nota)-MAX(n.nota)-MIN(n.nota) FROM wynik_ind wi INNER JOIN noty n ON wi.id=n.wynik_ind_id WHERE wi.konkurs_id=:WYBRANY_KONKURS_LGP AND wi.zawodnik_id=wki.id_zaw AND nr_serii=1 ) AS Nota1,',
'        (SELECT skok FROM wynik_ind WHERE konkurs_id=:WYBRANY_KONKURS_LGP AND zawodnik_id=wki.id_zaw AND nr_serii=2 ) AS Skok2, ',
'        (SELECT SUM(n.nota)-MAX(n.nota)-MIN(n.nota) FROM wynik_ind wi INNER JOIN noty n ON wi.id=n.wynik_ind_id WHERE wi.konkurs_id=:WYBRANY_KONKURS_LGP AND wi.zawodnik_id=wki.id_zaw AND nr_serii=1 ) AS Nota2,',
'        wki.wynik',
'FROM wyniki_konkursow_id wki ',
'INNER JOIN zawodnik z ON z.id = wki.id_zaw',
'INNER JOIN kraj_zaw kz ON kz.id=z.kraj_zaw_id',
'WHERE wki.id_konk = :WYBRANY_KONKURS_LGP',
'ORDER BY wki.wynik DESC) reszta;'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(1066249505199455687)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1237450543316560120)
,p_query_column_id=>1
,p_column_alias=>'POZYCJA'
,p_column_display_sequence=>1
,p_column_heading=>'Pozycja'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1237450655179560121)
,p_query_column_id=>2
,p_column_alias=>'NAZWA'
,p_column_display_sequence=>2
,p_column_heading=>'Nazwa'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<img src="#APP_IMAGES##NAZWA#.gif">'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1237450708708560122)
,p_query_column_id=>3
,p_column_alias=>'ZAWODNIK'
,p_column_display_sequence=>3
,p_column_heading=>'Zawodnik'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1237450852704560123)
,p_query_column_id=>4
,p_column_alias=>'SKOK1'
,p_column_display_sequence=>4
,p_column_heading=>'Skok1'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1237450978135560124)
,p_query_column_id=>5
,p_column_alias=>'NOTA1'
,p_column_display_sequence=>5
,p_column_heading=>'Nota1'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1237451035293560125)
,p_query_column_id=>6
,p_column_alias=>'SKOK2'
,p_column_display_sequence=>6
,p_column_heading=>'Skok2'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1237451144207560126)
,p_query_column_id=>7
,p_column_alias=>'NOTA2'
,p_column_display_sequence=>7
,p_column_heading=>'Nota2'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1237451225810560127)
,p_query_column_id=>8
,p_column_alias=>'WYNIK'
,p_column_display_sequence=>8
,p_column_heading=>'Wynik'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#WYNIK#</b>'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1219689800295011690)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1066242772489455680)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(1066282754210455731)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1066266665357455705)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1189457587726834832)
,p_name=>'WYBRANY_KONKURS_LGP'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1219686227178011680)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/page_00065
begin
wwv_flow_api.create_page(
 p_id=>65
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Klasyfikacja Indywidualna'
,p_page_mode=>'NORMAL'
,p_step_title=>'Klasyfikacja Indywidualna'
,p_step_sub_title=>'Klasyfikacja Indywidualna'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20170101222555'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(1326259586355154188)
,p_name=>'Klasyfikacja Indywidualna LGP'
,p_template=>wwv_flow_api.id(1066237758001455677)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWNUM AS Pozycja, reszta.* FROM (SELECT kz.nazwa, (z.imie || '' '' || z.nazwisko ) AS Skoczek, ki.* ',
'FROM Klasyf_ind ki ',
'INNER JOIN zawodnik z ON z.id=ki.zawodnik_id ',
'INNER JOIN kraj_zaw kz ON kz.id=z.kraj_zaw_id',
'WHERE ki.sezon_nazwa = :SEZON_KLASYFIKACJI_IND_LGP',
'ORDER BY ki.punkty DESC) reszta;'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(1066249505199455687)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'Brak klasyfikacji w bazie dla tego sezonu.'
,p_query_num_rows_type=>'ROW_RANGES'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_LEFT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1326260271613154194)
,p_query_column_id=>1
,p_column_alias=>'POZYCJA'
,p_column_display_sequence=>1
,p_column_heading=>'Pozycja'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1326260610193154194)
,p_query_column_id=>2
,p_column_alias=>'NAZWA'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<img src="#APP_IMAGES##NAZWA#.gif">'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1316019652641402326)
,p_query_column_id=>3
,p_column_alias=>'SKOCZEK'
,p_column_display_sequence=>3
,p_column_heading=>'Zawodnik'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1316019725905402327)
,p_query_column_id=>4
,p_column_alias=>'ID'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1316019801018402328)
,p_query_column_id=>5
,p_column_alias=>'PUNKTY'
,p_column_display_sequence=>5
,p_column_heading=>'Punkty'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#PUNKTY#</b>'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1316019903144402329)
,p_query_column_id=>6
,p_column_alias=>'ILOSC_KONK'
,p_column_display_sequence=>6
,p_column_heading=>'Ilość konkursów'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1316020074744402330)
,p_query_column_id=>7
,p_column_alias=>'ZAWODNIK_ID'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1316020188257402331)
,p_query_column_id=>8
,p_column_alias=>'SEZON_NAZWA'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1326271084655154209)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1066242772489455680)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(1066282754210455731)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1066266665357455705)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1316019505469402325)
,p_name=>'SEZON_KLASYFIKACJI_IND_LGP'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1326259586355154188)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/page_00066
begin
wwv_flow_api.create_page(
 p_id=>66
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Klasyfikacja Drużynowa'
,p_page_mode=>'NORMAL'
,p_step_title=>'Klasyfikacja Drużynowa'
,p_step_sub_title=>'Klasyfikacja Drużynowa'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20170101222238'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(1327007336496656496)
,p_name=>'Klasyfikacja drużynowa'
,p_template=>wwv_flow_api.id(1066237758001455677)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWNUM AS Pozycja, reszta.* FROM (SELECT kz.nazwa, kd.* ',
'FROM Klasyf_druz kd',
'INNER JOIN kraj_zaw kz ON kz.id=kd.kraj_zaw_id',
'WHERE kd.sezon_nazwa = :SEZON_KLASYFIKACJI_DRUZ_LGP',
'ORDER BY kd.punkty DESC) reszta'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(1066249505199455687)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'Nie znaleziono klasyfikacji tego sezonu.'
,p_query_num_rows_type=>'ROW_RANGES'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_LEFT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1327008027091656498)
,p_query_column_id=>1
,p_column_alias=>'POZYCJA'
,p_column_display_sequence=>1
,p_column_heading=>'Pozycja'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1327008487750656499)
,p_query_column_id=>2
,p_column_alias=>'NAZWA'
,p_column_display_sequence=>3
,p_column_heading=>'Kraj'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1327008895672656499)
,p_query_column_id=>3
,p_column_alias=>'ID'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1327009221812656499)
,p_query_column_id=>4
,p_column_alias=>'PUNKTY'
,p_column_display_sequence=>5
,p_column_heading=>'Punkty'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#PUNKTY#</b>'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1327009655833656500)
,p_query_column_id=>5
,p_column_alias=>'KRAJ_ZAW_ID'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1327010007760656500)
,p_query_column_id=>6
,p_column_alias=>'SEZON_NAZWA'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1316020399443402333)
,p_query_column_id=>7
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<img src="#APP_IMAGES##NAZWA#.gif">'
,p_column_alignment=>'CENTER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1327016286030656509)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1066242772489455680)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(1066282754210455731)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1066266665357455705)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1316020295390402332)
,p_name=>'SEZON_KLASYFIKACJI_DRUZ_LGP'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1327007336496656496)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/page_00070
begin
wwv_flow_api.create_page(
 p_id=>70
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Kraj Skoczni'
,p_page_mode=>'NORMAL'
,p_step_title=>'Kraj Skoczni'
,p_step_sub_title=>'Skocznie'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20161231112916'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(1221988716904429323)
,p_name=>'Wybierz położenie skoczni'
,p_template=>wwv_flow_api.id(1066237758001455677)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>'SELECT kraj FROM skocznia ORDER BY kraj'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(1066249505199455687)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES'
,p_pagination_display_position=>'BOTTOM_LEFT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1227022302835831206)
,p_query_column_id=>1
,p_column_alias=>'KRAJ'
,p_column_display_sequence=>1
,p_column_heading=>'Kraj'
,p_column_link=>'f?p=&APP_ID.:71:&SESSION.::&DEBUG.:RP:WYBRANY_KRAJ_SKOCZNI:#KRAJ#'
,p_column_linktext=>'#KRAJ#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1227024343375831226)
,p_query_column_id=>2
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>2
,p_column_heading=>'&nbsp;'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<img src="#APP_IMAGES##KRAJ#.gif">'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1222000221224429340)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1066242772489455680)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(1066282754210455731)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1066266665357455705)
,p_plug_query_row_template=>1
);
end;
/
prompt --application/pages/page_00071
begin
wwv_flow_api.create_page(
 p_id=>71
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Skocznie'
,p_page_mode=>'NORMAL'
,p_step_title=>'Skocznie'
,p_step_sub_title=>'Skocznie'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20161231114532'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(1222294862293493533)
,p_name=>'Lista skoczni w tym kraju'
,p_template=>wwv_flow_api.id(1066237758001455677)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'(SELECT MAX(odleglosc) FROM rekord WHERE skocznia_id = s.id AND typ=''zimowy'' ) AS rekord_zimowy,',
'(SELECT rekordzista FROM rekord WHERE skocznia_id = s.id AND typ=''zimowy'' AND ROWNUM = 1 AND odleglosc=(SELECT MAX(odleglosc) FROM rekord WHERE skocznia_id = s.id AND typ=''zimowy'')) AS rekordzista_zimowy,',
'',
'(SELECT kz.nazwa FROM zawodnik z INNER JOIN kraj_zaw kz ON kz.id=z.KRAJ_ZAW_ID',
'WHERE (z.imie || '' '' || z.nazwisko ) = (SELECT rekordzista FROM rekord WHERE skocznia_id = s.id AND typ=''zimowy'' AND ROWNUM = 1 AND odleglosc=(SELECT MAX(odleglosc) FROM rekord WHERE skocznia_id = s.id AND typ=''zimowy''))) AS kraj_rekordu_zimowego,',
'',
'(SELECT MAX(odleglosc) FROM rekord WHERE skocznia_id = s.id AND typ=''letni'' ) AS rekord_letni,',
'(SELECT rekordzista FROM rekord WHERE skocznia_id = s.id AND typ=''letni'' AND ROWNUM = 1 AND odleglosc=(SELECT MAX(odleglosc) FROM rekord WHERE skocznia_id = s.id AND typ=''letni'')) AS rekordzista_letni,',
'',
'(SELECT kz.nazwa FROM zawodnik z INNER JOIN kraj_zaw kz ON kz.id=z.KRAJ_ZAW_ID',
'WHERE (z.imie || '' '' || z.nazwisko ) = (SELECT rekordzista FROM rekord WHERE skocznia_id = s.id AND typ=''letni'' AND ROWNUM = 1 AND odleglosc=(SELECT MAX(odleglosc) FROM rekord WHERE skocznia_id = s.id AND typ=''letni''))) AS kraj_rekordu_letniego,',
'',
'id,(miejscowosc || '' HS-'' || punkt_hs ) AS Skocznia',
'FROM skocznia s WHERE kraj=:WYBRANY_KRAJ_SKOCZNI'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(1066249505199455687)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'Brak'
,p_query_no_data_found=>'Brak skoczni w bazie w wybranym kraju.'
,p_query_num_rows_type=>'ROW_RANGES'
,p_pagination_display_position=>'BOTTOM_LEFT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1242262219596513434)
,p_query_column_id=>1
,p_column_alias=>'REKORD_ZIMOWY'
,p_column_display_sequence=>4
,p_column_heading=>'Rekord zimowy'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'#REKORD_ZIMOWY# m'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1242262419135513436)
,p_query_column_id=>2
,p_column_alias=>'REKORDZISTA_ZIMOWY'
,p_column_display_sequence=>6
,p_column_heading=>'Zawodnik'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1242262644963513438)
,p_query_column_id=>3
,p_column_alias=>'KRAJ_REKORDU_ZIMOWEGO'
,p_column_display_sequence=>5
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<img src="#APP_IMAGES##KRAJ_REKORDU_ZIMOWEGO#.gif">'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1242262362660513435)
,p_query_column_id=>4
,p_column_alias=>'REKORD_LETNI'
,p_column_display_sequence=>7
,p_column_heading=>'Rekord letni'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1242262591267513437)
,p_query_column_id=>5
,p_column_alias=>'REKORDZISTA_LETNI'
,p_column_display_sequence=>9
,p_column_heading=>'Rekordzista letni'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1242262792330513439)
,p_query_column_id=>6
,p_column_alias=>'KRAJ_REKORDU_LETNIEGO'
,p_column_display_sequence=>8
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<img src="#APP_IMAGES##KRAJ_REKORDU_LETNIEGO#.gif">'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1189459166197834848)
,p_query_column_id=>7
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1189459297018834849)
,p_query_column_id=>8
,p_column_alias=>'SKOCZNIA'
,p_column_display_sequence=>2
,p_column_heading=>'Skocznia'
,p_column_link=>'f?p=&APP_ID.:72:&SESSION.::&DEBUG.:RP:WYBRANA_SKOCZNIA:#ID#'
,p_column_linktext=>'#SKOCZNIA#'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1242261826412513430)
,p_query_column_id=>9
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>3
,p_column_link=>'f?p=&APP_ID.:75:&SESSION.::&DEBUG.:RP:SKOCZNIA_REKORDY:#ID#'
,p_column_linktext=>'Rekordy'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1242262800074513440)
,p_query_column_id=>10
,p_column_alias=>'DERIVED$02'
,p_column_display_sequence=>10
,p_column_link=>'f?p=&APP_ID.:76:&SESSION.::&DEBUG.:RP:SKOCZNIA_PRZEBUDOWY:#ID#'
,p_column_linktext=>'Przebudowy'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1222306378350493548)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1066242772489455680)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(1066282754210455731)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1066266665357455705)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1189457663549834833)
,p_name=>'WYBRANY_KRAJ_SKOCZNI'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1222294862293493533)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/page_00072
begin
wwv_flow_api.create_page(
 p_id=>72
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Szczegóły'
,p_page_mode=>'MODAL'
,p_step_title=>'Szczegóły'
,p_step_sub_title=>'Szczegóły'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20161230231218'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(1222372181264165093)
,p_name=>'Szczegóły skoczni'
,p_template=>wwv_flow_api.id(1066237758001455677)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'BODY'
,p_source=>'SELECT * FROM skocznia WHERE id= :WYBRANA_SKOCZNIA'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(1066251419032455688)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'Nie znaleziono danych szukanej skoczni.'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1189457996578834836)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1189458088737834837)
,p_query_column_id=>2
,p_column_alias=>'NAZWA'
,p_column_display_sequence=>2
,p_column_heading=>'Nazwa skoczni'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#NAZWA#</b>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1189458145113834838)
,p_query_column_id=>3
,p_column_alias=>'MIEJSCOWOSC'
,p_column_display_sequence=>3
,p_column_heading=>'Miejscowość'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#MIEJSCOWOSC#</b>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1189458223403834839)
,p_query_column_id=>4
,p_column_alias=>'KRAJ'
,p_column_display_sequence=>4
,p_column_heading=>'Kraj'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b> #KRAJ#</b> <img src="#APP_IMAGES##KRAJ#.gif"> '
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1189458379002834840)
,p_query_column_id=>5
,p_column_alias=>'PUNKT_K'
,p_column_display_sequence=>5
,p_column_heading=>'Punkt K'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#PUNKT_K#</b>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1189458423030834841)
,p_query_column_id=>6
,p_column_alias=>'PUNKT_HS'
,p_column_display_sequence=>6
,p_column_heading=>'Punkt HS'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#PUNKT_HS#</b>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1189458566497834842)
,p_query_column_id=>7
,p_column_alias=>'ROK_POWST'
,p_column_display_sequence=>7
,p_column_heading=>'Data powstania'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#ROK_POWST#</b>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1189458674458834843)
,p_query_column_id=>8
,p_column_alias=>'PRZEBUDOWANA'
,p_column_display_sequence=>8
,p_column_heading=>'Przebudowana'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#PRZEBUDOWANA#</b>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1189457879680834835)
,p_name=>'WYBRANA_SKOCZNIA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1222372181264165093)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/page_00075
begin
wwv_flow_api.create_page(
 p_id=>75
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Rekordy'
,p_page_mode=>'MODAL'
,p_step_title=>'Rekordy'
,p_step_sub_title=>'Rekordy'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20161231020604'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(1245422200810745561)
,p_name=>'Lista rekordów'
,p_template=>wwv_flow_api.id(1066237758001455677)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>'SELECT * FROM Rekord WHERE skocznia_id = :SKOCZNIA_REKORDY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(1066249505199455687)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'Nie znaleziono rekordów tej skoczni w bazie.'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1245423510193745566)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1245423991413745567)
,p_query_column_id=>2
,p_column_alias=>'TYP'
,p_column_display_sequence=>2
,p_column_heading=>'Typ'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1245424364708745567)
,p_query_column_id=>3
,p_column_alias=>'ODLEGLOSC'
,p_column_display_sequence=>3
,p_column_heading=>'Odleglosc'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1245424795926745568)
,p_query_column_id=>4
,p_column_alias=>'REKORDZISTA'
,p_column_display_sequence=>4
,p_column_heading=>'Rekordzista'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1245425198141745568)
,p_query_column_id=>5
,p_column_alias=>'DATA'
,p_column_display_sequence=>5
,p_column_heading=>'Data'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1245425599626745569)
,p_query_column_id=>6
,p_column_alias=>'BELKA'
,p_column_display_sequence=>6
,p_column_heading=>'Belka'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1245425940143745569)
,p_query_column_id=>7
,p_column_alias=>'SKOCZNIA_ID'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1245426376711745569)
,p_query_column_id=>8
,p_column_alias=>'AKTUALNY'
,p_column_display_sequence=>8
,p_column_heading=>'Aktualny'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1242261917185513431)
,p_name=>'SKOCZNIA_REKORDY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1245422200810745561)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/page_00076
begin
wwv_flow_api.create_page(
 p_id=>76
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Przebudowy'
,p_page_mode=>'MODAL'
,p_step_title=>'Przebudowy'
,p_step_sub_title=>'Przebudowy'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20170101173953'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(1259363730446832859)
,p_name=>'Lista przebudów'
,p_template=>wwv_flow_api.id(1066237758001455677)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>'SELECT * FROM Przebudowa WHERE skocznia_id = :SKOCZNIA_PRZEBUDOWY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(1066249505199455687)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1259364450923832862)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1259364856549832863)
,p_query_column_id=>2
,p_column_alias=>'RODZAJ'
,p_column_display_sequence=>2
,p_column_heading=>'Rodzaj'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1259365275322832863)
,p_query_column_id=>3
,p_column_alias=>'UKONCZONO'
,p_column_display_sequence=>3
,p_column_heading=>'Ukonczono'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1259365628897832864)
,p_query_column_id=>4
,p_column_alias=>'DATA_ROZP'
,p_column_display_sequence=>4
,p_column_heading=>'Data Rozp'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1259366043871832864)
,p_query_column_id=>5
,p_column_alias=>'DATA_UKON'
,p_column_display_sequence=>5
,p_column_heading=>'Data Ukon'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1259366421025832864)
,p_query_column_id=>6
,p_column_alias=>'SKOCZNIA_ID'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1242263001353513442)
,p_query_column_id=>7
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>7
,p_column_heading=>'Wykonawcy'
,p_column_link=>'f?p=&APP_ID.:77:&SESSION.::&DEBUG.:RP:PRZEBUDOWA_WYKONAWCY_ID:#ID#'
,p_column_linktext=>'Zobacz'
,p_disable_sort_column=>'N'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1242262978462513441)
,p_name=>'SKOCZNIA_PRZEBUDOWY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1259363730446832859)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/page_00077
begin
wwv_flow_api.create_page(
 p_id=>77
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Wykonawcy'
,p_page_mode=>'MODAL'
,p_step_title=>'Wykonawcy'
,p_step_sub_title=>'Wykonawcy'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20170101174827'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(1259914701069902447)
,p_name=>'Wykonawcy'
,p_template=>wwv_flow_api.id(1066237758001455677)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT w.nazwa, w.adres FROM wykonawca w',
'INNER JOIN przeb_wykon pw ON pw.wykonawca_id=w.id',
'INNER JOIN przebudowa p ON p.id=pw.przebudowa_id',
'WHERE p.id = :PRZEBUDOWA_WYKONAWCY_ID'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(1066249505199455687)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'Brak informacji w bazie o wykonawcach przebudowy.'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1259915448408902450)
,p_query_column_id=>1
,p_column_alias=>'NAZWA'
,p_column_display_sequence=>1
,p_column_heading=>'Nazwa'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1242263223807513444)
,p_query_column_id=>2
,p_column_alias=>'ADRES'
,p_column_display_sequence=>2
,p_column_heading=>'Adres'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1242263176129513443)
,p_name=>'PRZEBUDOWA_WYKONAWCY_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1259914701069902447)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/page_00080
begin
wwv_flow_api.create_page(
 p_id=>80
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Reprezentacje'
,p_page_mode=>'NORMAL'
,p_step_title=>'Reprezentacje'
,p_step_sub_title=>'Reprezentacje'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20170101201557'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(1304625902205081875)
,p_name=>'Reprezentacje'
,p_template=>wwv_flow_api.id(1066237758001455677)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select kz.ID,',
'       kz.NAZWA,',
'       kz.LIMIT_START,',
'(t.imie || '' '' || t.nazwisko) AS Trener',
'  from KRAJ_ZAW kz INNER JOIN trener t ON t.kraj_zaw_id=kz.id'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(1066249505199455687)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'Brak'
,p_query_num_rows_type=>'ROW_RANGES'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_LEFT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1304626607891081879)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1304627068241081879)
,p_query_column_id=>2
,p_column_alias=>'NAZWA'
,p_column_display_sequence=>3
,p_column_heading=>'Reprezentacja'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#NAZWA#</b>'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1304627496827081879)
,p_query_column_id=>3
,p_column_alias=>'LIMIT_START'
,p_column_display_sequence=>4
,p_column_heading=>'Limit Zawodników'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_column_comment=>'Limit zawodników'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1242263307410513445)
,p_query_column_id=>4
,p_column_alias=>'TRENER'
,p_column_display_sequence=>5
,p_column_heading=>'Trener'
,p_column_link=>'f?p=&APP_ID.:81:&SESSION.::&DEBUG.:RP:KRAJ_TRENERA:#ID#'
,p_column_linktext=>'#TRENER#'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1242263638237513448)
,p_query_column_id=>5
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<img src="#APP_IMAGES##NAZWA#.gif">',
''))
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1242263746776513449)
,p_query_column_id=>6
,p_column_alias=>'DERIVED$02'
,p_column_display_sequence=>6
,p_column_heading=>'Reprezentanci'
,p_column_link=>'f?p=&APP_ID.:82:&SESSION.::&DEBUG.:RP:KRAJ_ZAWODNIKA:#ID#'
,p_column_linktext=>'Lista'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1304660977096081889)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1066242772489455680)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(1066282754210455731)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1066266665357455705)
,p_plug_query_row_template=>1
);
end;
/
prompt --application/pages/page_00081
begin
wwv_flow_api.create_page(
 p_id=>81
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Trenerzy'
,p_page_mode=>'MODAL'
,p_step_title=>'Trenerzy'
,p_step_sub_title=>'Trenerzy'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20170101200606'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(1307474419895283428)
,p_name=>'Trenerzy'
,p_template=>wwv_flow_api.id(1066237758001455677)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select t.IMIE,',
'       t.NAZWISKO,',
'       t.OD,',
'       t.DO,',
'       kz.nazwa',
'  from TRENER t INNER JOIN kraj_zaw kz ON kz.id=t.kraj_zaw_id WHERE t.kraj_zaw_id = :KRAJ_TRENERA'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(1066251419032455688)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'Nie znaleziono w bazie informacji o tym Trenerze.'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1307475195955283430)
,p_query_column_id=>1
,p_column_alias=>'IMIE'
,p_column_display_sequence=>1
,p_column_heading=>'Imie'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b> #IMIE# </b>'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1307475559477283430)
,p_query_column_id=>2
,p_column_alias=>'NAZWISKO'
,p_column_display_sequence=>2
,p_column_heading=>'Nazwisko'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#NAZWISKO#</b>'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1307475906891283430)
,p_query_column_id=>3
,p_column_alias=>'OD'
,p_column_display_sequence=>3
,p_column_heading=>'Posada od'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#OD#</b>'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1307476368072283431)
,p_query_column_id=>4
,p_column_alias=>'DO'
,p_column_display_sequence=>4
,p_column_heading=>'Posada do'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#DO#</b>'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1242263430967513446)
,p_query_column_id=>5
,p_column_alias=>'NAZWA'
,p_column_display_sequence=>5
,p_column_heading=>'Prowadzona Reprezentacja'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#NAZWA#</b> <img src="#APP_IMAGES##NAZWA#.gif">'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1242263583308513447)
,p_name=>'KRAJ_TRENERA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1307474419895283428)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/page_00082
begin
wwv_flow_api.create_page(
 p_id=>82
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Reprezentanci'
,p_page_mode=>'MODAL'
,p_step_title=>'Reprezentanci'
,p_step_sub_title=>'Reprezentanci'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20170101200416'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(1309521623540461980)
,p_name=>'Lista reprezentantów'
,p_template=>wwv_flow_api.id(1066237758001455677)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT reszta.* FROM (',
'SELECT z.*, ki.punkty, (SELECT nazwa FROM kraj_zaw WHERE id= :KRAJ_ZAWODNIKA ) AS kraj,',
'',
'(SELECT pozycja FROM ( SELECT ROWNUM AS Pozycja, punkty, imie, nazwisko, nazwa FROM (',
'SELECT ki.punkty, z.imie, z.nazwisko, kz.NAZWA FROM klasyf_ind ki',
'INNER JOIN Zawodnik z ON ki.ZAWODNIK_ID=z.id',
'INNER JOIN Kraj_zaw kz ON kz.ID=z.KRAJ_ZAW_ID',
'WHERE ki.sezon_nazwa = (SELECT sezon FROM (SELECT nazwa as sezon FROM sezon ORDER BY NAZWA DESC) WHERE ROWNUM = 1)',
'ORDER BY Punkty DESC )) WHERE imie = z.imie AND nazwisko = z.nazwisko) AS pozycja',
'',
'FROM zawodnik z',
'INNER JOIN klasyf_ind ki ON ki.zawodnik_id = z.id',
'WHERE ki.sezon_nazwa = (SELECT sezon FROM (SELECT nazwa as sezon FROM sezon ORDER BY NAZWA DESC) WHERE ROWNUM = 1)',
'AND z.kraj_zaw_id = :KRAJ_ZAWODNIKA',
'ORDER BY Pozycja',
'    ',
') reszta;'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(1066249505199455687)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'Nie znaleziono reprezentantów w bieżącym sezonie.'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1309522359681461981)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1309522720610461982)
,p_query_column_id=>2
,p_column_alias=>'IMIE'
,p_column_display_sequence=>3
,p_column_heading=>'Imie'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#IMIE#</b>'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1309523187217461982)
,p_query_column_id=>3
,p_column_alias=>'NAZWISKO'
,p_column_display_sequence=>4
,p_column_heading=>'Nazwisko'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#NAZWISKO#</b>'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1309523506998461982)
,p_query_column_id=>4
,p_column_alias=>'KLUB_ID'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1309523967410461983)
,p_query_column_id=>5
,p_column_alias=>'KRAJ_ZAW_ID'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1316017189433402301)
,p_query_column_id=>6
,p_column_alias=>'PUNKTY'
,p_column_display_sequence=>7
,p_column_heading=>'Punkty PŚ'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1316017319926402303)
,p_query_column_id=>7
,p_column_alias=>'KRAJ'
,p_column_display_sequence=>2
,p_column_heading=>'Kraj'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<img src="#APP_IMAGES##KRAJ#.gif">'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1316017255955402302)
,p_query_column_id=>8
,p_column_alias=>'POZYCJA'
,p_column_display_sequence=>8
,p_column_heading=>'Miejsce w PŚ'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1242263861602513450)
,p_name=>'KRAJ_ZAWODNIKA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1309521623540461980)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/page_00090
begin
wwv_flow_api.create_page(
 p_id=>90
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Procedury'
,p_page_mode=>'NORMAL'
,p_step_title=>'Procedury'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20170101225011'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1316017479346402304)
,p_plug_name=>'Procedury'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1066237758001455677)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1316018205793402312)
,p_plug_name=>'Procedura oblicza bieżącą klasyfikację indywidualną'
,p_parent_plug_id=>wwv_flow_api.id(1316017479346402304)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1066237758001455677)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1316018315503402313)
,p_plug_name=>'Procedura oblicza bieżącą klasyfikację drużynową'
,p_parent_plug_id=>wwv_flow_api.id(1316017479346402304)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1066237758001455677)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1316018487466402314)
,p_plug_name=>'Procedura aktualizuja rekordy skoczni'
,p_parent_plug_id=>wwv_flow_api.id(1316017479346402304)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1066237758001455677)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1316018568566402315)
,p_plug_name=>'Procedura aktualizuje przebudowy skoczni'
,p_parent_plug_id=>wwv_flow_api.id(1316017479346402304)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1066237758001455677)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1316020675762402336)
,p_plug_name=>'Procedura wypisująca zwycięzców'
,p_parent_plug_id=>wwv_flow_api.id(1316017479346402304)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1066237758001455677)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1316017552113402305)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1316018205793402312)
,p_button_name=>'Oblicz_klas_ind'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1066265958847455704)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Uruchom'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1316017848797402308)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1316018315503402313)
,p_button_name=>'Oblicz_klas_druz'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1066265958847455704)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Uruchom'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_security_scheme=>wwv_flow_api.id(1082261105747272672)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1316018080740402310)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1316018487466402314)
,p_button_name=>'Aktualizuj_rekordy'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1066265958847455704)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Uruchom'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1316018185941402311)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1316018568566402315)
,p_button_name=>'Aktualizuj_przebudowy'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1066265958847455704)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Uruchom'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1316020739634402337)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1316020675762402336)
,p_button_name=>'Wypisz_zwyciezcow'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1066265958847455704)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Uruchom'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(1316020450331402334)
,p_branch_action=>'f?p=&APP_ID.:70:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(1316018080740402310)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(1316020552603402335)
,p_branch_action=>'f?p=&APP_ID.:70:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(1316018185941402311)
,p_branch_sequence=>20
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1316020810437402338)
,p_name=>'SEZONY'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1316020675762402336)
,p_prompt=>'Sezony'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT nazwa as lata,nazwa FROM sezon'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1066265177223455703)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1316017606764402306)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Oblicz Klasyf ind'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'p_oblicz_klasyf_ind;',
'END;'))
,p_process_error_message=>'Coś poszło nie tak...'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1316017552113402305)
,p_process_success_message=>'Klasyfikacja indywidualna zaktualizowana!'
,p_security_scheme=>wwv_flow_api.id(1082261105747272672)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1316017988960402309)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Oblicz Klasyf druż'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'p_oblicz_klasyf_druz;',
'END;'))
,p_process_error_message=>'Coś poszło nie tak...'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1316017848797402308)
,p_process_success_message=>'Klasyfikacja drużynowa zaktualizowana!'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1316018620310402316)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Aktualizuj rekordy'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'p_aktualizuj_rekordy;',
'END;'))
,p_process_error_message=>'Coś poszło nie tak...'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1316018080740402310)
,p_process_success_message=>'Rekordy skoczni zaktualizowane!'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1316018756874402317)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Aktualizuj przebudowy'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'p_aktualizuj_przebudowy;',
'END;'))
,p_process_error_message=>'Coś poszło nie tak...'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1316018185941402311)
,p_process_success_message=>'Przebudowy skoczni zaktualizowane!'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1316020947156402339)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Wypisz zwyciezcow'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'p_wypisz_zwyciezcow(:SEZONY);',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1316020739634402337)
);
end;
/
prompt --application/pages/page_00091
begin
wwv_flow_api.create_page(
 p_id=>91
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Statystyka not'
,p_page_mode=>'NORMAL'
,p_step_title=>'Statystyka not'
,p_step_sub_title=>'Statystyka not'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20170107135749'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1720119644619500578)
,p_plug_name=>'Wykres'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1066237758001455677)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(1720120075230500579)
,p_region_id=>wwv_flow_api.id(1720119644619500578)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_legend_rendered=>'on'
,p_legend_position=>'top'
,p_overview_rendered=>'off'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(1720121722320500580)
,p_chart_id=>wwv_flow_api.id(1720120075230500579)
,p_seq=>10
,p_name=>'Najczęściej wystawiane noty'
,p_data_source_type=>'SQL_QUERY'
,p_data_source=>'SELECT nota, COUNT(nota) FROM noty GROUP BY nota'
,p_items_value_column_name=>'COUNT(NOTA)'
,p_group_name_column_name=>'NOTA'
,p_items_label_column_name=>'NOTA'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(1720120510363500579)
,p_chart_id=>wwv_flow_api.id(1720120075230500579)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Nota'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(1720121193935500580)
,p_chart_id=>wwv_flow_api.id(1720120075230500579)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Liczba not'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
);
end;
/
prompt --application/pages/page_00092
begin
wwv_flow_api.create_page(
 p_id=>92
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Kalendarz Zawodów'
,p_page_mode=>'NORMAL'
,p_step_title=>'Kalendarz Zawodów'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20170107143750'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1720337205708552439)
,p_plug_name=>'Kalendarz Zawodów'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(1066237758001455677)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select (s.miejscowosc || '' HS-'' || s.punkt_hs) AS Skocznia,',
'       k.DATA,',
'       k.DaTA AS Data2',
'  from KONKURS k INNER JOIN skocznia s ON k.skocznia_id = s.id;'))
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_plug_query_row_template=>1
,p_attribute_01=>'DATA'
,p_attribute_02=>'DATA2'
,p_attribute_03=>'SKOCZNIA'
,p_attribute_09=>'list:navigation'
,p_attribute_13=>'N'
,p_attribute_17=>'Y'
,p_attribute_19=>'Y'
,p_attribute_21=>'10'
,p_attribute_22=>'Y'
);
end;
/
prompt --application/pages/page_00093
begin
wwv_flow_api.create_page(
 p_id=>93
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Feedback'
,p_alias=>'FEEDBACK'
,p_page_mode=>'MODAL'
,p_step_title=>'Zgłoś'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20170107145048'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1724009383621389077)
,p_plug_name=>'Zgłoszenie'
,p_plug_template=>wwv_flow_api.id(1066243301163455681)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1724013263718389081)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1724009383621389077)
,p_button_name=>'Wyślij'
,p_button_action=>'SUBMIT'
,p_button_template_id=>wwv_flow_api.id(1066265958847455704)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Wyślij'
,p_button_position=>'TOP'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1724013685732389081)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(1724009383621389077)
,p_button_name=>'Anuluj'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_id=>wwv_flow_api.id(1066265958847455704)
,p_button_image_alt=>'Anuluj'
,p_button_position=>'TOP'
,p_button_execute_validations=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1724009767355389078)
,p_name=>'P93_APPLICATION_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(1724009383621389077)
,p_display_as=>'NATIVE_HIDDEN'
,p_help_text=>'Identifies Application.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1724010667788389079)
,p_name=>'P93_PAGE_ID'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(1724009383621389077)
,p_prompt=>'Strona:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>'select page_id||''. ''||page_name d, page_id v from apex_application_pages where page_id = :P93_PAGE_ID and application_id = :P93_APPLICATION_ID'
,p_tag_attributes=>'class="fielddatabold"'
,p_field_template=>wwv_flow_api.id(1066265177223455703)
,p_lov_display_extra=>'YES'
,p_help_text=>'Identifies page within application.'
,p_attribute_01=>'Y'
,p_attribute_02=>'LOV'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1724011461404389080)
,p_name=>'P93_FEEDBACK'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1724009383621389077)
,p_prompt=>'Zgłoszenie'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(1066265177223455703)
,p_help_text=>'Enter your feedback and press the submit feedback button.'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1724012432187389080)
,p_name=>'P93_FEEDBACK_TYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(1724009383621389077)
,p_prompt=>'Typ zgłoszenia'
,p_source=>'1'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select the_name, id from APEX_FEEDBACK_TYPES order by id'
,p_field_template=>wwv_flow_api.id(1066265177223455703)
,p_lov_display_extra=>'YES'
,p_help_text=>'Please identify the type of feedback you are providing.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1724015051708389083)
,p_validation_name=>'P93_FEEDBACK'
,p_validation_sequence=>10
,p_validation=>'P93_FEEDBACK'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(1724013263718389081)
,p_only_for_changed_rows=>'Y'
,p_associated_item=>wwv_flow_api.id(1724011461404389080)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1724014017207389082)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(1724013685732389081)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1724014568377389083)
,p_event_id=>wwv_flow_api.id(1724014017207389082)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1724015463813389084)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Submit Feedback'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_util.submit_feedback (',
'    p_comment         => :P93_FEEDBACK,',
'    p_type            => :P93_FEEDBACK_TYPE,',
'    p_application_id  => :P93_APPLICATION_ID,',
'    p_page_id         => :P93_PAGE_ID,',
'    p_email           => null);'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1724013263718389081)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1724015830922389084)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Window'
,p_process_sql_clob=>'CLOSE_WINDOW'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00101
begin
wwv_flow_api.create_page(
 p_id=>101
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Login Page'
,p_alias=>'LOGIN_DESKTOP'
,p_page_mode=>'NORMAL'
,p_step_title=>'skoki_narciarskie - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(1066217470732455655)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20161229231921'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1066281700787455727)
,p_plug_name=>'skoki_narciarskie'
,p_icon_css_classes=>'fa-sign-in'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1066237433146455677)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1149602483300437523)
,p_plug_name=>'Rejestracja'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1066237758001455677)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1149602539872437524)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1149602483300437523)
,p_button_name=>'Zarejestruj'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1066265958847455704)
,p_button_image_alt=>'Zarejestruj się!'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:102:&SESSION.::&DEBUG.:RP,102::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1066282065135455729)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(1066281700787455727)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1066265958847455704)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Log In'
,p_button_position=>'REGION_TEMPLATE_NEXT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1066281804067455727)
,p_name=>'P101_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1066281700787455727)
,p_prompt=>'username'
,p_placeholder=>'username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(1066264904259455702)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1066281960333455729)
,p_name=>'P101_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(1066281700787455727)
,p_prompt=>'password'
,p_placeholder=>'password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(1066264904259455702)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1066282418745455730)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P101_USERNAME) );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1066282259261455730)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P101_USERNAME,',
'    p_password => :P101_PASSWORD );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1066282667212455731)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1066282518843455730)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>':P101_USERNAME := apex_authentication.get_login_username_cookie;'
);
end;
/
prompt --application/pages/page_00102
begin
wwv_flow_api.create_page(
 p_id=>102
,p_user_interface_id=>wwv_flow_api.id(1066280661461455724)
,p_name=>'Rejestracja'
,p_page_mode=>'MODAL'
,p_step_title=>'Rejestracja'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'KZPL_KROPEQ@INTERIA.PL'
,p_last_upd_yyyymmddhh24miss=>'20161229233250'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1149601029351437509)
,p_plug_name=>'Zarejestruj się'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1066237758001455677)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1149601447779437513)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(1149601029351437509)
,p_button_name=>'REJESTRUJ'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1066265958847455704)
,p_button_image_alt=>'Zarejestruj'
,p_button_position=>'BODY'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1149601104083437510)
,p_name=>'LOGIN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1149601029351437509)
,p_prompt=>'Login'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(1066265177223455703)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1149601250515437511)
,p_name=>'HASLO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(1149601029351437509)
,p_prompt=>'Haslo'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(1066265177223455703)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1149601360465437512)
,p_name=>'HASLO2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(1149601029351437509)
,p_prompt=>'Powtórz hasło'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(1066265177223455703)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1149601556767437514)
,p_validation_name=>'v_LOGIN'
,p_validation_sequence=>10
,p_validation=>'LOGIN'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Login nie może być pusty!'
,p_always_execute=>'N'
,p_associated_item=>wwv_flow_api.id(1149601104083437510)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1149601690276437515)
,p_validation_name=>'v_HASŁO_0'
,p_validation_sequence=>20
,p_validation=>'HASLO'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Hasło nie może być puste!'
,p_always_execute=>'N'
,p_associated_item=>wwv_flow_api.id(1149601250515437511)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1149601734883437516)
,p_validation_name=>'v_HASŁO_spacja'
,p_validation_sequence=>30
,p_validation=>'HASLO'
,p_validation_type=>'ITEM_CONTAINS_NO_SPACES'
,p_error_message=>'Hasło nie może zawierać spacji!'
,p_always_execute=>'N'
,p_associated_item=>wwv_flow_api.id(1149601250515437511)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1149601986777437518)
,p_validation_name=>'v_HASŁO2_0'
,p_validation_sequence=>40
,p_validation=>'HASLO2'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Powtórzone hasło nie może być puste!'
,p_always_execute=>'N'
,p_associated_item=>wwv_flow_api.id(1149601360465437512)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1149602063953437519)
,p_validation_name=>'v_HASŁO2_spacja'
,p_validation_sequence=>50
,p_validation=>'HASLO2'
,p_validation_type=>'ITEM_CONTAINS_NO_SPACES'
,p_error_message=>'Powtórzone hasło nie może zawierać spacji!'
,p_always_execute=>'N'
,p_associated_item=>wwv_flow_api.id(1149601360465437512)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1149602118646437520)
,p_validation_name=>'v_IDENTYCZNE'
,p_validation_sequence=>60
,p_validation=>':HASLO = :HASLO2'
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'Hasło i powtórzone hasło są różne!'
,p_always_execute=>'N'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1149602624443437525)
,p_validation_name=>'v_LOGIN_zajety'
,p_validation_sequence=>70
,p_validation=>'SELECt * FROM uzytkownik WHERE login = UPPER(:LOGIN)'
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Ten login jest już zajęty, wybierz inny!'
,p_always_execute=>'N'
,p_associated_item=>wwv_flow_api.id(1149601104083437510)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1149603770258437536)
,p_validation_name=>'v_LOGIN_regex'
,p_validation_sequence=>80
,p_validation=>'LOGIN'
,p_validation2=>'^[a-zA-Z0-9]{6,20}$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Login powinien składać się tylko z liter i cyfr oraz być długości minimum 6 znaków!'
,p_always_execute=>'N'
,p_associated_item=>wwv_flow_api.id(1149601104083437510)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1149602214182437521)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Zarejestruj'
,p_process_sql_clob=>'INSERT INTO uzytkownik(login,haslo,rola_id) VALUES (:LOGIN, :HASLO, 1)'
,p_process_error_message=>'Rejestracja nie powiodła się!'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Gratulacje! Jesteś nowym użytkownikiem! Teraz możesz się zalogować.'
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_api.create_install(
 p_id=>wwv_flow_api.id(1162513447690669076)
);
end;
/
prompt --application/deployment/install
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
