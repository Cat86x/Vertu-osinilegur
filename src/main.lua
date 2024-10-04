function start() -- sögu byrjun
    os.execute("clear")
    print("þú ert ishmael. þú þarft að komast til íslands frá svíþjóð")
    print("----------------------------------")
    print("a. þú færð hjálp frá viktori og jamal.")
    print("b. þú reynir að komast á flugvél sjáfur")
    print("veldu")
    local choice = io.read():lower()
    if choice == "a" or "b" then
        return choice -- lesa input úr console
    end
end

function passport() -- vegabréf. þegar ishmael fær vegabréfið sitt
    os.execute("clear")
    print("þú ferð til hans viktors og hann seigist hava fundið mann sem er að selja vegabréf")
    print("þið farið til mannsins þið kaupið af honum vegabréf sem lítur út eins og þú")
    print("Hann er sammt spænskur og líkameð yfirvara skegg en skiftir það sammt máli þú lítur avlvegi eins og hann fyrir utan yfirvara skeggið")
    print("----------------------------------")
    print("a. þú ferð beint á flugvöllin")
    print("b. þú ferð og lærir smá spænsku")
    local choice = io.read():lower()
    if choice == "a" or "b" then
        return choice
    else
    end
end

function main()
    local strt = start()
    if strt == "a" then
        os.execute("clear")
        print("þú náðir ekki inn í flugvélina. þú þarft vegabréf.")
        main()
    else
        psprt = passport()
    end
    if psprt == "a" then
        print("þú komst ekki í flugvélina. þú þarft að læra smá spænsku.")
        start()
    else

    end
end

main()
