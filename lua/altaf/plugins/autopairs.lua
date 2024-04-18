local status, autopairs = pcall(require, "nvim-autopairs")
if not status then
	return
end

autopairs.setup({
	check_ts = true,
	ts_config = {
		lua = { "string" },
		javascript = { "template_string" },
		java = false,
	},
})

local status2, cmp_autopairs = pcall(require, "nvim-autopairs.completion.cmp")
if not status2 then
	return
end

local status3, cmp = pcall(require, "cmp")
if not status3 then
	return
end

cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
