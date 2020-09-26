const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#0b0c0c", /* black   */
  [1] = "#218D75", /* red     */
  [2] = "#239D82", /* green   */
  [3] = "#23B292", /* yellow  */
  [4] = "#7F8080", /* blue    */
  [5] = "#24C19F", /* magenta */
  [6] = "#24D1AC", /* cyan    */
  [7] = "#c0c0c0", /* white   */

  /* 8 bright colors */
  [8]  = "#868686",  /* black   */
  [9]  = "#218D75",  /* red     */
  [10] = "#239D82", /* green   */
  [11] = "#23B292", /* yellow  */
  [12] = "#7F8080", /* blue    */
  [13] = "#24C19F", /* magenta */
  [14] = "#24D1AC", /* cyan    */
  [15] = "#c0c0c0", /* white   */

  /* special colors */
  [256] = "#0b0c0c", /* background */
  [257] = "#c0c0c0", /* foreground */
  [258] = "#c0c0c0",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
