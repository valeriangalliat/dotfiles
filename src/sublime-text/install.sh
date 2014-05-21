link 'Package Control' '.config/sublime-text-3/Packages/Package Control'
link 'Theme - Spacegray' '.config/sublime-text-3/Packages/Theme - Spacegray'
link AsciiDoc .config/sublime-text-3/Packages/AsciiDoc
link DocBlockr .config/sublime-text-3/Packages/DocBlockr
link PHP-Twig .config/sublime-text-3/Packages/PHP-Twig

setting() {
    link "User/$1.sublime-settings" ".config/sublime-text-3/Packages/User/$1.sublime-settings"
}

setting Preferences
setting HTML
setting 'HTML (Twig)'
setting XML
setting JavaScript
