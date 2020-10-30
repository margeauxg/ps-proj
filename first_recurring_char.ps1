function Output_RepeatChar {
param ( [string]$foo )

    $char_hash = @{}
    $char_array = $foo.ToCharArray()

    foreach ($char in $char_array) {
        if ($char_hash.ContainsKey($char)) {

        return $char

        <# if you want to exclude spaces use this instead
        if ($char -ne " ") {
            return $char
        }
        #>

        } else {
            $char_hash.Add($char, 1)
        }
    }

}

$foo = "abcdedcba"
Output_RepeatChar $foo