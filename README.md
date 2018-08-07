# font-convert

Scripts/steps for convert/generate font subset.

## Step

Install fonttools.

```bash
# https://github.com/fonttools/fonttools
pip install fonttools brotli zopfli unicodedata2
```

Get `char-list.txt`.

```bash
node ./genCharList.js
```

Convert fonts.

```bash
./gen-font-subset-no-hinting.sh font/Roboto-Regular.ttf
./gen-font-subset-no-hinting.sh font/Roboto-Italic.ttf
./gen-font-subset-no-hinting.sh font/Roboto-Bold.ttf
./gen-font-subset-no-hinting.sh font/Roboto-BoldItalic.ttf

./gen-font-subset-no-hinting.sh font/SF-UI-Text-Regular.otf
./gen-font-subset-no-hinting.sh font/SF-UI-Text-Bold.otf

./gen-font-subset-char-list-no-hinting.sh font/SourceHanSansCN-Regular.ttf
./gen-font-subset-char-list-no-hinting.sh font/SourceHanSansCN-Bold.ttf

./gen-font-subset-char-list-no-hinting.sh font/PingFang-SC-Regular.ttf
./gen-font-subset-char-list-no-hinting.sh font/PingFang-SC-Semibold.ttf

# NOTE: no-hinting Noto output is not usable, chrome error: `OTS parsing error: CFF : Failed to parse table`
./gen-font-subset-char-list.sh font/NotoSansCJKsc-Regular.otf 
./gen-font-subset-char-list.sh font/NotoSansCJKsc-Bold.otf
```

Fix `./font/index.css`, and check [index.html](index.html).

## Link

About webfont:
  - https://developers.google.com/web/fundamentals/performance/optimizing-content-efficiency/webfont-optimization

Prepacked `.ttf` font download:
  - https://github.com/Pal3love/Source-Han-TrueType
  - https://github.com/google/fonts/tree/master/apache/roboto
