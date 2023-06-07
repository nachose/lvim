return {
    common = {
        unix = " ",
        dos = " ",
        mac = " ",
        vim = " ",
        terminal = " ",
        plugins = " ",
        time = "󱑍 ",
        project = "󰙅 ",
        explorer = " ",
        folder = "󰉋 ",
        folder_close = "󰉋 ",
        folder_open = "󰝰 ",
        folder_empty = "󰉖 ",
        file = "󰈙 ",
        search_in_files = "󱔗 ",
        search = " ",
        help = "󰞋 ",
        quit = "󰅗 ",
        buffer = "󱔗 ",
        git = " ",
        lsp = " ",
        separator = "➤",
        dot = "",
        fix = " ",
        todo = " ",
        hack = " ",
        warning = " ",
        performance = "󰔠 ",
        note = "󰠮 ",
        test = " ",
        trace = " ",
    },
    git_status = {
        added = " ",
        deleted = " ",
        modified = " ",
        renamed = " ",
        untracked = " ",
        ignored = " ",
        unstaged = "󰄗 ",
        staged = "󰄵 ",
        conflict = " ",
    },
    ctrlspace = {
        CS = "",
        Sin = "",
        All = "",
        Vis = "",
        File = "󰈙",
        Tabs = "󰄮 ",
        CTab = "󰡖 ",
        NTM = "",
        WLoad = "󰜮",
        WSave = "󰜷",
        Zoom = "",
        SLeft = "",
        SRight = "",
        BM = "",
        Help = "",
        IV = "󰄗",
        IA = "󰄵",
        IM = " ",
        Dots = "",
    },
    cmp = {
        Folder = " 󰝰 (Folder)",
        File = " 󰈙 (File)",
        Namespace = "  (Namespace)",
        Package = "  (Package)",
        Module = "  (Module)",
        Interface = "  (Interface)",
        Constructor = "   (Constructor)",
        Enum = " 󰕘 (Enum)",
        EnumMember = " 󰕚 (EnumMember)",
        Class = " 󰊾 (Class)",
        Method = " 󰡱 (Method)",
        Function = " 󰊕 (Function)",
        Property = "  (Property)",
        Field = " 󰢤 (Field)",
        Constant = " 󰐃 (Constant)",
        Variable = " 󰯍 (Variable)",
        String = " 󰬶 (String)",
        Number = " 󰎠 (Number)",
        Boolean = " ◩ (Boolean)",
        Array = "  (Array)",
        Object = " 󰅩 (Object)",
        Key = " 󰌈 (Key)",
        Null = " 󰟢 (Null)",
        Struct = "  (Struct)",
        Event = "  (Event)",
        Operator = " 󱓉 (Operator)",
        TypeParameter = "󰊄 (TypeParameter)",
        Text = " 󰬶 (Text) ",
        Unit = "  (Unit)",
        Value = " 󱗽 (Value)",
        Keyword = " 󰌈 (Keyword)",
        Snippet = "  (Snippet)",
        Color = " 󰌁 (Color)",
        Reference = " 󰡌 (Reference)",
    },
    -- 󰕐 󰘯 󰖷   󰁁 󰃐  󰮄 󱗽 󰡱 󰋙󰌋 󰷖 󰧾 󰨑 󰒟 󱦜 󱄽 󰕘 󰕚    󰡌 󰢤 󰊾 󰯍 󰨝 󱒊 󰬶 󰎠 󱎆
    lsp = {
        File = "󰈙 ",
        Module = " ",
        Namespace = " ",
        Package = " ",
        Class = "󰊾 ",
        Method = "󰡱 ",
        Property = " ",
        Field = "󰢤 ",
        Constructor = "  ",
        Enum = "󰕘 ",
        EnumMember = "󰕚 ",
        Interface = " ",
        Function = "󰊕 ",
        Variable = "󰯍 ",
        Constant = "󰐃 ",
        String = "󰬶 ",
        Number = "󰎠 ",
        Boolean = "◩ ",
        Array = " ",
        Object = "󰅩 ",
        Key = "󰌈 ",
        Null = "󰟢 ",
        Struct = " ",
        Event = " ",
        Operator = "󱓉 ",
        TypeParameter = "󰊄 ",
    },
    outline = {
        File = { icon = "󰈙", hl = "@directory" },
        Namespace = { icon = "", hl = "@namespace" },
        Package = { icon = "", hl = "@include" },
        Module = { icon = "", hl = "@include" },
        Interface = { icon = "", hl = "@type" },
        Constructor = { icon = "", hl = "@constructor" },
        Enum = { icon = "󰕘", hl = "@field" },
        EnumMember = { icon = "󰕚", hl = "@field" },
        Class = { icon = "󰊾", hl = "@structure" },
        Method = { icon = "󰡱", hl = "@method" },
        Function = { icon = "󰊕", hl = "@function" },
        Property = { icon = "", hl = "@property" },
        Field = { icon = "󰢤", hl = "@field" },
        Constant = { icon = "󰐃", hl = "@constant" },
        Variable = { icon = "󰯍", hl = "@variable" },
        String = { icon = "󰬶", hl = "@string" },
        Number = { icon = "󰎠", hl = "@number" },
        Boolean = { icon = "◩", hl = "@boolean" },
        Array = { icon = "", hl = "@field" },
        Object = { icon = "󰅩", hl = "@type" },
        Key = { icon = "󰌈", hl = "@keyword" },
        Null = { icon = "󰟢", hl = "@comment" },
        Struct = { icon = "", hl = "@structure" },
        Event = { icon = "", hl = "@keyword" },
        Operator = { icon = "󱓉", hl = "@operator" },
        TypeParameter = { icon = "󰊄", hl = "@type" },
    },
    diagnostics = {
        error = " ",
        warn = " ",
        hint = "󰌵 ",
        info = " ",
    },
    lazy = {
        cmd = " ",
        config = "",
        event = "",
        ft = " ",
        init = " ",
        import = " ",
        keys = " ",
        lazy = "󰒲 ",
        loaded = "●",
        not_loaded = "○",
        plugin = " ",
        runtime = " ",
        source = " ",
        start = "",
        task = "󰸞 ",
        list = {
            "●",
            "➜",
            "",
            "‒",
        },
    },
    mason = {
        package_installed = " ",
        package_pending = "󰆴 ",
        package_uninstalled = " ",
    },
    dap_ui = {
        base = { expanded = "", collapsed = "", current_frame = "" },
        controls = {
            pause = "",
            play = "",
            step_into = "",
            step_over = "",
            step_out = "",
            step_back = "",
            run_last = "",
            terminate = "",
            disconnect = "",
        },
        sign = {
            breakpoint = "",
            reject = "",
            condition = "",
            stopped = "󰏤",
            log_point = "",
        },
    },
}
