function start() -- sögu byrjun
    os.execute("clear")
    print("þú ert ishmael. þú þarft að komast til íslands frá svíþjóð")
    print("a. þú færð hjálp frá viktori og jamal.")
    print("b. þú reynir að komast á flugvél sjáfur")
    print("veldu")

    local choice = io.read():lower()

    if choice == "a" or "b" then
        return choice -- lesa input úr console
    end
end

function main()
    local st1 = start()
    if st1 == "a" then
        os.execute("clear")
        print("þú náðir ekki inn í flugvélina. þú þarft vegabréf")
        main()
    else
        os.execute("clear")
        print("þú ferð til hans viktors og hann seigist hava fundið mann sem er að selja vegabréf")
        print("þið farið til mannsins þið kaupið af honum vegabréf sem lítur út eins og þú")
        print()
    end
end

main()
