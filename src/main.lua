function start() -- sögu byrjun
    os.execute("clear")
    print("þú ert ishmael 15 ára strákur frá sýrlandi. þú þarft að komast til íslands frá svíþjóð")
    print("----------------------------------")
    print("a. þú reynir að komast á flugvél sjáfur")
    print("b. þú færð hjálp frá viktori og jamal.")
    print("veldu")
    local choice = io.read():lower()
    if choice == "a" or "b" then
        return choice -- lesa input úr console
    else
        error("not a valid choice")
    end
end

function passport() -- vegabréf. þegar ishmael fær vegabréfið sitt
    os.execute("clear")
    print("þú ferð til hans viktors og hann seigist hava fundið mann sem er að selja vegabréf")
    print("þið farið til mannsins þið kaupið af honum vegabréf sem lítur út eins og þú")
    print("Hann er sammt spænskur og líkameð yfirvara skegg en skiftir það sammt máli þú lítur avlvegi eins og hann fyrir utan yfirvara skeggið og hann er 21 árs")
    print("----------------------------------")
    print("a. þú ferð beint á flugvöllin")
    print("b. þú ferð og lærir smá spænsku og ferð svo á flugvöllin")
    local choice = io.read():lower()
    if choice == "a" or "b" then
        return choice
    else
        error("not a valid choice")
    end
end

function airplane() -- komin á flugvélin áleiðinna til ísland
    os.execute("clear")
    print("þú ferð á flugvöllin")
    print(" og þú komst á flugvélinia")
    print("Þér er boðið ókeypis mat. Þyggur þú það?")
    print("----------------------------------")
    print("a. já")
    print("b. nei")
    local choice = io.read():lower()
    if choice == "a" or "b" then
        return choice
    else
        error("not a valid choice")
    end
end

function iceland() -- komin til íslands
    os.execute("clear")
    print("Þú ert núna komin til íslands og ert að fara út úr flugvellinum")
    print("enn þú ert stoppaður af flugvalla lögreglum")
    print("----------------------------------")
    print("a. láta einsog þú ert spænskur")
    print("b. eða seiga þeim strax að þú sért sýrlenskur")
    local choice = io.read():lower()
    if choice == "a" or "b" then
        return choice
    else
        error("not a valid choice")
    end
end

function interrogation(ch) -- yfirheyrslan
    if ch == "a" then
        print("Lögreglunar taka þig í yfrheyrslu")
        print("þú reynir að halda áfram að láta eins og þú ert spænskur")
        print("lögreglunar virðast fara út og ná í þíðanda")
        print("þegar þíðandin kemur reyniru að seiga þeim að þú ert sýrlenskur ekki spænskur")
        print("þú ert þá sentur uppá lögreglu stöðinna á keflavík þar sem þú bíður eftir arabískum þíðanda")
    elseif ch == "b" then
        print("Lögreglunar taka þig í yfrheyrslu")
        print("þegar þú ert komin inní yfirheyrslu herbergið reyniru að seiga þeim að þú ert sýrlenskur ekki spænskur")
        print("þú ert þá sentur uppá lögreglu stöðinna á keflavík þar sem þú bíður eftir arabískum þíðanda")
    end
    print("ýttu á enter til að halda áfram")
    io.read()
end

function ending() -- erdirinn
    os.execute("clear")
    print("þegar þíðandin kemur sérðu að það er lína.")
    print("þú hefur fundið karam fjölskylduna.")
    print("lína útskýrir að þú ert bara 15.")
    print("þegar hún er búin að útskýra leyfa lögreglunar þér að fara með línu heim til sín.")
    print("þar hittiru sali bestu vinkonu þína.")
    print("núna er heimilið þitt hjá karam fjölskylduni.")
    print("----------------------------------")
    print("það er allt og summt")
end

function main()
    local strt = start()
    if strt == "a" then -- logic fyrir birjunina
        os.execute("clear")
        print("þú náðir ekki inn í flugvélina. þú þarft vegabréf.")
        main()
    else
        psprt = passport()
    end
    if psprt == "a" then -- logic fyrir "passport" kaflan
        print("þú komst ekki í flugvélina. þú þarft að læra smá spænsku.")
        main()
    else
        airp = airplane() -- logic fyrir "airplane" kaflan
        if airp == "a" then
            print("þú þyggur matin")
        elseif airp == "b" then
            print("þú Þyggur ekki matin")
        end
    end
    icel = iceland()
    if icel == "a" then
        interrogation("a")
    elseif icel == "b" then
        interrogation("b")
    end
    ending()
end

main()
