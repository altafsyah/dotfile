local status, rename = pcall(require, "inc_rename")
if not status then
	return
end

rename.setup()
