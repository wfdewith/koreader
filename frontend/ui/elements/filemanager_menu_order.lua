local Device = require("device")

local order = {
    ["KOMenu:menu_buttons"] = {
        "filemanager_settings",
        "setting",
        "tools",
        "search",
        "plus_menu",
        "main",
    },
    filemanager_settings = {
        "filemanager_display_mode",
        "show_hidden_files",
        "show_unsupported_files",
        "items",
        "----------------------------",
        "sort_by",
        "reverse_sorting",
        "----------------------------",
        "start_with",
    },
    setting = {
        -- common settings
        -- those that don't exist will simply be skipped during menu gen
        "frontlight", -- if Device:hasFrontlight()
        "night_mode",
        "----------------------------",
        "network",
        "screen",
        "----------------------------",
        "taps_and_gestures",
        "navigation",
        "document",
        "----------------------------",
        "language",
        "device",
        -- end common settings
    },
    device = {
        "keyboard_layout",
        "time",
        "battery",
        "autosuspend",
        "autoshutdown",
        "ignore_sleepcover",
        "ignore_open_sleepcover",
        "mass_storage_settings",
        "screenshot",
    },
    navigation = {
        "back_to_exit",
        "back_in_filemanager",
        "enable_back_history",
        "android_volume_keys",
        "android_camera_key",
        "----------------------------",
        "invert_page_turn_buttons",
    },
    network = {
        "network_wifi",
        "network_proxy",
        "network_restore",
        "network_info",
        "network_before_wifi_action",
        "network_dismiss_scan",
        "----------------------------",
        "ssh",
    },
    screen = {
        "screensaver",
        "----------------------------",
        "screen_dpi",
        "screen_eink_opt",
        "color_rendering",
        "----------------------------",
        "screen_toggle_gsensor",
        "----------------------------",
        "screen_timeout",
        "fullscreen",
    },
    taps_and_gestures = {
        "gesture_manager",
        "gesture_intervals",
        "----------------------------",
        "menu_activate",
        "ignore_hold_corners",
        "screen_disable_double_tab",
    },
    tools = {
        "calibre_wireless_connection",
        "evernote",
        "statistics",
        "cloud_storage",
        "read_timer",
        "wallabag",
        "news_downloader",
        "send2ebook",
        "text_editor",
        "----------------------------",
        "more_plugins",
        "plugin_management",
        "----------------------------",
        "advanced_settings",
        "developer_options",
    },
    more_plugins = {
        "auto_frontlight",
        "battery_statistics",
        "synchronize_time",
        "keep_alive",
        "doc_setting_tweak",
        "terminal",
    },
    search = {
        "dictionary_lookup",
        "dictionary_lookup_history",
        "dictionary_settings",
        "----------------------------",
        "wikipedia_lookup",
        "wikipedia_history",
        "wikipedia_settings",
        "----------------------------",
        "find_book_in_calibre_catalog",
        "find_file",
        "----------------------------",
        "goodreads",
        "opds_catalog",
    },
    main = {
        "history",
        "open_last_document",
        "----------------------------",
        "collections",
        "----------------------------",
        "system_statistics",
        "mass_storage_actions",
        "----------------------------",
        "ota_update", -- if Device:hasOTAUpdates()
        "version",
        "help",
        "----------------------------",
        "exit_menu",
    },
    help = {
        "quickstart_guide",
        "----------------------------",
        "report_bug",
        "----------------------------",
        "about",
    },
    plus_menu = {},
    exit_menu = {
        "restart_koreader",
        "----------------------------",
        "sleep", -- if Device:isKindle() or Device:isKobo()
        "poweroff", -- if Device:isKobo()
        "reboot",   -- if Device:isKobo()
        "----------------------------",
        "start_bq",
        "exit",
    }
}

if Device:isAndroid() then
    order.exit_menu = nil
end

return order
