# Propane Mods

Make sure you've got a Propane support directory with a styles, and
unsupported directory.

``` sh
mkdir -p ~/Library/Application\ Support/Propane/styles
mkdir -p ~/Library/Application\ Support/Propane/unsupported
```

Then copy each of the CSS files in to styles, and the caveatPatchor.js
files in to unsupported.

``` sh
for css in *.css; do
  ln -fs $DOT/osx/propane/$css ~/Library/Application\ Support/Propane/styles/
done

for js in *.js; do
  ln -fs $DOT/osx/propane/$js ~/Library/Application\ Support/Propane/unsupported/
done
```
