function md2pdf
    set file $argv[1]

    if test -z $file
        echo "无输入文件"
        return 1
    end

    if string match -qv "*.md" $file
        echo "该文件不是Markdown文件"
        return 1
    end

    pandoc --pdf-engine=xelatex -V geometry:"top=2cm, bottom=1.5cm, left=2cm, right=2cm" -V CJKmainfont='思源宋体' -V mainfont='Noto Serif' --toc $file -o "$(basename $file .md)".pdf
end
