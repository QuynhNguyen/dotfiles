editorSymlinkName=/usr/local/bin/editor
if [ ! \( -L "${editorSymlinkName}" \) ]
then
	ln -s "/Applications/Visual Studio Code.app/Contents/MacOS/Atom" $editorSymlinkName
fi
export EDITOR=/usr/local/bin/editor
