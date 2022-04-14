import XMonad
import XMonad.Util.EZConfig (additionalKeys)

main = do
  xmonad $ defaultConfig
    { terminal = "st"
    , modMask = alt
    , borderWidth = 2
    , normalBorderColor = "#111111"
    , focusedBorderColor = "#0000FF"
    } `additionalKeys` bindings

bindings =
  [
    ((alt, xK_d), spawn "dmenu_run")
  , ((alt, xK_t), spawn "st")
  ]

alt = mod1Mask
