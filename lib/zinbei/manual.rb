puts '[ COMMAND ]'.center(60, '-')
puts ''
puts <<-DOC

    [Zinbei]

    -s,start           Start Pages.

    -v,version         Version Infomation

    -d,datetime        What time is it?

    -l,license         License Infomation

    [Example]

    $zinbei -n notojima.txt
    $zinbei -m notojima.txt
    $zinbei -z notojima.txt

    -n                 The number line checked end load file.

    -m                 Returned as a character string and the whole is also output.

    -z                 Text is indicated.

    -r                 rantan shell in zinbei.

    -t                 scom shell in zinbei.

    [rantan is MileStone_version,sme change name.]

    < how to use >

    zinbei -r [ File name ] [ String or regular expression ]

    < Example >

    >zinbei -r notojima.txt wajima

    If it evaluates whether there is any character string of wajima
    to notojima.txt and is in it, one of them will be outputted!

    < how to use>

    zinbei -t [Filename (read)] [Filename (write)] [change before word] [change after word]

    <Example>

    >zinbei -t notojima.txt Example.txt roman ruby

    Example.txt new_make_file after roman → ruby changed.

    [Make nyasocom_oss project]

    zinbei new [Folder_Name]
    nyasocom_oss maked in current directory.

DOC
puts ''
puts '[ COMMAND ]'.center(60, '-')
puts ''

