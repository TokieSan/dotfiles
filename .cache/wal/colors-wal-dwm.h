static const char norm_fg[] = "#c0c0c0";
static const char norm_bg[] = "#0b0c0c";
static const char norm_border[] = "#444444";

static const char sel_fg[] = "#c0c0c0";
static const char sel_bg[] = "#239D82";
static const char sel_border[] = "#c3c3c3";


static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
};
