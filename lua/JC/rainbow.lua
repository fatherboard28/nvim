local status_ok, rainbow = pcall(require, "rainbow")
if not status_ok then
  return
end

rainbow.setup {
  rainbow_active = 1
}
