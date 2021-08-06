local _2afile_2a = "/Users/fankainang/.config/nvim/fnl/dotfiles/plugin/neogit.fnl"
local _0_
do
  local name_0_ = "dotfiles.plugin.neogit"
  local module_0_
  do
    local x_0_ = package.loaded[name_0_]
    if ("table" == type(x_0_)) then
      module_0_ = x_0_
    else
      module_0_ = {}
    end
  end
  module_0_["aniseed/module"] = name_0_
  module_0_["aniseed/locals"] = ((module_0_)["aniseed/locals"] or {})
  do end (module_0_)["aniseed/local-fns"] = ((module_0_)["aniseed/local-fns"] or {})
  do end (package.loaded)[name_0_] = module_0_
  _0_ = module_0_
end
local autoload
local function _1_(...)
  return (require("aniseed.autoload")).autoload(...)
end
autoload = _1_
local function _2_(...)
  local ok_3f_0_, val_0_ = nil, nil
  local function _2_()
    return {}
  end
  ok_3f_0_, val_0_ = pcall(_2_)
  if ok_3f_0_ then
    _0_["aniseed/local-fns"] = {}
    return val_0_
  else
    return print(val_0_)
  end
end
local _local_0_ = _2_(...)
local _2amodule_2a = _0_
local _2amodule_name_2a = "dotfiles.plugin.neogit"
do local _ = ({nil, _0_, nil, {{}, nil, nil, nil}})[2] end
local function _3_()
  local ok_3f, neogit = pcall(require, "neogit")
  if not ok_3f then
    return print("load neogit failed: ", neogit)
  else
    return neogit.setup({disable_commit_confirmation = false, disable_context_highlighting = false, disable_signs = false, integrations = {diffview = true}, mappings = {status = {B = "BranchPopup"}}, signs = {hunk = {"", ""}, item = {">", "v"}, section = {">", "v"}}})
  end
end
return {config = _3_}