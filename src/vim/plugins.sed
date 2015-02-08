# Remove comments
s/#.*//

# Remove leading/trailing spaces
s/^ *//
s/ *$//

# Drop empty lines
/^$/d

# Quote lines that are not brace expressions
/^[^{]/s/^/'/
/[^}]$/s/$/'/
