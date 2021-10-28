nmlc -c --grf release/galician-town-names.grf galician-town-names.nml
pandoc --from markdown --to plain -o release/changelog.txt CHANGELOG.md
pandoc --from markdown --to plain -o release/readme.txt README.md
cp -a LICENSE release/license.txt
tar -cf release/galician-town-names.tar --directory=release changelog.txt readme.txt license.txt galician-town-names.grf