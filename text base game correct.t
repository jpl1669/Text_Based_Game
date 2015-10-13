%Jp Lambert
%Text based game
%Version 4.2
%le 22 sept 2015

%Ici je declare toutes les variables et je mets des couleurs de fond

import GUI
% mes variables pour le font
var fsize, ffsize, fffsize, ffffsize, fffffsize : int
var EXP, start, lvl, dmg, edamage, speed, espeed, ehp, ehpmax, PB, ED, PD, CAT : int
var lvls, weapon, dmgs, ename, sspeed, sespeed, shp, shpmax, sehp, sehpmax, weapon2 : string
var boarpic, chestpic, spiderpic, ogrepic, cavepic, crosspic, pathpic, tent1pic, tent2pic, bandit1pic, bandit2pic, chiefpic, mergepic, forestpic, entpic, yetipic, kappapic, fairypic, mountpic,
    castlepic, dragonpic, kingpic : int
var HP : int
var HPmax : int
var chars : array char of boolean
var ent : int
var Invent : array 1 .. 10 of string
var wep : boolean
var fair : boolean

fair := false
Invent (2) := "Empty"
speed := 0
HP := 100
HPmax := 100
weapon := " Not aquired yet!"
lvl := 1
dmg := 0
start := 0
EXP := 0
weapon2 := weapon
wep := false

Text.ColorBack (grey)
Text.Color (black)
Draw.FillBox (0, 0, maxx, maxy, black)
Draw.FillBox (0, 0, maxx, 190, grey)
Draw.FillBox (0, maxy, 180, 190, white)
Draw.FillBox (maxx, maxy, 470, 190, white)
Draw.FillBox (0, 380, maxx, 381, black)
Draw.FillBox (0, 190, maxx, 191, black)
Draw.FillBox (470, 165, maxx, 166, black)
Draw.FillBox (470, 189, 471, 0, black)
Draw.FillBox (327, 190, 328, 0, black)
Draw.Box (25, 351, 25 + HPmax, 356, black)
Draw.FillBox (25, 351, 25 + HP, 356, red)

fsize := Font.New ("Times New Roman:24")
ffsize := Font.New ("Times New Roman:16")
fffsize := Font.New ("Times New Roman:12")
ffffsize := Font.New ("Times New Roman:20")
fffffsize := Font.New ("Times New Roman:28")
%--------------------------------------------------------------------------------
%Ceci est le code pour le welcome screen et les instructions et toutes lesinformations sur la page d'apres

loop
    Draw.FillBox (0, 0, maxx, maxy, grey)
    Font.Draw ("Welcome to FFG! ", 190, 350, fffffsize, black)
    Font.Draw ("Instructions", 50, 280, fsize, black)
    Font.Draw ("To play the game read the text and press", 0, 250, fffsize, black)
    Font.Draw ("the number of the option you want to select.", 0, 230, fffsize, black)
    Font.Draw ("Then press enter to chose it", 0, 210, fffsize, black)
    Font.Draw ("The decisions you make are final,", 370, 250, fffsize, black)
    Font.Draw ("there is no going back...", 370, 230, fffsize, black)
    Font.Draw ("The game will begin in 8 seconds...", 105, 120, fsize, black)
    delay (1000)
    Font.Draw ("WARNING!", 370, 280, fsize, red)
    delay (1000)
    start += 1
    exit when start >= 8
end loop

Draw.FillBox (0, 0, maxx, maxy, black)
Draw.FillBox (0, 0, maxx, 190, grey)
Draw.FillBox (0, maxy, 180, 190, white)
Draw.FillBox (maxx, 190, 470, 0, white)
Draw.FillBox (maxx, maxy, 470, 190, white)
Draw.FillBox (0, 380, maxx, 381, black)
Draw.FillBox (0, 190, maxx, 191, black)
Draw.FillBox (470, 165, maxx, 166, black)
Draw.FillBox (470, 189, 471, 0, black)
Draw.FillBox (327, 190, 328, 0, black)
Draw.Box (25, 351, 25 + HPmax, 356, black)
Draw.FillBox (25, 351, 25 + HP, 356, red)

shpmax := intstr (HPmax)
shp := intstr (HP)
sspeed := intstr (speed)
dmgs := intstr (dmg)
lvls := intstr (lvl)
Font.Draw ("The HERO stats", 0, 386, fffsize, black)
Font.Draw ("Name : The HERO", 0, 366, fffsize, black)
Font.Draw ("HP", 0, 351, fffsize, black)
Font.Draw ("Current HP" + shp + "/" + shpmax, 0, 336, fffsize, black)
Font.Draw ("EXP", 0, 321, fffsize, black)
Font.Draw ("Lvl. " + lvls, 0, 306, fffsize, black)
Font.Draw ("Weapon : " + weapon, 0, 291, fffsize, black)
Font.Draw ("HERO Damage : " + dmgs, 0, 276, fffsize, black)
Font.Draw ("HERO Speed : " + sspeed, 0, 261, fffsize, black)



Font.Draw ("Current ENEMY stats", 470, 386, fffsize, black)
Font.Draw ("Inventory", 473, 170, ffsize, black)

%----------------------------------------------------------------------------------------------------------------
proc text
% le text pour le hero et le background
    Draw.FillBox (0, 0, maxx, maxy, black)
    Draw.FillBox (0, 0, maxx, 190, grey)
    Draw.FillBox (0, maxy, 180, 190, white)
    Draw.FillBox (maxx, 190, 470, 0, white)
    Draw.FillBox (maxx, maxy, 470, 190, white)
    Draw.FillBox (0, 380, maxx, 381, black)
    Draw.FillBox (0, 190, maxx, 191, black)
    Draw.FillBox (470, 165, maxx, 166, black)
    Draw.FillBox (470, 189, 471, 0, black)
    Draw.FillBox (327, 190, 328, 0, black)
    Draw.Box (25, 351, 25 + HPmax, 356, black)
    Draw.FillBox (25, 351, 25 + HP, 356, red)

    shpmax := intstr (HPmax)
    shp := intstr (HP)
    sspeed := intstr (speed)
    dmgs := intstr (dmg)
    lvls := intstr (lvl)
    Font.Draw ("The HERO stats", 0, 386, fffsize, black)
    Font.Draw ("Name : The HERO", 0, 366, fffsize, black)
    Font.Draw ("HP", 0, 351, fffsize, black)
    Font.Draw ("Current HP" + shp + "/" + shpmax, 0, 336, fffsize, black)
    Font.Draw ("EXP", 0, 321, fffsize, black)
    Font.Draw ("Lvl. " + lvls, 0, 306, fffsize, black)
    Font.Draw ("Weapon : " + weapon2, 0, 291, fffsize, black)
    Font.Draw ("HERO Damage : " + dmgs, 0, 276, fffsize, black)
    Font.Draw ("HERO Speed : " + sspeed, 0, 261, fffsize, black)



    Font.Draw ("Current ENEMY stats", 470, 386, fffsize, black)
    Font.Draw ("Inventory", 473, 170, ffsize, black)


end text
%--------------------------------------------------------------------------
proc win
% le win screen
    Draw.FillBox (0, 0, maxx, maxy, green)
    loop
        Font.Draw ("CONGRATULATIONS! ", 150, 350, fffffsize, yellow)
        Font.Draw ("YOU WIN! ", 240, 300, fffffsize, yellow)

        delay (1000)

        Font.Draw ("CONGRATULATIONS! ", 150, 350, fffffsize, green)
        Font.Draw ("YOU WIN! ", 240, 300, fffffsize, green)
        delay (1000)

    end loop

end win
%----------------------------------------------------------------------------------
%le code pour le "gameover screen"
proc GameOver

    cls
    Draw.FillBox (0, 0, maxx, maxy, black)
    Font.Draw ("GAME OVER", 200, 350, fffffsize, red)
    delay (3000)
    quit

end GameOver
%----------------------------------------------------------------------------------
proc boss
%le code pour le boss fight
    cls

    text

    Font.Draw ("-" + Invent (1), 473, 150, fffsize, black)
    if Invent (2) = "Key" then
        Font.Draw ("-" + Invent (2), 473, 135, fffsize, black)
    end if

    ehp := 100
    edamage := 1000
    espeed := 8
    ehpmax := 100
    ename := "Demon King"

    Draw.FillBox (495, 351, 495 + ehp, 356, red)
    Draw.Box (495, 351, 495 + ehpmax, 356, black)



    sehpmax := intstr (ehpmax)
    ent := 0

    loop
        cls
        text

        Draw.FillBox (495, 351, 495 + ehp, 356, red)
        Draw.Box (495, 351, 495 + ehpmax, 356, black)


        kingpic := Pic.FileNew ("king.jpg")
        Pic.Draw (kingpic, 215, 210, picCopy)

        sehp := intstr (ehp)
        Font.Draw ("Enemy Name : " + ename, 470, 366, fffsize, black)
        Font.Draw ("HP ", 470, 351, fffsize, black)
        Font.Draw ("Current HP " + sehp + "/" + sehpmax, 470, 336, fffsize, black)
        Font.Draw ("Lvl. : 10  ", 470, 321, fffsize, black)
        Font.Draw ("Enemy Damage : 1000 ", 470, 306, fffsize, black)
        Font.Draw ("Enemy Speed : 2 ", 470, 291, fffsize, black)

        Font.Draw ("1. Attack", 370, 150, ffsize, black)
        Font.Draw ("2. Block", 370, 110, ffsize, black)
        Font.Draw ("Blocking cancels all damage and if successful you", 1, 175, fffsize, black)
        Font.Draw ("have a chance to counter attack. Attack will simply", 1, 160, fffsize, black)
        Font.Draw ("attack the enemy with a chance of missing.", 1, 145, fffsize, black)
        ent := 1
        loop
            Input.KeyDown (chars)
            if chars ('1') then


                Font.Draw ("1. Attack", 370, 150, ffsize, white)
                Font.Draw ("2. Block", 370, 110, ffsize, black)

                ent := 1
            end if

            Input.KeyDown (chars)
            if chars ('2') then


                Font.Draw ("1. Attack", 370, 150, ffsize, black)
                Font.Draw ("2. Block", 370, 110, ffsize, white)

                ent := 2
            end if

            exit when chars (KEY_ENTER) and ent > 0

        end loop

        if ent = 1 then
            Draw.FillBox (0, 0, 325, 186, grey)
            randint (PD, 1, speed)
            randint (ED, 1, espeed)

            if ED = espeed then

                HP -= edamage
                Font.Draw ("The Enemy Hit!", 1, 160, fffsize, black)

            else

                HP -= 0
                Font.Draw ("The Enemy Missed!", 1, 160, fffsize, black)

            end if

            if PD = speed then

                ehp -= dmg
                Font.Draw ("You Hit the Enemy!", 1, 175, fffsize, black)

            else

                ehp -= 0
                Font.Draw ("You Missed The Enemy!", 1, 175, fffsize, black)

            end if

        else
            randint (PB, 1, 2)
            Draw.FillBox (0, 0, 325, 186, grey)
            if PB = 2 then
                HP -= edamage
                Font.Draw ("Your Block Failed You Were Damaged!", 1, 175, fffsize, black)

            else
                randint (CAT, 1, 2)
                HP -= 0
                Font.Draw (" You Blocked!", 1, 175, fffsize, black)
                if CAT = 2 then
                    Font.Draw ("Your couter attack failed!", 1, 160, fffsize, black)

                else
                    Font.Draw ("Your couter attack succeded!", 1, 160, fffsize, black)
                    ehp -= dmg
                end if
            end if

        end if
        delay (2000)
        if HP <= 0 then
            if fair = true then
                HP := HPmax
                fair := false
                cls
                Draw.FillBox (0, 0, maxx, maxy, 38)
                Font.Draw ("You Where Healed! ", 200, 350, fffffsize, white)
                delay (2000)
                cls
            end if
        end if
        exit when HP <= 0 and fair = false or ehp <= 0
    end loop
    if HP <= 0 then
        GameOver
    else

        win
    end if

end boss
%---------------------------------------------------------------------------------
proc beforeboss
%le code pour la partie avant le boss
    cls

    weapon2 := "Greatsword"
    dmg := 1000
    speed := 8
    HP := HPmax
    text
    ent := 0

    Font.Draw ("-" + Invent (1), 473, 150, fffsize, black)
    if Invent (2) = "Key" then
        Font.Draw ("-" + Invent (2), 473, 135, fffsize, black)
    end if

    Font.Draw ("The HERO now progresses to the boss, the demon king.", 1, 175, fffsize, black)
    Font.Draw ("The boss challenges the HERO to a duel and gives him", 1, 160, fffsize, black)
    Font.Draw ("a new blade. The weapon has extremely high damage.", 1, 145, fffsize, black)
    Font.Draw ("The fight will most likely be over in a single hit.", 1, 130, fffsize, black)
    Font.Draw ("Good luck. Blocking in this fight will likely", 1, 115, fffsize, black)
    Font.Draw ("result in failiure. Press Battle!", 1, 100, fffsize, black)

    kingpic := Pic.FileNew ("king.jpg")
    Pic.Draw (kingpic, 215, 210, picCopy)

    Font.Draw ("1. Battle!", 340, 150, ffsize, black)

    loop
        Input.KeyDown (chars)
        if chars ('1') then


            Font.Draw ("1. Battle!", 340, 150, ffsize, white)


            ent := 1
        end if

        exit when chars (KEY_ENTER) and ent > 0

    end loop

    if ent = 1 then

        drawfillbox (0, 0, maxx, maxy, red)
        Font.Draw ("Demon King Xerxes", 190, 350, fffffsize, white)
        delay (5000)

        boss
    end if

end beforeboss
%---------------------------------------------------------------------------------
proc battledragon
% le code pour la bataille avec le dragon
    cls
    text
    ent := 0

    Font.Draw ("-" + Invent (1), 473, 150, fffsize, black)
    if Invent (2) = "Key" then
        Font.Draw ("-" + Invent (2), 473, 135, fffsize, black)
    end if


    ehp := 90
    edamage := 18
    espeed := 6
    ehpmax := 90
    ename := "Dragon"

    Draw.FillBox (495, 351, 495 + ehp, 356, red)
    Draw.Box (495, 351, 495 + ehpmax, 356, black)



    sehpmax := intstr (ehpmax)
    ent := 0

    loop
        cls
        text

        Draw.FillBox (495, 351, 495 + ehp, 356, red)
        Draw.Box (495, 351, 495 + ehpmax, 356, black)


        dragonpic := Pic.FileNew ("dragon.jpg")
        Pic.Draw (dragonpic, 215, 230, picCopy)


        sehp := intstr (ehp)
        Font.Draw ("Enemy Name : " + ename, 470, 366, fffsize, black)
        Font.Draw ("HP ", 470, 351, fffsize, black)
        Font.Draw ("Current HP " + sehp + "/" + sehpmax, 470, 336, fffsize, black)
        Font.Draw ("Lvl. : 10  ", 470, 321, fffsize, black)
        Font.Draw ("Enemy Damage : 18 ", 470, 306, fffsize, black)
        Font.Draw ("Enemy Speed : 6 ", 470, 291, fffsize, black)


        Font.Draw ("1. Attack", 370, 150, ffsize, black)
        Font.Draw ("2. Block", 370, 110, ffsize, black)
        Font.Draw ("Blocking cancels all damage and if successful you", 1, 175, fffsize, black)
        Font.Draw ("have a chance to counter attack. Attack will simply", 1, 160, fffsize, black)
        Font.Draw ("attack the enemy with a chance of missing.", 1, 145, fffsize, black)
        ent := 1
        loop
            Input.KeyDown (chars)
            if chars ('1') then


                Font.Draw ("1. Attack", 370, 150, ffsize, white)
                Font.Draw ("2. Block", 370, 110, ffsize, black)

                ent := 1
            end if

            Input.KeyDown (chars)
            if chars ('2') then


                Font.Draw ("1. Attack", 370, 150, ffsize, black)
                Font.Draw ("2. Block", 370, 110, ffsize, white)

                ent := 2
            end if

            exit when chars (KEY_ENTER) and ent > 0

        end loop

        if ent = 1 then
            Draw.FillBox (0, 0, 325, 186, grey)
            randint (PD, 1, speed)
            randint (ED, 1, espeed)

            if ED = espeed then
                HP -= 0
                Font.Draw ("The Enemy Missed!", 1, 160, fffsize, black)

            else
                HP -= edamage
                Font.Draw ("The Enemy Hit!", 1, 160, fffsize, black)

            end if

            if PD = speed then

                ehp -= 0
                Font.Draw ("You Missed The Enemy!", 1, 175, fffsize, black)

            else
                ehp -= dmg
                Font.Draw ("You Hit the Enemy!", 1, 175, fffsize, black)

            end if

        else
            randint (PB, 1, 2)
            Draw.FillBox (0, 0, 325, 186, grey)
            if PB = 2 then
                HP -= edamage
                Font.Draw ("Your Block Failed You Were Damaged!", 1, 175, fffsize, black)

            else
                randint (CAT, 1, 2)
                HP -= 0
                Font.Draw (" You Blocked!", 1, 175, fffsize, black)
                if CAT = 2 then
                    Font.Draw ("Your couter attack failed!", 1, 160, fffsize, black)

                else
                    Font.Draw ("Your couter attack succeded!", 1, 160, fffsize, black)
                    ehp -= dmg
                end if
            end if

        end if
        delay (2000)
        if HP <= 0 then
            if fair = true then
                HP := HPmax
                fair := false
                cls
                Draw.FillBox (0, 0, maxx, maxy, 38)
                Font.Draw ("You Where Healed! ", 200, 350, fffffsize, white)
                delay (2000)
                cls
            end if
        end if
        exit when HP <= 0 and fair = false or ehp <= 0
    end loop
    if HP <= 0 then
        GameOver
    else

        Draw.FillBox (0, 0, maxx, maxy, green)
        Draw.FillBox (0, maxy, maxx, 320, white)


        Font.Draw ("You Killed The Dragon! ", 130, 350, fffffsize, black)
        Font.Draw ("EXP + 50", 473, 170, ffsize, black)

    end if

    EXP += 50
    delay (2000)
    if lvl = 1 then
        if EXP >= 30 then
            EXP -= 30
            lvl += 1
            dmg += 2
            HPmax += 20
            HP := HPmax
            Draw.FillBox (0, 0, maxx, maxy, yellow)
            Draw.FillBox (0, maxy, maxx, 320, white)
            Font.Draw ("Level UP! ", 190, 350, fffffsize, black)
            Font.Draw ("Damage + 2", 50, 280, fsize, black)
            Font.Draw ("HP + 20", 50, 240, fsize, black)

            delay (2000)
        end if
    else
        if EXP >= 80 then
            EXP -= 80
            lvl += 1
            dmg += 2
            HPmax += 20
            HP := HPmax
            Draw.FillBox (0, 0, maxx, maxy, yellow)
            Draw.FillBox (0, maxy, maxx, 320, white)
            Font.Draw ("Level UP! ", 190, 350, fffffsize, black)
            Font.Draw ("Damage + 2", 50, 280, fsize, black)
            Font.Draw ("HP + 20", 50, 240, fsize, black)

            delay (2000)
        end if
    end if
    beforeboss

end battledragon
%---------------------------------------------------------------------------------
proc castlegate
%le code pour avant le dragon
    cls
    HP := HPmax

    text
    ent := 0

    Font.Draw ("-" + Invent (1), 473, 150, fffsize, black)
    if Invent (2) = "Key" then
        Font.Draw ("-" + Invent (2), 473, 135, fffsize, black)
    end if

    Font.Draw ("Not long after the hero gets to the castle gate.", 1, 175, fffsize, black)
    Font.Draw ("Guarding it is a giant dragon. Press Battle.", 1, 160, fffsize, black)



    Font.Draw ("1. Battle!", 340, 150, ffsize, black)

    castlepic := Pic.FileNew ("castle.jpg")
    Pic.Draw (castlepic, 215, 230, picCopy)

    loop
        Input.KeyDown (chars)
        if chars ('1') then


            Font.Draw ("1. Battle!", 340, 150, ffsize, white)


            ent := 1
        end if

        exit when chars (KEY_ENTER) and ent > 0

    end loop

    if ent = 1 then

        Draw.FillBox (0, 0, maxx, maxy, red)
        Font.Draw ("Mini Boss BATTLE! ", 190, 350, fffffsize, white)
        delay (200)
        Draw.FillBox (0, 0, maxx, maxy, grey)
        Font.Draw ("Mini Boss BATTLE! ", 190, 350, fffffsize, white)
        delay (200)
        Draw.FillBox (0, 0, maxx, maxy, black)
        Font.Draw ("Mini Boss BATTLE! ", 190, 350, fffffsize, white)
        delay (200)
        Draw.FillBox (0, 0, maxx, maxy, red)
        Font.Draw ("Mini Boss BATTLE! ", 190, 350, fffffsize, white)
        delay (200)
        Draw.FillBox (0, 0, maxx, maxy, grey)
        Font.Draw ("Mini Boss BATTLE! ", 190, 350, fffffsize, white)
        delay (200)
        Draw.FillBox (0, 0, maxx, maxy, black)
        Font.Draw ("Mini Boss BATTLE! ", 190, 350, fffffsize, white)
        delay (200)

        battledragon
    end if

end castlegate
%---------------------------------------------------------------------------------
proc crossroads
%le code pour la partie avant le chateau
    cls
    text
    ent := 0

    Font.Draw ("-" + Invent (1), 473, 150, fffsize, black)
    if Invent (2) = "Key" then
        Font.Draw ("-" + Invent (2), 473, 135, fffsize, black)
    end if

    Font.Draw ("The HERO now finds himself on the road towards a", 1, 175, fffsize, black)
    Font.Draw ("castle belonging to the demon king. The HERO plans ", 1, 160, fffsize, black)
    Font.Draw ("to overthrow him. In a nearby town the villagers ", 1, 145, fffsize, black)
    Font.Draw ("heal his wounds to prepare him for the fight. The ", 1, 130, fffsize, black)
    Font.Draw ("HERO is now headed for his castle. Press Proceed.", 1, 115, fffsize, black)

    Font.Draw ("1. Proceed", 370, 150, ffsize, black)



    mergepic := Pic.FileNew ("merge.jpg")
    Pic.Draw (mergepic, 215, 230, picCopy)

    loop
        Input.KeyDown (chars)
        if chars ('1') then


            Font.Draw ("1. Proceed", 370, 150, ffsize, white)


            ent := 1
        end if

        exit when chars (KEY_ENTER) and ent > 0

    end loop

    if ent = 1 then
        castlegate

    end if


end crossroads
%------------------------------------------------------------------------------
proc aftermount
%le code apres la montagne
    cls
    text
    ent := 0
    Font.Draw ("-" + Invent (1), 473, 150, fffsize, black)
    Font.Draw ("-" + Invent (2), 473, 135, fffsize, black)


    Font.Draw ("Ater the fight, the HERO made his way to the other ", 1, 175, fffsize, black)
    Font.Draw ("side of the mountain. He followed the trail until", 1, 160, fffsize, black)
    Font.Draw ("he reached a place where two trails meet. Select", 1, 145, fffsize, black)
    Font.Draw ("Proceed to continue.", 1, 130, fffsize, black)


    Font.Draw ("1. Proceed", 370, 150, ffsize, black)

    mergepic := Pic.FileNew ("merge.jpg")
    Pic.Draw (mergepic, 215, 230, picCopy)

    loop
        Input.KeyDown (chars)
        if chars ('1') then


            Font.Draw ("1. Proceed", 370, 150, ffsize, white)


            ent := 1
        end if

        exit when chars (KEY_ENTER) and ent > 0

    end loop

    if ent = 1 then
        crossroads

    end if

end aftermount
%----------------------------------------------------------------------------------
proc battlekappa
%le code pour la bataille avec le kappa
    cls
    text
    ent := 0


    Font.Draw ("-" + Invent (1), 473, 150, fffsize, black)
    Font.Draw ("-" + Invent (2), 473, 135, fffsize, black)

    ehp := 30
    edamage := 10
    espeed := 7
    ehpmax := 30
    ename := "Kappa"

    Draw.FillBox (495, 351, 495 + ehp, 356, red)
    Draw.Box (495, 351, 495 + ehpmax, 356, black)



    sehpmax := intstr (ehpmax)
    ent := 0

    loop
        cls
        text

        Draw.FillBox (495, 351, 495 + ehp, 356, red)
        Draw.Box (495, 351, 495 + ehpmax, 356, black)

        kappapic := Pic.FileNew ("kappa.jpg")
        Pic.Draw (kappapic, 220, 210, picCopy)


        sehp := intstr (ehp)
        Font.Draw ("Enemy Name : " + ename, 470, 366, fffsize, black)
        Font.Draw ("HP ", 470, 351, fffsize, black)
        Font.Draw ("Current HP " + sehp + "/" + sehpmax, 470, 336, fffsize, black)
        Font.Draw ("Lvl. : 10  ", 470, 321, fffsize, black)
        Font.Draw ("Enemy Damage : 10 ", 470, 306, fffsize, black)
        Font.Draw ("Enemy Speed : 7 ", 470, 291, fffsize, black)

        Font.Draw ("-" + Invent (1), 473, 150, fffsize, black)
        Font.Draw ("-" + Invent (2), 473, 135, fffsize, black)

        Font.Draw ("1. Attack", 370, 150, ffsize, black)
        Font.Draw ("2. Block", 370, 110, ffsize, black)
        Font.Draw ("Blocking cancels all damage and if successful you", 1, 175, fffsize, black)
        Font.Draw ("have a chance to counter attack. Attack will simply", 1, 160, fffsize, black)
        Font.Draw ("attack the enemy with a chance of missing.", 1, 145, fffsize, black)
        ent := 1
        loop
            Input.KeyDown (chars)
            if chars ('1') then


                Font.Draw ("1. Attack", 370, 150, ffsize, white)
                Font.Draw ("2. Block", 370, 110, ffsize, black)

                ent := 1
            end if

            Input.KeyDown (chars)
            if chars ('2') then


                Font.Draw ("1. Attack", 370, 150, ffsize, black)
                Font.Draw ("2. Block", 370, 110, ffsize, white)

                ent := 2
            end if

            exit when chars (KEY_ENTER) and ent > 0

        end loop

        if ent = 1 then
            Draw.FillBox (0, 0, 325, 186, grey)
            randint (PD, 1, speed)
            randint (ED, 1, espeed)

            if ED = espeed then
                HP -= 0
                Font.Draw ("The Enemy Missed!", 1, 160, fffsize, black)

            else
                HP -= edamage
                Font.Draw ("The Enemy Hit!", 1, 160, fffsize, black)

            end if

            if PD = speed then

                ehp -= 0
                Font.Draw ("You Missed The Enemy!", 1, 175, fffsize, black)

            else
                ehp -= dmg
                Font.Draw ("You Hit the Enemy!", 1, 175, fffsize, black)

            end if

        else
            randint (PB, 1, 2)
            Draw.FillBox (0, 0, 325, 186, grey)
            if PB = 2 then
                HP -= edamage
                Font.Draw ("Your Block Failed You Were Damaged!", 1, 175, fffsize, black)

            else
                randint (CAT, 1, 2)
                HP -= 0
                Font.Draw (" You Blocked!", 1, 175, fffsize, black)
                if CAT = 2 then
                    Font.Draw ("Your couter attack failed!", 1, 160, fffsize, black)

                else
                    Font.Draw ("Your couter attack succeded!", 1, 160, fffsize, black)
                    ehp -= dmg
                end if
            end if

        end if
        delay (2000)
        if HP <= 0 then
            if fair = true then
                HP := HPmax
                fair := false
                cls
                Draw.FillBox (0, 0, maxx, maxy, 38)
                Font.Draw ("You Where Healed! ", 200, 350, fffffsize, white)
                delay (2000)
                cls

            end if
        end if
        exit when HP <= 0 and fair = false or ehp <= 0
    end loop
    if HP <= 0 then
        GameOver
    else

        Draw.FillBox (0, 0, maxx, maxy, green)
        Draw.FillBox (0, maxy, maxx, 320, white)


        Font.Draw ("You Killed The Kappa! ", 130, 350, fffffsize, black)
        Font.Draw ("EXP + 20", 473, 170, ffsize, black)

    end if

    EXP += 20
    delay (2000)
    if lvl = 1 then
        if EXP >= 30 then
            EXP -= 30
            lvl += 1
            dmg += 2
            HPmax += 20
            HP := HPmax
            Draw.FillBox (0, 0, maxx, maxy, yellow)
            Draw.FillBox (0, maxy, maxx, 320, white)
            Font.Draw ("Level UP! ", 190, 350, fffffsize, black)
            Font.Draw ("Damage + 2", 50, 280, fsize, black)
            Font.Draw ("HP + 20", 50, 240, fsize, black)

            delay (2000)
        end if
    else
        if EXP >= 80 then
            EXP -= 80
            lvl += 1
            dmg += 2
            HPmax += 20
            HP := HPmax
            Draw.FillBox (0, 0, maxx, maxy, yellow)
            Draw.FillBox (0, maxy, maxx, 320, white)
            Font.Draw ("Level UP! ", 190, 350, fffffsize, black)
            Font.Draw ("Damage + 2", 50, 280, fsize, black)
            Font.Draw ("HP + 20", 50, 240, fsize, black)

            delay (2000)
        end if
    end if
    aftermount

end battlekappa
%--------------------------------------------------------------------------------------
proc battleyeti
%le code pour la bataille avec le yeti
    cls
    text
    ent := 0


    Font.Draw ("-" + Invent (1), 473, 150, fffsize, black)
    Font.Draw ("-" + Invent (2), 473, 135, fffsize, black)

    ehp := 30
    edamage := 10
    espeed := 7
    ehpmax := 30
    ename := "Yeti"

    Draw.FillBox (495, 351, 495 + ehp, 356, red)
    Draw.Box (495, 351, 495 + ehpmax, 356, black)



    sehpmax := intstr (ehpmax)
    ent := 0

    loop
        cls
        text

        Draw.FillBox (495, 351, 495 + ehp, 356, red)
        Draw.Box (495, 351, 495 + ehpmax, 356, black)


        yetipic := Pic.FileNew ("yeti.jpg")
        Pic.Draw (yetipic, 193, 205, picCopy)


        sehp := intstr (ehp)
        Font.Draw ("Enemy Name : " + ename, 470, 366, fffsize, black)
        Font.Draw ("HP ", 470, 351, fffsize, black)
        Font.Draw ("Current HP " + sehp + "/" + sehpmax, 470, 336, fffsize, black)
        Font.Draw ("Lvl. : 10  ", 470, 321, fffsize, black)
        Font.Draw ("Enemy Damage : 10 ", 470, 306, fffsize, black)
        Font.Draw ("Enemy Speed : 7 ", 470, 291, fffsize, black)

        Font.Draw ("-" + Invent (1), 473, 150, fffsize, black)
        Font.Draw ("-" + Invent (2), 473, 135, fffsize, black)

        Font.Draw ("1. Attack", 370, 150, ffsize, black)
        Font.Draw ("2. Block", 370, 110, ffsize, black)
        Font.Draw ("Blocking cancels all damage and if successful you", 1, 175, fffsize, black)
        Font.Draw ("have a chance to counter attack. Attack will simply", 1, 160, fffsize, black)
        Font.Draw ("attack the enemy with a chance of missing.", 1, 145, fffsize, black)
        ent := 1
        loop
            Input.KeyDown (chars)
            if chars ('1') then


                Font.Draw ("1. Attack", 370, 150, ffsize, white)
                Font.Draw ("2. Block", 370, 110, ffsize, black)

                ent := 1
            end if

            Input.KeyDown (chars)
            if chars ('2') then


                Font.Draw ("1. Attack", 370, 150, ffsize, black)
                Font.Draw ("2. Block", 370, 110, ffsize, white)

                ent := 2
            end if

            exit when chars (KEY_ENTER) and ent > 0

        end loop

        if ent = 1 then
            Draw.FillBox (0, 0, 325, 186, grey)
            randint (PD, 1, speed)
            randint (ED, 1, espeed)

            if ED = espeed then
                HP -= 0
                Font.Draw ("The Enemy Missed!", 1, 160, fffsize, black)

            else
                HP -= edamage
                Font.Draw ("The Enemy Hit!", 1, 160, fffsize, black)

            end if

            if PD = speed then

                ehp -= 0
                Font.Draw ("You Missed The Enemy!", 1, 175, fffsize, black)

            else
                ehp -= dmg
                Font.Draw ("You Hit the Enemy!", 1, 175, fffsize, black)

            end if

        else
            randint (PB, 1, 2)
            Draw.FillBox (0, 0, 325, 186, grey)
            if PB = 2 then
                HP -= edamage
                Font.Draw ("Your Block Failed You Were Damaged!", 1, 175, fffsize, black)

            else
                randint (CAT, 1, 2)
                HP -= 0
                Font.Draw (" You Blocked!", 1, 175, fffsize, black)
                if CAT = 2 then
                    Font.Draw ("Your couter attack failed!", 1, 160, fffsize, black)

                else
                    Font.Draw ("Your couter attack succeded!", 1, 160, fffsize, black)
                    ehp -= dmg
                end if
            end if

        end if
        delay (2000)
        if HP <= 0 then
            if fair = true then
                HP := HPmax
                fair := false
                cls
                Draw.FillBox (0, 0, maxx, maxy, 38)
                Font.Draw ("You Where Healed! ", 200, 350, fffffsize, white)
                delay (2000)
                cls
            end if
        end if
        exit when HP <= 0 and fair = false or ehp <= 0
    end loop
    if HP <= 0 then
        GameOver
    else

        Draw.FillBox (0, 0, maxx, maxy, green)
        Draw.FillBox (0, maxy, maxx, 320, white)


        Font.Draw ("You Killed The Yeti! ", 130, 350, fffffsize, black)
        Font.Draw ("EXP + 20", 473, 170, ffsize, black)

    end if

    EXP += 20
    delay (2000)
    if lvl = 1 then
        if EXP >= 30 then
            EXP -= 30
            lvl += 1
            dmg += 2
            HPmax += 20
            HP := HPmax
            Draw.FillBox (0, 0, maxx, maxy, yellow)
            Draw.FillBox (0, maxy, maxx, 320, white)
            Font.Draw ("Level UP! ", 190, 350, fffffsize, black)
            Font.Draw ("Damage + 2", 50, 280, fsize, black)
            Font.Draw ("HP + 20", 50, 240, fsize, black)

            delay (2000)
        end if
    else
        if EXP >= 80 then
            EXP -= 80
            lvl += 1
            dmg += 2
            HPmax += 20
            HP := HPmax
            Draw.FillBox (0, 0, maxx, maxy, yellow)
            Draw.FillBox (0, maxy, maxx, 320, white)
            Font.Draw ("Level UP! ", 190, 350, fffffsize, black)
            Font.Draw ("Damage + 2", 50, 280, fsize, black)
            Font.Draw ("HP + 20", 50, 240, fsize, black)

            delay (2000)
        end if
    end if
    aftermount


end battleyeti
%---------------------------------------------------------------------------------
proc goaround
%ce qui ce passe si le hero contourne la montagne
    cls
    text
    ent := 0
    Font.Draw ("Even a brave hero can decide to go araound a mountain.", 1, 175, fffsize, black)
    Font.Draw ("The climb is long and trecherous after all. So The hero", 1, 160, fffsize, black)
    Font.Draw ("went around. However he came across a lake.", 1, 145, fffsize, black)
    Font.Draw ("This lake was a Kappa's terretory and so he attacked", 1, 130, fffsize, black)
    Font.Draw ("the HERO instantly. Press Battle to proceed..", 1, 115, fffsize, black)

    Font.Draw ("1. Battle!", 340, 150, ffsize, black)

    kappapic := Pic.FileNew ("kappa.jpg")
    Pic.Draw (kappapic, 220, 210, picCopy)

    loop
        Input.KeyDown (chars)
        if chars ('1') then


            Font.Draw ("1. Battle!", 340, 150, ffsize, white)


            ent := 1
        end if

        exit when chars (KEY_ENTER) and ent > 0

    end loop

    if ent = 1 then

        Draw.FillBox (0, 0, maxx, maxy, red)
        Font.Draw ("BATTLE! ", 240, 350, fffffsize, white)
        delay (200)
        Draw.FillBox (0, 0, maxx, maxy, grey)
        Font.Draw ("BATTLE! ", 240, 350, fffffsize, white)
        delay (200)
        Draw.FillBox (0, 0, maxx, maxy, black)
        Font.Draw ("BATTLE! ", 240, 350, fffffsize, white)
        delay (200)
        Draw.FillBox (0, 0, maxx, maxy, red)
        Font.Draw ("BATTLE! ", 240, 350, fffffsize, white)
        delay (200)
        Draw.FillBox (0, 0, maxx, maxy, grey)
        Font.Draw ("BATTLE! ", 240, 350, fffffsize, white)
        delay (200)
        Draw.FillBox (0, 0, maxx, maxy, black)
        Font.Draw ("BATTLE! ", 240, 350, fffffsize, white)
        delay (200)

        battlekappa
    end if

end goaround
%--------------------------------------------------------------------------------------
proc scale
%ce qui ce passe si le hero escalade la montagne
    cls
    text
    ent := 0

    Font.Draw ("-" + Invent (1), 473, 150, fffsize, black)
    Font.Draw ("-" + Invent (2), 473, 135, fffsize, black)

    Font.Draw ("The HERO brave as he is, decided to scale the mount.", 1, 175, fffsize, black)
    Font.Draw ("The climb was long and trecherous but finally he was", 1, 160, fffsize, black)
    Font.Draw ("at the top. However the mountain is the terretory of", 1, 145, fffsize, black)
    Font.Draw ("a yeti who instantly attacked the HERO. Press Battle", 1, 130, fffsize, black)
    Font.Draw ("to proceed.", 1, 115, fffsize, black)

    Font.Draw ("1. Battle!", 340, 150, ffsize, black)

    yetipic := Pic.FileNew ("yeti.jpg")
    Pic.Draw (yetipic, 193, 205, picCopy)

    loop
        Input.KeyDown (chars)
        if chars ('1') then


            Font.Draw ("1. Battle!", 340, 150, ffsize, white)


            ent := 1
        end if

        exit when chars (KEY_ENTER) and ent > 0

    end loop

    if ent = 1 then

        Draw.FillBox (0, 0, maxx, maxy, red)
        Font.Draw ("BATTLE! ", 240, 350, fffffsize, white)
        delay (200)
        Draw.FillBox (0, 0, maxx, maxy, grey)
        Font.Draw ("BATTLE! ", 240, 350, fffffsize, white)
        delay (200)
        Draw.FillBox (0, 0, maxx, maxy, black)
        Font.Draw ("BATTLE! ", 240, 350, fffffsize, white)
        delay (200)
        Draw.FillBox (0, 0, maxx, maxy, red)
        Font.Draw ("BATTLE! ", 240, 350, fffffsize, white)
        delay (200)
        Draw.FillBox (0, 0, maxx, maxy, grey)
        Font.Draw ("BATTLE! ", 240, 350, fffffsize, white)
        delay (200)
        Draw.FillBox (0, 0, maxx, maxy, black)
        Font.Draw ("BATTLE! ", 240, 350, fffffsize, white)
        delay (200)

        battleyeti
    end if


end scale
%------------------------------------------------------------------------------------------
proc beforemount
%la partie avant la montagne
    cls
    text
    ent := 0
    Font.Draw ("-" + Invent (1), 473, 150, fffsize, black)
    Font.Draw ("-" + Invent (2), 473, 135, fffsize, black)


    Font.Draw ("The HERO is now faced with a new challenge. ", 1, 175, fffsize, black)
    Font.Draw ("A mountain now stands in his way. ", 1, 160, fffsize, black)
    Font.Draw ("Should the HERO scale it or go around?", 1, 145, fffsize, black)


    Font.Draw ("1. Scale", 340, 150, ffsize, black)
    Font.Draw ("2. Go Around", 340, 110, ffsize, black)

    mountpic := Pic.FileNew ("mount.jpg")
    Pic.Draw (mountpic, 190, 220, picCopy)

    loop
        Input.KeyDown (chars)
        if chars ('1') then

            Font.Draw ("1. Scale", 340, 150, ffsize, white)
            Font.Draw ("2. Go Around", 340, 110, ffsize, black)

            ent := 1
        end if

        Input.KeyDown (chars)
        if chars ('2') then

            Font.Draw ("1. Scale", 340, 150, ffsize, black)
            Font.Draw ("2. Go Around", 340, 110, ffsize, white)

            ent := 2
        end if

        exit when chars (KEY_ENTER) and ent > 0

    end loop

    if ent = 1 then
        scale
    else
        goaround
    end if

end beforemount
%-----------------------------------------------------------------------------------------
proc fairy
%la partie la ou le hero rencontre la fee
    cls
    text
    ent := 0


    Font.Draw ("-" + Invent (1), 473, 150, fffsize, black)
    Font.Draw ("-" + Invent (2), 473, 135, fffsize, black)

    if Invent (2) = "Key" then
        Font.Draw ("The distress cry was from a fairy trapped in a cage.", 1, 175, fffsize, black)
        Font.Draw ("The cage seems to need a key to open. Thankfully the", 1, 160, fffsize, black)
        Font.Draw ("HERO already found it! The fairy was grateful and  ", 1, 145, fffsize, black)
        Font.Draw ("gave him her blessing, a one time revive. Press", 1, 130, fffsize, black)
        Font.Draw ("Proceed to continue", 1, 115, fffsize, black)
        fair := true

    else
        Font.Draw ("The distress cry was from a fairy trapped in a cage.", 1, 175, fffsize, black)
        Font.Draw ("The cage seems to need a key to open. Unfortunately", 1, 160, fffsize, black)
        Font.Draw ("the HERO does not have it. He apologizes to the fairy", 1, 145, fffsize, black)
        Font.Draw ("and moves on. Press Proceed to continue", 1, 115, fffsize, black)
    end if

    Font.Draw ("1. Proceed", 370, 150, ffsize, black)

    fairypic := Pic.FileNew ("fairy.jpg")
    Pic.Draw (fairypic, 225, 220, picCopy)

    loop
        Input.KeyDown (chars)
        if chars ('1') then


            Font.Draw ("1. Proceed", 370, 150, ffsize, white)


            ent := 1
        end if

        exit when chars (KEY_ENTER) and ent > 0

    end loop

    if ent = 1 then
        beforemount

    end if

end fairy
%-----------------------------------------------------------------------------------
proc choice1
% la partie ou le hero entends le cri de detresse
    cls
    text
    ent := 0
    Font.Draw ("-" + Invent (1), 473, 150, fffsize, black)
    Font.Draw ("-" + Invent (2), 473, 135, fffsize, black)

    Font.Draw ("After defeating the Ent, the HERO was walking in", 1, 175, fffsize, black)
    Font.Draw ("the woods when he heard a scream. The HERO must ", 1, 160, fffsize, black)
    Font.Draw ("now decide. Should he go and help or move on?", 1, 145, fffsize, black)

    Font.Draw ("1. Help", 340, 150, ffsize, black)
    Font.Draw ("2. Ignore", 340, 110, ffsize, black)

    forestpic := Pic.FileNew ("forest.jpg")
    Pic.Draw (forestpic, 200, 210, picCopy)

    loop
        Input.KeyDown (chars)
        if chars ('1') then

            Font.Draw ("1. Help", 340, 150, ffsize, white)
            Font.Draw ("2. Ignore", 340, 110, ffsize, black)

            ent := 1
        end if

        Input.KeyDown (chars)
        if chars ('2') then

            Font.Draw ("1. Help", 340, 150, ffsize, black)
            Font.Draw ("2. Ignore", 340, 110, ffsize, white)

            ent := 2
        end if

        exit when chars (KEY_ENTER) and ent > 0

    end loop

    if ent = 1 then
        fairy
    else

        beforemount
    end if


end choice1
%---------------------------------------------------------------------------------------
proc battleent
%le code pour la bataille avec le ent
    cls
    text

    Font.Draw ("-" + Invent (1), 473, 150, fffsize, black)
    Font.Draw ("-" + Invent (2), 473, 135, fffsize, black)

    ehp := 40
    edamage := 10
    espeed := 6
    ehpmax := 40
    ename := "Ent"

    Draw.FillBox (495, 351, 495 + ehp, 356, red)
    Draw.Box (495, 351, 495 + ehpmax, 356, black)


    sehpmax := intstr (ehpmax)
    ent := 0

    loop
        cls
        text

        Draw.FillBox (495, 351, 495 + ehp, 356, red)
        Draw.Box (495, 351, 495 + ehpmax, 356, black)



        sehp := intstr (ehp)
        Font.Draw ("Enemy Name : " + ename, 470, 366, fffsize, black)
        Font.Draw ("HP ", 470, 351, fffsize, black)
        Font.Draw ("Current HP " + sehp + "/" + sehpmax, 470, 336, fffsize, black)
        Font.Draw ("Lvl. : 10  ", 470, 321, fffsize, black)
        Font.Draw ("Enemy Damage : 10 ", 470, 306, fffsize, black)
        Font.Draw ("Enemy Speed : 6 ", 470, 291, fffsize, black)

        Font.Draw ("-" + Invent (1), 473, 150, fffsize, black)
        Font.Draw ("-" + Invent (2), 473, 135, fffsize, black)

        Font.Draw ("1. Attack", 370, 150, ffsize, black)
        Font.Draw ("2. Block", 370, 110, ffsize, black)
        Font.Draw ("Blocking cancels all damage and if successful you", 1, 175, fffsize, black)
        Font.Draw ("have a chance to counter attack. Attack will simply", 1, 160, fffsize, black)
        Font.Draw ("attack the enemy with a chance of missing.", 1, 145, fffsize, black)
        ent := 1

        entpic := Pic.FileNew ("ent.jpg")
        Pic.Draw (entpic, 200, 210, picCopy)


        loop
            Input.KeyDown (chars)
            if chars ('1') then


                Font.Draw ("1. Attack", 370, 150, ffsize, white)
                Font.Draw ("2. Block", 370, 110, ffsize, black)

                ent := 1
            end if

            Input.KeyDown (chars)
            if chars ('2') then


                Font.Draw ("1. Attack", 370, 150, ffsize, black)
                Font.Draw ("2. Block", 370, 110, ffsize, white)

                ent := 2
            end if

            exit when chars (KEY_ENTER) and ent > 0

        end loop

        if ent = 1 then
            Draw.FillBox (0, 0, 325, 186, grey)
            randint (PD, 1, speed)
            randint (ED, 1, espeed)

            if ED = espeed then
                HP -= 0
                Font.Draw ("The Enemy Missed!", 1, 160, fffsize, black)

            else
                HP -= edamage
                Font.Draw ("The Enemy Hit!", 1, 160, fffsize, black)

            end if

            if PD = speed then

                ehp -= 0
                Font.Draw ("You Missed The Enemy!", 1, 175, fffsize, black)

            else
                ehp -= dmg
                Font.Draw ("You Hit the Enemy!", 1, 175, fffsize, black)

            end if

        else
            randint (PB, 1, 2)
            Draw.FillBox (0, 0, 325, 186, grey)
            if PB = 2 then
                HP -= edamage
                Font.Draw ("Your Block Failed You Were Damaged!", 1, 175, fffsize, black)

            else
                randint (CAT, 1, 2)
                HP -= 0
                Font.Draw (" You Blocked!", 1, 175, fffsize, black)
                if CAT = 2 then
                    Font.Draw ("Your couter attack failed!", 1, 160, fffsize, black)

                else
                    Font.Draw ("Your couter attack succeded!", 1, 160, fffsize, black)
                    ehp -= dmg
                end if
            end if

        end if
        delay (2000)

        exit when HP <= 0 or ehp <= 0
    end loop
    if HP <= 0 then
        GameOver
    else

        Draw.FillBox (0, 0, maxx, maxy, green)
        Draw.FillBox (0, maxy, maxx, 320, white)


        Font.Draw ("You Killed The Ent! ", 130, 350, fffffsize, black)
        Font.Draw ("EXP + 20", 473, 170, ffsize, black)

    end if

    EXP += 20
    delay (2000)
    if lvl = 1 then
        if EXP >= 30 then
            EXP -= 30
            lvl += 1
            dmg += 2
            HPmax += 20
            HP := HPmax
            Draw.FillBox (0, 0, maxx, maxy, yellow)
            Draw.FillBox (0, maxy, maxx, 320, white)
            Font.Draw ("Level UP! ", 190, 350, fffffsize, black)
            Font.Draw ("Damage + 2", 50, 280, fsize, black)
            Font.Draw ("HP + 20", 50, 240, fsize, black)

            delay (2000)
        end if
    else
        if EXP >= 50 then
            EXP -= 50
            lvl += 1
            dmg += 2
            HPmax += 20
            HP := HPmax
            Draw.FillBox (0, 0, maxx, maxy, yellow)
            Draw.FillBox (0, maxy, maxx, 320, white)
            Font.Draw ("Level UP! ", 190, 350, fffffsize, black)
            Font.Draw ("Damage + 2", 50, 280, fsize, black)
            Font.Draw ("HP + 20", 50, 240, fsize, black)

            delay (2000)
        end if
    end if
    choice1

end battleent
%---------------------------------------------------------------------------------------
proc forestent
%la partie ou le hero rencontre le ent
    cls
    text
    ent := 0
    Font.Draw ("-" + Invent (1), 473, 150, fffsize, black)
    Font.Draw ("-" + Invent (2), 473, 135, fffsize, black)

    Font.Draw ("The HERO is now deep in the forest. Everything", 1, 175, fffsize, black)
    Font.Draw ("is calm. But then a tree unexpectedly attacked", 1, 160, fffsize, black)
    Font.Draw ("the HERO. It is an Ent. Select battle to start. ", 1, 145, fffsize, black)

    Font.Draw ("1. Battle!", 340, 150, ffsize, black)


    forestpic := Pic.FileNew ("forest.jpg")
    Pic.Draw (forestpic, 200, 210, picCopy)

    loop
        Input.KeyDown (chars)
        if chars ('1') then


            Font.Draw ("1. Battle!", 340, 150, ffsize, white)


            ent := 1
        end if

        exit when chars (KEY_ENTER) and ent > 0

    end loop

    if ent = 1 then

        Draw.FillBox (0, 0, maxx, maxy, red)
        Font.Draw ("BATTLE! ", 240, 350, fffffsize, white)
        delay (200)
        Draw.FillBox (0, 0, maxx, maxy, grey)
        Font.Draw ("BATTLE! ", 240, 350, fffffsize, white)
        delay (200)
        Draw.FillBox (0, 0, maxx, maxy, black)
        Font.Draw ("BATTLE! ", 240, 350, fffffsize, white)
        delay (200)
        Draw.FillBox (0, 0, maxx, maxy, red)
        Font.Draw ("BATTLE! ", 240, 350, fffffsize, white)
        delay (200)
        Draw.FillBox (0, 0, maxx, maxy, grey)
        Font.Draw ("BATTLE! ", 240, 350, fffffsize, white)
        delay (200)
        Draw.FillBox (0, 0, maxx, maxy, black)
        Font.Draw ("BATTLE! ", 240, 350, fffffsize, white)
        delay (200)

        battleent
    end if

end forestent
%---------------------------------------------------------------------------------------
proc camp1
%ce qui ce passe si le hero va au camp
    cls
    text
    ent := 0

    Font.Draw ("-" + Invent (1), 473, 150, fffsize, black)
    Font.Draw ("-" + Invent (2), 473, 135, fffsize, black)

    Font.Draw ("The HERO made his way to the campfire. When he", 1, 175, fffsize, black)
    Font.Draw ("got there, he found that it was a ranger camp.", 1, 160, fffsize, black)
    Font.Draw ("They offered to heal his wounds. The HERO then", 1, 145, fffsize, black)
    Font.Draw ("left and continued his journey. Select proceed", 1, 130, fffsize, black)
    Font.Draw ("to continue.", 1, 115, fffsize, black)
    HP := HPmax

    Font.Draw ("1. Proceed", 370, 150, ffsize, black)

    forestpic := Pic.FileNew ("forest.jpg")
    Pic.Draw (forestpic, 200, 210, picCopy)


    loop
        Input.KeyDown (chars)
        if chars ('1') then


            Font.Draw ("1. Proceed", 370, 150, ffsize, white)


            ent := 1
        end if

        exit when chars (KEY_ENTER) and ent > 0

    end loop

    if ent = 1 then
        forestent

    end if


end camp1
%---------------------------------------------------------------------------------------
proc forest1
    %la partie ou le hero fait un choix entre visiter un feu de camps ou l'ignorer
    cls
    text
    ent := 0

    Font.Draw ("-" + Invent (1), 473, 150, fffsize, black)
    if Invent (2) = "Key" then
        Font.Draw ("-" + Invent (2), 473, 135, fffsize, black)
    end if

    Font.Draw ("The HERO is now in a dark forest. There is little", 1, 175, fffsize, black)
    Font.Draw ("light from the sun. However a small campfire can", 1, 160, fffsize, black)
    Font.Draw ("be seen. Who knows who started it. Should the ", 1, 145, fffsize, black)
    Font.Draw ("HERO investigate or ignore it?", 1, 130, fffsize, black)

    Font.Draw ("1. Investigate", 340, 150, ffsize, black)
    Font.Draw ("2. Ignore", 340, 110, ffsize, black)

    forestpic := Pic.FileNew ("forest.jpg")
    Pic.Draw (forestpic, 200, 210, picCopy)

    loop
        Input.KeyDown (chars)
        if chars ('1') then

            Font.Draw ("1. Investigate", 340, 150, ffsize, white)
            Font.Draw ("2. Ignore", 340, 110, ffsize, black)

            ent := 1
        end if

        Input.KeyDown (chars)
        if chars ('2') then

            Font.Draw ("1. Investigate", 340, 150, ffsize, black)
            Font.Draw ("2. Ignore", 340, 110, ffsize, white)

            ent := 2
        end if

        exit when chars (KEY_ENTER) and ent > 0

    end loop

    if ent = 1 then
        camp1
    else

        forestent
    end if

end forest1
%------------------------------------------------------------------------------
proc leave
%la partie apres le caverne
    cls
    text
    ent := 0
    Font.Draw ("-" + Invent (1), 473, 150, fffsize, black)
    if Invent (2) = "Key" then
        Font.Draw ("-" + Invent (2), 473, 135, fffsize, black)
    end if


    Font.Draw ("The HERO left the bandit camp a weapon now in hand.", 1, 175, fffsize, black)
    Font.Draw ("He kept walking till he reached a place where", 1, 160, fffsize, black)
    Font.Draw ("two roads become one.", 1, 145, fffsize, black)
    Font.Draw ("Select Proceed to continue.", 1, 130, fffsize, black)
    Font.Draw ("1. Proceed", 370, 150, ffsize, black)

    mergepic := Pic.FileNew ("merge.jpg")
    Pic.Draw (mergepic, 215, 230, picCopy)

    loop
        Input.KeyDown (chars)
        if chars ('1') then


            Font.Draw ("1. Proceed", 370, 150, ffsize, white)


            ent := 1
        end if

        exit when chars (KEY_ENTER) and ent > 0

    end loop

    if ent = 1 then
        crossroads

    end if

end leave
%--------------------------------------------------------------------------------
proc battlechief
% la bataille avec le chef
    cls
    text
    ent := 0

    Font.Draw ("-" + Invent (1), 473, 150, fffsize, black)
    if Invent (2) = "Key" then
        Font.Draw ("-" + Invent (2), 473, 135, fffsize, black)
    end if


    ehp := 40
    edamage := 10
    espeed := 20
    ehpmax := 40
    ename := "Bandit Chief"

    Draw.FillBox (495, 351, 495 + ehp, 356, red)
    Draw.Box (495, 351, 495 + ehpmax, 356, black)



    sehpmax := intstr (ehpmax)
    ent := 0

    loop
        cls
        text

        Draw.FillBox (495, 351, 495 + ehp, 356, red)
        Draw.Box (495, 351, 495 + ehpmax, 356, black)

        chiefpic := Pic.FileNew ("chief.jpg")
        Pic.Draw (chiefpic, 210, 190, picCopy)


        sehp := intstr (ehp)
        Font.Draw ("Enemy Name : " + ename, 470, 366, fffsize, black)
        Font.Draw ("HP ", 470, 351, fffsize, black)
        Font.Draw ("Current HP " + sehp + "/" + sehpmax, 470, 336, fffsize, black)
        Font.Draw ("Lvl. : 10  ", 470, 321, fffsize, black)
        Font.Draw ("Enemy Damage : 10 ", 470, 306, fffsize, black)
        Font.Draw ("Enemy Speed : 20 ", 470, 291, fffsize, black)

        Font.Draw ("-" + Invent (1), 473, 150, fffsize, black)
        Font.Draw ("-" + Invent (2), 473, 135, fffsize, black)

        Font.Draw ("1. Attack", 370, 150, ffsize, black)
        Font.Draw ("2. Block", 370, 110, ffsize, black)
        Font.Draw ("Blocking cancels all damage and if successful you", 1, 175, fffsize, black)
        Font.Draw ("have a chance to counter attack. Attack will simply", 1, 160, fffsize, black)
        Font.Draw ("attack the enemy with a chance of missing.", 1, 145, fffsize, black)
        ent := 1
        loop
            Input.KeyDown (chars)
            if chars ('1') then


                Font.Draw ("1. Attack", 370, 150, ffsize, white)
                Font.Draw ("2. Block", 370, 110, ffsize, black)

                ent := 1
            end if

            Input.KeyDown (chars)
            if chars ('2') then


                Font.Draw ("1. Attack", 370, 150, ffsize, black)
                Font.Draw ("2. Block", 370, 110, ffsize, white)

                ent := 2
            end if

            exit when chars (KEY_ENTER) and ent > 0

        end loop

        if ent = 1 then
            Draw.FillBox (0, 0, 325, 186, grey)
            randint (PD, 1, speed)
            randint (ED, 1, espeed)

            if ED = espeed then
                HP -= 0
                Font.Draw ("The Enemy Missed!", 1, 160, fffsize, black)

            else
                HP -= edamage
                Font.Draw ("The Enemy Hit!", 1, 160, fffsize, black)

            end if

            if PD = speed then

                ehp -= 0
                Font.Draw ("You Missed The Enemy!", 1, 175, fffsize, black)

            else
                ehp -= dmg
                Font.Draw ("You Hit the Enemy!", 1, 175, fffsize, black)

            end if

        else
            randint (PB, 1, 2)
            Draw.FillBox (0, 0, 325, 186, grey)
            if PB = 2 then
                HP -= edamage
                Font.Draw ("Your Block Failed You Were Damaged!", 1, 175, fffsize, black)

            else
                randint (CAT, 1, 2)
                HP -= 0
                Font.Draw (" You Blocked!", 1, 175, fffsize, black)
                if CAT = 2 then
                    Font.Draw ("Your couter attack failed!", 1, 160, fffsize, black)

                else
                    Font.Draw ("Your couter attack succeded!", 1, 160, fffsize, black)
                    ehp -= dmg
                end if
            end if

        end if
        delay (2000)

        exit when HP <= 0 or ehp <= 0
    end loop
    if HP <= 0 then
        GameOver
    else
        Draw.FillBox (0, 0, maxx, maxy, green)
        Draw.FillBox (0, maxy, maxx, 320, white)

        if wep = true then
            Font.Draw ("You Killed The Bandit Chief! ", 130, 350, fffffsize, black)
            Font.Draw ("EXP + 20", 473, 170, ffsize, black)



        else
            Font.Draw ("You Killed The Bandit Chief! ", 130, 350, fffffsize, black)
            Font.Draw ("EXP + 20", 473, 170, ffsize, black)
            Font.Draw ("You regained your weapon!", 400, 130, ffsize, black)
            weapon2 := weapon
            Invent (1) := weapon

            if weapon2 = "Bow" then
                speed := 4
                dmg := 8

            elsif weapon2 = "Sword" then
                speed := 8
                dmg := 5

            elsif weapon2 = "Spear" then
                speed := 6
                dmg := 7

            else
                speed := 1000
                dmg := 1000

            end if

        end if
        EXP += 20
        delay (2000)
        if lvl = 1 then
            if EXP >= 30 then
                EXP -= 30
                lvl += 1
                dmg += 2
                HPmax += 20
                HP := HPmax
                Draw.FillBox (0, 0, maxx, maxy, yellow)
                Draw.FillBox (0, maxy, maxx, 320, white)
                Font.Draw ("Level UP! ", 190, 350, fffffsize, black)
                Font.Draw ("Damage + 2", 50, 280, fsize, black)
                Font.Draw ("HP + 20", 50, 240, fsize, black)

                delay (2000)
            end if
        else
            if EXP >= 50 then
                EXP -= 50
                lvl += 1
                dmg += 2
                HPmax += 20
                HP := HPmax
                Draw.FillBox (0, 0, maxx, maxy, yellow)
                Draw.FillBox (0, maxy, maxx, 320, white)
                Font.Draw ("Level UP! ", 190, 350, fffffsize, black)
                Font.Draw ("Damage + 2", 50, 280, fsize, black)
                Font.Draw ("HP + 20", 50, 240, fsize, black)

                delay (2000)
            end if
        end if
    end if
    leave

end battlechief
%--------------------------------------------------------------------------------
proc centertent1
% dans la trente du millieux
    cls
    text
    ent := 0
    Font.Draw ("-" + Invent (1), 473, 150, fffsize, black)
    if Invent (2) = "Key" then
        Font.Draw ("-" + Invent (2), 473, 135, fffsize, black)
    end if


    if Invent (2) = "Key" then

        Font.Draw ("The HERO decided to investigate the center tent. ", 1, 175, fffsize, black)
        Font.Draw ("Inside he finds a chest, its locked. Thankfully", 1, 160, fffsize, black)
        Font.Draw ("He found the key earlier. Inside the chest is ", 1, 145, fffsize, black)
        Font.Draw ("a new weapon a warhammer. The HERO was leaving ", 1, 130, fffsize, black)
        Font.Draw ("the tent when the bandit chief appeared. ", 1, 115, fffsize, black)
        Font.Draw ("Press Battle to fight. ", 1, 100, fffsize, black)

        weapon := "Warhammer"
        dmg := (10 + (((lvl - 1) * 2)))
        Invent (1) := weapon
        speed := 8
        weapon2 := weapon
        wep := true

    else

        Font.Draw ("The HERO decided to investigate the center tent. ", 1, 175, fffsize, black)
        Font.Draw ("Inside he finds a chest, its locked. Unfortunately", 1, 160, fffsize, black)
        Font.Draw ("He has no key. ", 1, 145, fffsize, black)
        Font.Draw ("The HERO was leaving the tent when the bandit.", 1, 130, fffsize, black)
        Font.Draw ("chief appeared. Press Battle to fight. ", 1, 115, fffsize, black)

    end if


    Font.Draw ("1. Battle!", 340, 150, ffsize, black)

    tent1pic := Pic.FileNew ("tent1.jpg")
    Pic.Draw (tent1pic, 210, 210, picCopy)

    loop
        Input.KeyDown (chars)
        if chars ('1') then


            Font.Draw ("1. Battle!", 340, 150, ffsize, white)


            ent := 1
        end if

        exit when chars (KEY_ENTER) and ent > 0

    end loop

    if ent = 1 then




        Draw.FillBox (0, 0, maxx, maxy, red)
        Font.Draw ("BATTLE! ", 240, 350, fffffsize, white)
        delay (200)
        Draw.FillBox (0, 0, maxx, maxy, grey)
        Font.Draw ("BATTLE! ", 240, 350, fffffsize, white)
        delay (200)
        Draw.FillBox (0, 0, maxx, maxy, black)
        Font.Draw ("BATTLE! ", 240, 350, fffffsize, white)
        delay (200)
        Draw.FillBox (0, 0, maxx, maxy, red)
        Font.Draw ("BATTLE! ", 240, 350, fffffsize, white)
        delay (200)
        Draw.FillBox (0, 0, maxx, maxy, grey)
        Font.Draw ("BATTLE! ", 240, 350, fffffsize, white)
        delay (200)
        Draw.FillBox (0, 0, maxx, maxy, black)
        Font.Draw ("BATTLE! ", 240, 350, fffffsize, white)
        delay (200)

        battlechief

    end if

end centertent1
%----------------------------------------------------------------------------------
proc pickagain
%la partie apres la tente du cote
    cls
    text
    ent := 0
    wep := true
    Font.Draw ("-" + Invent (1), 473, 150, fffsize, black)
    if Invent (2) = "Key" then
        Font.Draw ("-" + Invent (2), 473, 135, fffsize, black)
    end if

    Font.Draw ("The HERO now has the choice to investigate further ", 1, 175, fffsize, black)
    Font.Draw ("or leave. Pick one of the options. ", 1, 160, fffsize, black)

    Font.Draw ("1. Investigate", 340, 150, ffsize, black)
    Font.Draw ("2. Leave", 340, 110, ffsize, black)
    ent := 1

    tent1pic := Pic.FileNew ("tent1.jpg")
    Pic.Draw (tent1pic, 210, 210, picCopy)

    loop
        Input.KeyDown (chars)
        if chars ('1') then

            Font.Draw ("1. Investigate", 340, 150, ffsize, white)
            Font.Draw ("2. Leave", 340, 110, ffsize, black)

            ent := 1
        end if

        Input.KeyDown (chars)
        if chars ('2') then

            Font.Draw ("1. Investigate", 340, 150, ffsize, black)
            Font.Draw ("2. Leave", 340, 110, ffsize, white)

            ent := 2
        end if

        exit when chars (KEY_ENTER) and ent > 0

    end loop

    if ent = 1 then
        centertent1
    else

        leave
    end if

end pickagain
%------------------------------------------------------------------------------
proc battlebandit2
% la bataille avec le 2e bandit
    cls
    text
    ent := 0

    Font.Draw ("-" + Invent (1), 473, 150, fffsize, black)
    if Invent (2) = "Key" then
        Font.Draw ("-" + Invent (2), 473, 135, fffsize, black)
    end if


    ehp := 10
    edamage := 5
    espeed := 20
    ehpmax := 10
    ename := "Bandit2"

    Draw.FillBox (495, 351, 495 + ehp, 356, red)
    Draw.Box (495, 351, 495 + ehpmax, 356, black)



    sehpmax := intstr (ehpmax)
    ent := 0

    loop
        cls
        text

        Draw.FillBox (495, 351, 495 + ehp, 356, red)
        Draw.Box (495, 351, 495 + ehpmax, 356, black)


        bandit2pic := Pic.FileNew ("bandit2.jpg")
        Pic.Draw (bandit2pic, 230, 192, picCopy)


        sehp := intstr (ehp)
        Font.Draw ("Enemy Name : " + ename, 470, 366, fffsize, black)
        Font.Draw ("HP ", 470, 351, fffsize, black)
        Font.Draw ("Current HP " + sehp + "/" + sehpmax, 470, 336, fffsize, black)
        Font.Draw ("Lvl. : 10  ", 470, 321, fffsize, black)
        Font.Draw ("Enemy Damage : 5 ", 470, 306, fffsize, black)
        Font.Draw ("Enemy Speed : 20 ", 470, 291, fffsize, black)

        Font.Draw ("-" + Invent (1), 473, 150, fffsize, black)
        Font.Draw ("-" + Invent (2), 473, 135, fffsize, black)

        Font.Draw ("1. Attack", 370, 150, ffsize, black)
        Font.Draw ("2. Block", 370, 110, ffsize, black)
        Font.Draw ("Blocking cancels all damage and if successful you", 1, 175, fffsize, black)
        Font.Draw ("have a chance to counter attack. Attack will simply", 1, 160, fffsize, black)
        Font.Draw ("attack the enemy with a chance of missing.", 1, 145, fffsize, black)
        ent := 1
        loop
            Input.KeyDown (chars)
            if chars ('1') then


                Font.Draw ("1. Attack", 370, 150, ffsize, white)
                Font.Draw ("2. Block", 370, 110, ffsize, black)

                ent := 1
            end if

            Input.KeyDown (chars)
            if chars ('2') then


                Font.Draw ("1. Attack", 370, 150, ffsize, black)
                Font.Draw ("2. Block", 370, 110, ffsize, white)

                ent := 2
            end if

            exit when chars (KEY_ENTER) and ent > 0

        end loop

        if ent = 1 then
            Draw.FillBox (0, 0, 325, 186, grey)
            randint (PD, 1, speed)
            randint (ED, 1, espeed)

            if ED = espeed then
                HP -= 0
                Font.Draw ("The Enemy Missed!", 1, 160, fffsize, black)

            else
                HP -= edamage
                Font.Draw ("The Enemy Hit!", 1, 160, fffsize, black)

            end if

            if PD = speed then

                ehp -= 0
                Font.Draw ("You Missed The Enemy!", 1, 175, fffsize, black)

            else
                ehp -= dmg
                Font.Draw ("You Hit the Enemy!", 1, 175, fffsize, black)

            end if

        else
            randint (PB, 1, 2)
            Draw.FillBox (0, 0, 325, 186, grey)
            if PB = 2 then
                HP -= edamage
                Font.Draw ("Your Block Failed You Were Damaged!", 1, 175, fffsize, black)

            else
                randint (CAT, 1, 2)
                HP -= 0
                Font.Draw (" You Blocked!", 1, 175, fffsize, black)
                if CAT = 2 then
                    Font.Draw ("Your couter attack failed!", 1, 160, fffsize, black)

                else
                    Font.Draw ("Your couter attack succeded!", 1, 160, fffsize, black)
                    ehp -= dmg
                end if
            end if

        end if
        delay (2000)

        exit when HP <= 0 or ehp <= 0
    end loop
    if HP <= 0 then
        GameOver
    else
        Draw.FillBox (0, 0, maxx, maxy, green)
        Draw.FillBox (0, maxy, maxx, 320, white)

        Font.Draw ("You Killed The Bandit! ", 170, 350, fffffsize, black)
        Font.Draw ("EXP + 1", 473, 170, ffsize, black)
        EXP += 1
        delay (2000)
        if EXP >= 50 then
            EXP -= 50
            lvl += 1
            dmg += 2
            HPmax += 20
            HP := HPmax
            Draw.FillBox (0, 0, maxx, maxy, yellow)
            Draw.FillBox (0, maxy, maxx, 320, white)
            Font.Draw ("Level UP! ", 190, 350, fffffsize, black)
            Font.Draw ("Damage + 2", 50, 280, fsize, black)
            Font.Draw ("HP + 20", 50, 240, fsize, black)

            delay (2000)
        end if

    end if
    pickagain


end battlebandit2
%------------------------------------------------------------------------------
proc battlebandit1
%la bataille avec le bandit 1
    cls
    text
    ent := 0

    Font.Draw ("-" + Invent (1), 473, 150, fffsize, black)
    if Invent (2) = "Key" then
        Font.Draw ("-" + Invent (2), 473, 135, fffsize, black)
    end if


    ehp := 10
    edamage := 5
    espeed := 20
    ehpmax := 10
    ename := "Bandit1"

    Draw.FillBox (495, 351, 495 + ehp, 356, red)
    Draw.Box (495, 351, 495 + ehpmax, 356, black)



    sehpmax := intstr (ehpmax)
    ent := 0

    loop
        cls
        text

        Draw.FillBox (495, 351, 495 + ehp, 356, red)
        Draw.Box (495, 351, 495 + ehpmax, 356, black)


        bandit1pic := Pic.FileNew ("bandit1.jpg")
        Pic.Draw (bandit1pic, 210, 190, picCopy)

        sehp := intstr (ehp)
        Font.Draw ("Enemy Name : " + ename, 470, 366, fffsize, black)
        Font.Draw ("HP ", 470, 351, fffsize, black)
        Font.Draw ("Current HP " + sehp + "/" + sehpmax, 470, 336, fffsize, black)
        Font.Draw ("Lvl. : 10  ", 470, 321, fffsize, black)
        Font.Draw ("Enemy Damage : 5 ", 470, 306, fffsize, black)
        Font.Draw ("Enemy Speed : 20 ", 470, 291, fffsize, black)

        Font.Draw ("-" + Invent (1), 473, 150, fffsize, black)
        Font.Draw ("-" + Invent (2), 473, 135, fffsize, black)

        Font.Draw ("1. Attack", 370, 150, ffsize, black)
        Font.Draw ("2. Block", 370, 110, ffsize, black)
        Font.Draw ("Blocking cancels all damage and if successful you", 1, 175, fffsize, black)
        Font.Draw ("have a chance to counter attack. Attack will simply", 1, 160, fffsize, black)
        Font.Draw ("attack the enemy with a chance of missing.", 1, 145, fffsize, black)
        ent := 1
        loop
            Input.KeyDown (chars)
            if chars ('1') then


                Font.Draw ("1. Attack", 370, 150, ffsize, white)
                Font.Draw ("2. Block", 370, 110, ffsize, black)

                ent := 1
            end if

            Input.KeyDown (chars)
            if chars ('2') then


                Font.Draw ("1. Attack", 370, 150, ffsize, black)
                Font.Draw ("2. Block", 370, 110, ffsize, white)

                ent := 2
            end if

            exit when chars (KEY_ENTER) and ent > 0

        end loop

        if ent = 1 then
            Draw.FillBox (0, 0, 325, 186, grey)
            randint (PD, 1, speed)
            randint (ED, 1, espeed)

            if ED = espeed then
                HP -= 0
                Font.Draw ("The Enemy Missed!", 1, 160, fffsize, black)

            else
                HP -= edamage
                Font.Draw ("The Enemy Hit!", 1, 160, fffsize, black)

            end if

            if PD = speed then

                ehp -= 0
                Font.Draw ("You Missed The Enemy!", 1, 175, fffsize, black)

            else
                ehp -= dmg
                Font.Draw ("You Hit the Enemy!", 1, 175, fffsize, black)

            end if

        else
            randint (PB, 1, 2)
            Draw.FillBox (0, 0, 325, 186, grey)
            if PB = 2 then
                HP -= edamage
                Font.Draw ("Your Block Failed You Were Damaged!", 1, 175, fffsize, black)

            else
                randint (CAT, 1, 2)
                HP -= 0
                Font.Draw (" You Blocked!", 1, 175, fffsize, black)
                if CAT = 2 then
                    Font.Draw ("Your couter attack failed!", 1, 160, fffsize, black)

                else
                    Font.Draw ("Your couter attack succeded!", 1, 160, fffsize, black)
                    ehp -= dmg
                end if
            end if

        end if
        delay (2000)

        exit when HP <= 0 or ehp <= 0
    end loop
    if HP <= 0 then
        GameOver
    else
        Draw.FillBox (0, 0, maxx, maxy, green)
        Draw.FillBox (0, maxy, maxx, 320, white)

        Font.Draw ("You Killed The Bandit! ", 170, 350, fffffsize, black)
        Font.Draw ("EXP + 1", 473, 170, ffsize, black)
        EXP += 1
        delay (2000)
        if EXP >= 50 then
            EXP -= 50
            lvl += 1
            dmg += 2
            HPmax += 20
            HP := HPmax
            Draw.FillBox (0, 0, maxx, maxy, yellow)
            Draw.FillBox (0, maxy, maxx, 320, white)
            Font.Draw ("Level UP! ", 190, 350, fffffsize, black)
            Font.Draw ("Damage + 2", 50, 280, fsize, black)
            Font.Draw ("HP + 20", 50, 240, fsize, black)

            delay (2000)
        end if

    end if
    Draw.FillBox (0, 0, maxx, maxy, red)
    Font.Draw ("BATTLE! ", 240, 350, fffffsize, white)
    delay (200)
    Draw.FillBox (0, 0, maxx, maxy, grey)
    Font.Draw ("BATTLE! ", 240, 350, fffffsize, white)
    delay (200)
    Draw.FillBox (0, 0, maxx, maxy, black)
    Font.Draw ("BATTLE! ", 240, 350, fffffsize, white)
    delay (200)
    Draw.FillBox (0, 0, maxx, maxy, red)
    Font.Draw ("BATTLE! ", 240, 350, fffffsize, white)
    delay (200)
    Draw.FillBox (0, 0, maxx, maxy, grey)
    Font.Draw ("BATTLE! ", 240, 350, fffffsize, white)
    delay (200)
    Draw.FillBox (0, 0, maxx, maxy, black)
    Font.Draw ("BATTLE! ", 240, 350, fffffsize, white)
    delay (200)

    battlebandit2



end battlebandit1
%------------------------------------------------------------------------------

proc sidetent
%la partie dans la tente du cote
    cls
    ent := 0
    weapon2 := weapon
    Invent (1) := weapon
    Font.Draw ("-" + Invent (1), 473, 150, fffsize, black)
    if Invent (2) = "Key" then
        Font.Draw ("-" + Invent (2), 473, 135, fffsize, black)
    end if

    if weapon2 = "Bow" then
        speed := 4
        dmg := 8
    elsif weapon2 = "Sword" then
        speed := 8
        dmg := 5
    elsif weapon2 = "Spear" then
        speed := 6
        dmg := 7
    else
        speed := 1000
        dmg := 1000
    end if
    text

    Font.Draw ("The HERO decided to investigate the side tent.", 1, 175, fffsize, black)
    Font.Draw ("Inside that tent, the HERO found his weapons. But", 1, 160, fffsize, black)
    Font.Draw ("as the hero left the tent 2 bandits attacked him.", 1, 145, fffsize, black)
    Font.Draw ("Click Battle to proceed.", 1, 130, fffsize, black)
    Font.Draw ("1. Battle!", 340, 150, ffsize, black)


    tent2pic := Pic.FileNew ("tent2.jpg")
    Pic.Draw (tent2pic, 210, 200, picCopy)

    loop
        Input.KeyDown (chars)
        if chars ('1') then


            Font.Draw ("1. Battle!", 340, 150, ffsize, white)


            ent := 1
        end if

        exit when chars (KEY_ENTER) and ent > 0

    end loop

    if ent = 1 then


    end if

    Draw.FillBox (0, 0, maxx, maxy, red)
    Font.Draw ("BATTLE! ", 240, 350, fffffsize, white)
    delay (200)
    Draw.FillBox (0, 0, maxx, maxy, grey)
    Font.Draw ("BATTLE! ", 240, 350, fffffsize, white)
    delay (200)
    Draw.FillBox (0, 0, maxx, maxy, black)
    Font.Draw ("BATTLE! ", 240, 350, fffffsize, white)
    delay (200)
    Draw.FillBox (0, 0, maxx, maxy, red)
    Font.Draw ("BATTLE! ", 240, 350, fffffsize, white)
    delay (200)
    Draw.FillBox (0, 0, maxx, maxy, grey)
    Font.Draw ("BATTLE! ", 240, 350, fffffsize, white)
    delay (200)
    Draw.FillBox (0, 0, maxx, maxy, black)
    Font.Draw ("BATTLE! ", 240, 350, fffffsize, white)
    delay (200)

    battlebandit1

end sidetent
%--------------------------------------------------------------------------------------
proc runbandits
%la partie si tu te sauve des bandits
    cls
    ent := 0
    weapon2 := "Wood Stick"
    Invent (1) := weapon2
    dmg := 6
    speed := 8
    text
    Font.Draw ("-" + Invent (1), 473, 150, fffsize, black)
    if Invent (2) = "Key" then
        Font.Draw ("-" + Invent (2), 473, 135, fffsize, black)
    end if

    pathpic := Pic.FileNew ("path.jpg")
    Pic.Draw (pathpic, 186, 200, picCopy)

    Font.Draw ("The HERO ran from the bandits. However, the bandits", 1, 175, fffsize, black)
    Font.Draw ("ran him down within seconds. They beat him and took", 1, 160, fffsize, black)
    Font.Draw ("all of his weapons. But the HERO wasted no time he", 1, 145, fffsize, black)
    Font.Draw ("took a stick to use as a weapon and followed them", 1, 130, fffsize, black)
    Font.Draw ("to their camp. What tent should he investigate the", 1, 115, fffsize, black)
    Font.Draw ("center one or the one on the side? ", 1, 100, fffsize, black)
    Font.Draw ("1. Center Tent", 340, 150, ffsize, black)
    Font.Draw ("2. Side Tent", 340, 110, ffsize, black)

    loop
        Input.KeyDown (chars)
        if chars ('1') then

            Font.Draw ("1. Center Tent", 340, 150, ffsize, white)
            Font.Draw ("2. Side Tent", 340, 110, ffsize, black)

            ent := 1
        end if

        Input.KeyDown (chars)
        if chars ('2') then

            Font.Draw ("1. Center Tent!", 340, 150, ffsize, black)
            Font.Draw ("2. Side Tent!", 340, 110, ffsize, white)

            ent := 2
        end if

        exit when chars (KEY_ENTER) and ent > 0

    end loop

    if ent = 1 then
        centertent1
    else

        sidetent

    end if

end runbandits
%--------------------------------------------------------------------------------------
proc diebandits
%si tu negocie avec les bandits
    cls
    text
    ent := 0
    Font.Draw ("-" + Invent (1), 473, 150, fffsize, black)
    if Invent (2) = "Key" then
        Font.Draw ("-" + Invent (2), 473, 135, fffsize, black)
    end if

    Font.Draw ("The HERO tried to negociate with the bandits. ", 1, 175, fffsize, black)
    Font.Draw ("However, when do bandits ever listen to reason...", 1, 160, fffsize, black)

    delay (4000)
    GameOver
end diebandits

%--------------------------------------------------------------------------------------
proc path1
%le chemin si tu entre pas dans la caverne

    cls
    text
    ent := 0

    Font.Draw ("-" + Invent (1), 473, 150, fffsize, black)
    if Invent (2) = "Key" then
        Font.Draw ("-" + Invent (2), 473, 135, fffsize, black)
    end if

    pathpic := Pic.FileNew ("path.jpg")
    Pic.Draw (pathpic, 186, 200, picCopy)

    Font.Draw ("The path the HERO is on seems to go on for miles ", 1, 175, fffsize, black)
    Font.Draw ("and miles into the distance. The HERO began the", 1, 160, fffsize, black)
    Font.Draw ("long march towards unknown. He walked for hours", 1, 145, fffsize, black)
    Font.Draw ("on that long path when he was attacked by a group", 1, 130, fffsize, black)
    Font.Draw ("of bandits. The HERO quickly concludes that there", 1, 115, fffsize, black)
    Font.Draw ("are too many to fight. Run or Negotiate?", 1, 100, fffsize, black)

    Font.Draw ("1. Run!", 340, 150, ffsize, black)
    Font.Draw ("2. Negociate!", 340, 110, ffsize, black)

    loop
        Input.KeyDown (chars)
        if chars ('1') then

            Font.Draw ("1. Run!", 340, 150, ffsize, white)
            Font.Draw ("2. Negociate!", 340, 110, ffsize, black)

            ent := 1
        end if

        Input.KeyDown (chars)
        if chars ('2') then

            Font.Draw ("1. Run!", 340, 150, ffsize, black)
            Font.Draw ("2. Negociate!", 340, 110, ffsize, white)

            ent := 2
        end if

        exit when chars (KEY_ENTER) and ent > 0

    end loop

    if ent = 1 then
        runbandits
    else

        diebandits

    end if


end path1
%---------------------------------------------------------------------------------------
proc exitcavemid
%la nouvelle sortie a la caverne
    cls
    text
    ent := 0
    Font.Draw ("-" + Invent (1), 473, 150, fffsize, black)
    Font.Draw ("-" + Invent (2), 473, 135, fffsize, black)

    Font.Draw ("After defeating the ogre, the HERO follows the", 1, 175, fffsize, black)
    Font.Draw ("middle path until he finds a way out. He was now at", 1, 160, fffsize, black)
    Font.Draw ("a new exit with a newly found key. ", 1, 145, fffsize, black)
    Font.Draw ("Select proceed to continue .", 1, 130, fffsize, black)

    Font.Draw ("1. Proceed", 370, 150, ffsize, black)

    cavepic := Pic.FileNew ("cave.jpg")
    Pic.Draw (cavepic, 220, 250, picCopy)

    loop
        Input.KeyDown (chars)
        if chars ('1') then


            Font.Draw ("1. Proceed", 370, 150, ffsize, white)


            ent := 1
        end if

        exit when chars (KEY_ENTER) and ent > 0

    end loop

    if ent = 1 then
        forest1

    end if
end exitcavemid
%---------------------------------------------------------------------------------------
proc leftcave
%la branche de gauche
    cls
    text
    ent := 0
    Font.Draw ("-" + Invent (1), 473, 150, fffsize, black)
    Font.Draw ("-" + Invent (2), 473, 135, fffsize, black)
    Font.Draw ("The HERO went left, the path was dark. There was no", 1, 175, fffsize, black)
    Font.Draw ("way for him to know a pit of spikes awaited him...", 1, 160, fffsize, black)



    delay (5000)
    GameOver
end leftcave
%------------------------------------------------------------------------------
proc runogre
%si tu te sauve de l'ogre
    cls
    text
    ent := 0
    Font.Draw ("-" + Invent (1), 473, 150, fffsize, black)
    Font.Draw ("-" + Invent (2), 473, 135, fffsize, black)

    Font.Draw ("The HERO ran from the ogre. Not surprising ", 1, 175, fffsize, black)
    Font.Draw ("considering how hard he is to defeat. The Hero now ", 1, 160, fffsize, black)
    Font.Draw ("picked the right path and exits the cave from where he ", 1, 145, fffsize, black)
    Font.Draw ("entered. Select proceed to continue.", 1, 130, fffsize, black)
    Font.Draw ("1. Proceed", 370, 150, ffsize, black)

    ogrepic := Pic.FileNew ("ogre.jpg")
    Pic.Draw (ogrepic, 220, 190, picCopy)


    loop
        Input.KeyDown (chars)
        if chars ('1') then


            Font.Draw ("1. Proceed", 370, 150, ffsize, white)


            ent := 1
        end if

        exit when chars (KEY_ENTER) and ent > 0

    end loop

    if ent = 1 then
        path1

    end if
end runogre
%--------------------------------------------------------------------------------
proc battleogre
%la bataille avec l'ogre
    cls
    text

    ehp := 50
    edamage := 13
    espeed := 4
    ehpmax := 50
    ename := "Ogre"

    Draw.FillBox (495, 351, 495 + ehp, 356, red)
    Draw.Box (495, 351, 495 + ehpmax, 356, black)



    sehpmax := intstr (ehpmax)
    ent := 0

    loop
        cls
        text

        Draw.FillBox (495, 351, 495 + ehp, 356, red)
        Draw.Box (495, 351, 495 + ehpmax, 356, black)


        ogrepic := Pic.FileNew ("ogre.jpg")
        Pic.Draw (ogrepic, 220, 190, picCopy)


        sehp := intstr (ehp)
        Font.Draw ("Enemy Name : " + ename, 470, 366, fffsize, black)
        Font.Draw ("HP ", 470, 351, fffsize, black)
        Font.Draw ("Current HP " + sehp + "/" + sehpmax, 470, 336, fffsize, black)
        Font.Draw ("Lvl. : 10  ", 470, 321, fffsize, black)
        Font.Draw ("Enemy Damage : 13 ", 470, 306, fffsize, black)
        Font.Draw ("Enemy Speed : 4 ", 470, 291, fffsize, black)

        Font.Draw ("-" + Invent (1), 473, 150, fffsize, black)
        Font.Draw ("-" + Invent (2), 473, 135, fffsize, black)

        Font.Draw ("1. Attack", 370, 150, ffsize, black)
        Font.Draw ("2. Block", 370, 110, ffsize, black)
        Font.Draw ("Blocking cancels all damage and if successful you", 1, 175, fffsize, black)
        Font.Draw ("have a chance to counter attack. Attack will simply", 1, 160, fffsize, black)
        Font.Draw ("attack the enemy with a chance of missing.", 1, 145, fffsize, black)
        ent := 1
        loop
            Input.KeyDown (chars)
            if chars ('1') then


                Font.Draw ("1. Attack", 370, 150, ffsize, white)
                Font.Draw ("2. Block", 370, 110, ffsize, black)

                ent := 1
            end if

            Input.KeyDown (chars)
            if chars ('2') then


                Font.Draw ("1. Attack", 370, 150, ffsize, black)
                Font.Draw ("2. Block", 370, 110, ffsize, white)

                ent := 2
            end if

            exit when chars (KEY_ENTER) and ent > 0

        end loop

        if ent = 1 then
            Draw.FillBox (0, 0, 325, 186, grey)
            randint (PD, 1, speed)
            randint (ED, 1, espeed)

            if ED = espeed then
                HP -= 0
                Font.Draw ("The Enemy Missed!", 1, 160, fffsize, black)

            else
                HP -= edamage
                Font.Draw ("The Enemy Hit!", 1, 160, fffsize, black)

            end if

            if PD = speed then

                ehp -= 0
                Font.Draw ("You Missed The Enemy!", 1, 175, fffsize, black)

            else
                ehp -= dmg
                Font.Draw ("You Hit the Enemy!", 1, 175, fffsize, black)

            end if

        else
            randint (PB, 1, 2)
            Draw.FillBox (0, 0, 325, 186, grey)
            if PB = 2 then
                HP -= edamage
                Font.Draw ("Your Block Failed You Were Damaged!", 1, 175, fffsize, black)

            else
                randint (CAT, 1, 2)
                HP -= 0
                Font.Draw (" You Blocked!", 1, 175, fffsize, black)
                if CAT = 2 then
                    Font.Draw ("Your couter attack failed!", 1, 160, fffsize, black)

                else
                    Font.Draw ("Your couter attack succeded!", 1, 160, fffsize, black)
                    ehp -= dmg
                end if
            end if

        end if
        delay (2000)

        exit when HP <= 0 or ehp <= 0
    end loop
    if HP <= 0 then
        GameOver
    else
        Draw.FillBox (0, 0, maxx, maxy, green)
        Draw.FillBox (0, maxy, maxx, 320, white)

        Font.Draw ("You Killed The Ogre! ", 170, 350, fffffsize, black)
        Font.Draw ("EXP + 30", 473, 170, ffsize, black)
        EXP += 30
        delay (2000)
        if EXP >= 50 then
            EXP -= 50
            lvl += 1
            dmg += 2
            HPmax += 20
            HP := HPmax
            Draw.FillBox (0, 0, maxx, maxy, yellow)
            Draw.FillBox (0, maxy, maxx, 320, white)
            Font.Draw ("Level UP! ", 190, 350, fffffsize, black)
            Font.Draw ("Damage + 2", 50, 280, fsize, black)
            Font.Draw ("HP + 20", 50, 240, fsize, black)

            delay (2000)
        end if

    end if

    exitcavemid
end battleogre
%---------------------------------------------------------------------------------------
proc middlecave
%la branche du millieux
    cls
    text

    ent := 0
    Font.Draw ("-" + Invent (1), 473, 150, fffsize, black)
    Font.Draw ("-" + Invent (2), 473, 135, fffsize, black)

    Font.Draw ("The HERO chose the middle path, but there lies a ", 1, 175, fffsize, black)
    Font.Draw ("formidable ogre. This is no normal foe, it is much ", 1, 160, fffsize, black)
    Font.Draw ("harder. Should he fight or run?", 1, 145, fffsize, black)

    Font.Draw ("1. Run!", 370, 150, ffsize, black)
    Font.Draw ("2. Fight!", 370, 110, ffsize, black)

    ogrepic := Pic.FileNew ("ogre.jpg")
    Pic.Draw (ogrepic, 220, 190, picCopy)


    loop
        Input.KeyDown (chars)
        if chars ('1') then

            Font.Draw ("1. Run!", 370, 150, ffsize, white)
            Font.Draw ("2. Fight!", 370, 110, ffsize, black)

            ent := 1
        end if

        Input.KeyDown (chars)
        if chars ('2') then

            Font.Draw ("1. Run!", 370, 150, ffsize, black)
            Font.Draw ("2. Fight!", 370, 110, ffsize, white)

            ent := 2
        end if

        exit when chars (KEY_ENTER) and ent > 0

    end loop

    if ent = 1 then
        runogre
    else
        Draw.FillBox (0, 0, maxx, maxy, red)
        Font.Draw ("BATTLE! ", 240, 350, fffffsize, white)
        delay (200)
        Draw.FillBox (0, 0, maxx, maxy, grey)
        Font.Draw ("BATTLE! ", 240, 350, fffffsize, white)
        delay (200)
        Draw.FillBox (0, 0, maxx, maxy, black)
        Font.Draw ("BATTLE! ", 240, 350, fffffsize, white)
        delay (200)
        Draw.FillBox (0, 0, maxx, maxy, red)
        Font.Draw ("BATTLE! ", 240, 350, fffffsize, white)
        delay (200)
        Draw.FillBox (0, 0, maxx, maxy, grey)
        Font.Draw ("BATTLE! ", 240, 350, fffffsize, white)
        delay (200)
        Draw.FillBox (0, 0, maxx, maxy, black)
        Font.Draw ("BATTLE! ", 240, 350, fffffsize, white)
        delay (200)

        battleogre
    end if

end middlecave
%---------------------------------------------------------------------------------------
proc rightcave
%la branche de droite de la caverne
    cls
    text

    ent := 0
    Font.Draw ("-" + Invent (1), 473, 150, fffsize, black)
    Font.Draw ("-" + Invent (2), 473, 135, fffsize, black)

    Font.Draw ("The HERO picked the path on the right. He", 1, 175, fffsize, black)
    Font.Draw ("walked on in the darkness untill he found", 1, 160, fffsize, black)
    Font.Draw ("the entrance from where he came.", 1, 145, fffsize, black)
    Font.Draw ("Select proceed to continue.", 1, 130, fffsize, black)

    Font.Draw ("1. Proceed", 370, 150, ffsize, black)

    cavepic := Pic.FileNew ("cave.jpg")
    Pic.Draw (cavepic, 220, 250, picCopy)

    loop
        Input.KeyDown (chars)
        if chars ('1') then


            Font.Draw ("1. Proceed", 370, 150, ffsize, white)


            ent := 1
        end if

        exit when chars (KEY_ENTER) and ent > 0

    end loop

    if ent = 1 then
        path1

    end if

end rightcave
%---------------------------------------------------------------------------------------
proc crosscave
%l'intersection des cavernes
    cls
    text

    ent := 0
    Font.Draw ("-" + Invent (1), 473, 150, fffsize, black)
    Invent (2) := "Key"

    Font.Draw ("After defeating the spider, the hero noticed", 1, 175, fffsize, black)
    Font.Draw ("a key on the ground and picked it up. Then he  ", 1, 160, fffsize, black)
    Font.Draw ("realised that 3 paths are open to him. But", 1, 145, fffsize, black)
    Font.Draw (" which one to enter? Left, right or middle? ", 1, 130, fffsize, black)
    Font.Draw ("-" + Invent (2), 473, 135, fffsize, black)

    Font.Draw ("1. Left", 370, 150, ffsize, black)
    Font.Draw ("2. Middle", 370, 110, ffsize, black)
    Font.Draw ("3. Right", 370, 70, ffsize, black)
    ent := 1


    crosspic := Pic.FileNew ("crosscave.jpg")
    Pic.Draw (crosspic, 185, 210, picCopy)

    loop
        Input.KeyDown (chars)
        if chars ('1') then

            Font.Draw ("1. Left", 370, 150, ffsize, white)
            Font.Draw ("2. Middle", 370, 110, ffsize, black)
            Font.Draw ("3. Right", 370, 70, ffsize, black)
            ent := 1
        end if

        Input.KeyDown (chars)
        if chars ('2') then

            Font.Draw ("1. Left", 370, 150, ffsize, black)
            Font.Draw ("2. Middle", 370, 110, ffsize, white)
            Font.Draw ("3. Right", 370, 70, ffsize, black)
            ent := 2
        end if

        Input.KeyDown (chars)
        if chars ('3') then

            Font.Draw ("1. Left", 370, 150, ffsize, black)
            Font.Draw ("2. Middle", 370, 110, ffsize, black)
            Font.Draw ("3. Right", 370, 70, ffsize, white)

            ent := 3
        end if


        Input.KeyDown (chars)
        if chars ('*') then


            ent := 4
        end if

        exit when chars (KEY_ENTER) and ent > 0

    end loop

    if ent = 1 then
        leftcave

    elsif ent = 2 then
        middlecave

    else
        rightcave

    end if
end crosscave
%---------------------------------------------------------------------------------------
proc runspider
% si tu te sauve de l'aregnee
    cls
    text
    ent := 0
    Font.Draw ("Wow who knew the HERO was such a wimp... dang", 1, 175, fffsize, black)
    Font.Draw ("Well the hero ran from the spider and out the ", 1, 160, fffsize, black)
    Font.Draw ("cave. He followed the path he was on before  ", 1, 145, fffsize, black)
    Font.Draw ("entering the cave. Select proceed to continue ", 1, 130, fffsize, black)
    Font.Draw ("1. Proceed", 370, 150, ffsize, black)
    Font.Draw ("-" + Invent (1), 473, 150, fffsize, black)


    spiderpic := Pic.FileNew ("spider.jpg")
    Pic.Draw (spiderpic, 190, 190, picCopy)

    loop
        Input.KeyDown (chars)
        if chars ('1') then


            Font.Draw ("1. Proceed", 370, 150, ffsize, white)


            ent := 1
        end if

        exit when chars (KEY_ENTER) and ent > 0

    end loop

    if ent = 1 then
        path1

    end if

end runspider
%----------------------------------------------------------------------------------
proc battlespider
%la bataille avec l'aregnee
    cls
    text

    ehp := 20
    edamage := 10
    espeed := 5
    ehpmax := 20
    ename := "Giant Spider"

    Draw.FillBox (495, 351, 495 + ehp, 356, red)
    Draw.Box (495, 351, 495 + ehpmax, 356, black)



    sehpmax := intstr (ehpmax)
    ent := 0

    loop
        cls
        text

        Draw.FillBox (495, 351, 495 + ehp, 356, red)
        Draw.Box (495, 351, 495 + ehpmax, 356, black)


        spiderpic := Pic.FileNew ("spider.jpg")
        Pic.Draw (spiderpic, 190, 190, picCopy)


        sehp := intstr (ehp)
        Font.Draw ("Enemy Name : " + ename, 470, 366, fffsize, black)
        Font.Draw ("HP ", 470, 351, fffsize, black)
        Font.Draw ("Current HP " + sehp + "/" + sehpmax, 470, 336, fffsize, black)
        Font.Draw ("Lvl. : 3  ", 470, 321, fffsize, black)
        Font.Draw ("Enemy Damage : 10 ", 470, 306, fffsize, black)
        Font.Draw ("Enemy Speed : 5 ", 470, 291, fffsize, black)

        Font.Draw ("-" + Invent (1), 473, 150, fffsize, black)

        Font.Draw ("1. Attack", 370, 150, ffsize, black)
        Font.Draw ("2. Block", 370, 110, ffsize, black)
        Font.Draw ("Blocking cancels all damage and if successful you", 1, 175, fffsize, black)
        Font.Draw ("have a chance to counter attack. Attack will simply", 1, 160, fffsize, black)
        Font.Draw ("attack the enemy with a chance of missing.", 1, 145, fffsize, black)
        ent := 1
        loop
            Input.KeyDown (chars)
            if chars ('1') then


                Font.Draw ("1. Attack", 370, 150, ffsize, white)
                Font.Draw ("2. Block", 370, 110, ffsize, black)

                ent := 1
            end if

            Input.KeyDown (chars)
            if chars ('2') then


                Font.Draw ("1. Attack", 370, 150, ffsize, black)
                Font.Draw ("2. Block", 370, 110, ffsize, white)

                ent := 2
            end if

            exit when chars (KEY_ENTER) and ent > 0

        end loop

        if ent = 1 then
            Draw.FillBox (0, 0, 325, 186, grey)
            randint (PD, 1, speed)
            randint (ED, 1, espeed)

            if ED = espeed then
                HP -= 0
                Font.Draw ("The Enemy Missed!", 1, 160, fffsize, black)

            else
                HP -= edamage
                Font.Draw ("The Enemy Hit!", 1, 160, fffsize, black)

            end if

            if PD = speed then

                ehp -= 0
                Font.Draw ("You Missed The Enemy!", 1, 175, fffsize, black)

            else
                ehp -= dmg
                Font.Draw ("You Hit the Enemy!", 1, 175, fffsize, black)

            end if

        else
            randint (PB, 1, 2)
            Draw.FillBox (0, 0, 325, 186, grey)
            if PB = 2 then
                HP -= edamage
                Font.Draw ("Your Block Failed You Were Damaged!", 1, 175, fffsize, black)

            else
                randint (CAT, 1, 2)
                HP -= 0
                Font.Draw (" You Blocked!", 1, 175, fffsize, black)
                if CAT = 2 then
                    Font.Draw ("Your couter attack failed!", 1, 160, fffsize, black)

                else
                    Font.Draw ("Your couter attack succeded!", 1, 160, fffsize, black)
                    ehp -= dmg
                end if
            end if

        end if
        delay (2000)

        exit when HP <= 0 or ehp <= 0
    end loop
    if HP <= 0 then
        GameOver
    else
        Draw.FillBox (0, 0, maxx, maxy, green)
        Draw.FillBox (0, maxy, maxx, 320, white)

        Font.Draw ("You Killed The Spider! ", 170, 350, fffffsize, black)
        Font.Draw ("EXP + 20", 473, 170, ffsize, black)
        EXP += 20
        delay (2000)
        if EXP >= 30 then
            EXP -= 30
            lvl += 1
            dmg += 2
            HPmax += 20
            HP := HPmax
            Draw.FillBox (0, 0, maxx, maxy, yellow)
            Draw.FillBox (0, maxy, maxx, 320, white)
            Font.Draw ("Level UP! ", 190, 350, fffffsize, black)
            Font.Draw ("Damage + 2", 50, 280, fsize, black)
            Font.Draw ("HP + 20", 50, 240, fsize, black)

            delay (2000)
        end if

    end if

    crosscave
end battlespider
%------------------------------------------------------------------------------------------------
proc cave
%la caverne
    cls
    ent := 0

    text
    Font.Draw ("-" + Invent (1), 473, 150, fffsize, black)


    Font.Draw ("The HERO bravely enters the cave. Once inside, he", 1, 175, fffsize, black)
    Font.Draw ("finds a torch and uses it to light his path. The HERO", 1, 160, fffsize, black)
    Font.Draw ("walks on for a few minutes when suddenly a giant", 1, 145, fffsize, black)
    Font.Draw ("spider appears. What will the HERO do? Will he", 1, 130, fffsize, black)
    Font.Draw ("run or fight?", 1, 115, fffsize, black)
    Font.Draw ("1. Run!", 370, 150, ffsize, black)
    Font.Draw ("2. Fight!", 370, 110, ffsize, black)

    spiderpic := Pic.FileNew ("spider.jpg")
    Pic.Draw (spiderpic, 190, 190, picCopy)



    loop
        Input.KeyDown (chars)
        if chars ('1') then

            Font.Draw ("1. Run!", 370, 150, ffsize, white)
            Font.Draw ("2. Fight!", 370, 110, ffsize, black)

            ent := 1
        end if

        Input.KeyDown (chars)
        if chars ('2') then

            Font.Draw ("1. Run!", 370, 150, ffsize, black)
            Font.Draw ("2. Fight!", 370, 110, ffsize, white)

            ent := 2
        end if

        exit when chars (KEY_ENTER) and ent > 0

    end loop

    if ent = 1 then
        runspider
    else
        Draw.FillBox (0, 0, maxx, maxy, red)
        Font.Draw ("BATTLE! ", 240, 350, fffffsize, white)
        delay (200)
        Draw.FillBox (0, 0, maxx, maxy, grey)
        Font.Draw ("BATTLE! ", 240, 350, fffffsize, white)
        delay (200)
        Draw.FillBox (0, 0, maxx, maxy, black)
        Font.Draw ("BATTLE! ", 240, 350, fffffsize, white)
        delay (200)
        Draw.FillBox (0, 0, maxx, maxy, red)
        Font.Draw ("BATTLE! ", 240, 350, fffffsize, white)
        delay (200)
        Draw.FillBox (0, 0, maxx, maxy, grey)
        Font.Draw ("BATTLE! ", 240, 350, fffffsize, white)
        delay (200)
        Draw.FillBox (0, 0, maxx, maxy, black)
        Font.Draw ("BATTLE! ", 240, 350, fffffsize, white)
        delay (200)

        battlespider
    end if

end cave

%---------------------------------------------------------------------------------------------
proc onwards
% si tu decide d'eviter la caverne
    cls
    weapon2 := weapon
    text
    ent := 0
    Font.Draw ("-" + Invent (1), 473, 150, fffsize, black)
    Font.Draw ("1. Proceed!", 370, 150, ffsize, black)



    Font.Draw ("The Hero decides that the cave is not worth his ", 1, 175, fffsize, black)
    Font.Draw ("time. So he kept to the path he was on. Select .", 1, 160, fffsize, black)
    Font.Draw ("proceed to continue.", 1, 145, fffsize, black)


    cavepic := Pic.FileNew ("cave.jpg")
    Pic.Draw (cavepic, 220, 250, picCopy)

    loop
        Input.KeyDown (chars)
        if chars ('1') then


            Font.Draw ("1. Proceed", 370, 150, ffsize, white)


            ent := 1
        end if

        exit when chars (KEY_ENTER) and ent > 0

    end loop

    if ent = 1 then
        path1

    end if

end onwards
%-----------------------------------------------------------------------------------------------
proc afterwards
%apres le sanglier
    cls

    ent := 0
    Draw.FillBox (0, 0, maxx, maxy, black)
    Draw.FillBox (0, 0, maxx, 190, grey)
    Draw.FillBox (0, maxy, 180, 190, white)
    Draw.FillBox (maxx, 190, 470, 0, white)
    Draw.FillBox (maxx, maxy, 470, 190, white)
    Draw.FillBox (0, 380, maxx, 381, black)
    Draw.FillBox (0, 190, maxx, 191, black)
    Draw.FillBox (470, 165, maxx, 166, black)
    Draw.FillBox (470, 189, 471, 0, black)
    Draw.FillBox (327, 190, 328, 0, black)
    Draw.Box (25, 351, 25 + HPmax, 356, black)
    Draw.FillBox (25, 351, 25 + HP, 356, red)


    shpmax := intstr (HPmax)
    shp := intstr (HP)
    sspeed := intstr (speed)
    dmgs := intstr (dmg)
    lvls := intstr (lvl)
    ename := "Wild Boar"

    cavepic := Pic.FileNew ("cave.jpg")
    Pic.Draw (cavepic, 220, 250, picCopy)

    Font.Draw ("The HERO stats", 0, 386, fffsize, black)
    Font.Draw ("Name : The HERO", 0, 366, fffsize, black)
    Font.Draw ("HP", 0, 351, fffsize, black)
    Font.Draw ("Current HP" + shp + "/" + shpmax, 0, 336, fffsize, black)
    Font.Draw ("EXP", 0, 321, fffsize, black)
    Font.Draw ("Lvl. " + lvls, 0, 306, fffsize, black)
    Font.Draw ("Weapon : " + weapon, 0, 291, fffsize, black)
    Font.Draw ("HERO Damage : " + dmgs, 0, 276, fffsize, black)
    Font.Draw ("HERO Speed : " + sspeed, 0, 261, fffsize, black)

    Font.Draw ("Current ENEMY stats", 470, 386, fffsize, black)
    Font.Draw ("Enemy Name : " + ename, 470, 366, fffsize, black)
    Font.Draw ("HP ", 470, 351, fffsize, black)
    Font.Draw ("Lvl. : 1  ", 470, 336, fffsize, black)
    Font.Draw ("Enemy Damage : 5 ", 470, 321, fffsize, black)

    Font.Draw ("Inventory", 473, 170, ffsize, black)
    Font.Draw ("-" + Invent (1), 473, 150, fffsize, black)

    Font.Draw ("Having beaten the boar, The HERO continues ", 1, 175, fffsize, black)
    Font.Draw ("forward. He comes across a cave and wonders if he  ", 1, 160, fffsize, black)
    Font.Draw ("should enter. Choose yes or no...", 1, 145, fffsize, black)
    Font.Draw ("1. Yes!", 370, 150, ffsize, black)
    Font.Draw ("2. No!", 370, 110, ffsize, black)
    ent := 1


    loop
        Input.KeyDown (chars)
        if chars ('1') then

            Font.Draw ("1. Yes!", 370, 150, ffsize, white)
            Font.Draw ("2. No!", 370, 110, ffsize, black)

            ent := 1
        end if

        Input.KeyDown (chars)
        if chars ('2') then

            Font.Draw ("1. Yes!", 370, 150, ffsize, black)
            Font.Draw ("2. No!", 370, 110, ffsize, white)

            ent := 2
        end if

        exit when chars (KEY_ENTER) and ent > 0

    end loop

    if ent = 1 then
        cave

    else
        onwards

    end if

end afterwards
%-----------------------------------------------------------------------------------------


proc battleboar
%la bataille avec le sanglier

    cls
    ehpmax := 20
    ehp := 20
    ename := "Wild Boar"
    edamage := 5
    espeed := 4
    text

    Draw.FillBox (495, 351, 495 + ehp, 356, red)
    Draw.Box (495, 351, 495 + ehpmax, 356, black)

    boarpic := Pic.FileNew ("boar.jpg")
    Pic.Draw (boarpic, 235, 240, picCopy)

    sehpmax := intstr (ehpmax)

    shpmax := intstr (HPmax)
    shp := intstr (HP)
    sspeed := intstr (speed)
    dmgs := intstr (dmg)
    lvls := intstr (lvl)
    ent := 0

    loop
        cls
        text

        Draw.FillBox (495, 351, 495 + ehp, 356, red)
        Draw.Box (495, 351, 495 + ehpmax, 356, black)


        boarpic := Pic.FileNew ("boar.jpg")
        Pic.Draw (boarpic, 235, 240, picCopy)


        sehp := intstr (ehp)
        Font.Draw ("Enemy Name : " + ename, 470, 366, fffsize, black)
        Font.Draw ("HP ", 470, 351, fffsize, black)
        Font.Draw ("Current HP " + sehp + "/" + sehpmax, 470, 336, fffsize, black)
        Font.Draw ("Lvl. : 1  ", 470, 321, fffsize, black)
        Font.Draw ("Enemy Damage : 5 ", 470, 306, fffsize, black)
        Font.Draw ("Enemy Speed : 2 ", 470, 291, fffsize, black)

        Font.Draw ("-" + Invent (1), 473, 150, fffsize, black)

        Font.Draw ("1. Attack", 370, 150, ffsize, black)
        Font.Draw ("2. Block", 370, 110, ffsize, black)
        Font.Draw ("Blocking cancels all damage and if successful you", 1, 175, fffsize, black)
        Font.Draw ("have a chance to counter attack. Attack will simply", 1, 160, fffsize, black)
        Font.Draw ("attack the enemy with a chance of missing.", 1, 145, fffsize, black)
        ent := 1


        loop
            Input.KeyDown (chars)
            if chars ('1') then


                Font.Draw ("1. Attack", 370, 150, ffsize, white)
                Font.Draw ("2. Block", 370, 110, ffsize, black)

                ent := 1
            end if

            Input.KeyDown (chars)
            if chars ('2') then


                Font.Draw ("1. Attack", 370, 150, ffsize, black)
                Font.Draw ("2. Block", 370, 110, ffsize, white)

                ent := 2
            end if

            exit when chars (KEY_ENTER) and ent > 0

        end loop

        if ent = 1 then
            Draw.FillBox (0, 0, 325, 186, grey)
            randint (PD, 1, speed)
            randint (ED, 1, espeed)

            if ED = espeed then
                HP -= 0
                Font.Draw ("The Enemy Missed!", 1, 160, fffsize, black)

            else
                HP -= edamage
                Font.Draw ("The Enemy Hit!", 1, 160, fffsize, black)

            end if

            if PD = speed then

                ehp -= 0
                Font.Draw ("You Missed The Enemy!", 1, 175, fffsize, black)

            else
                ehp -= dmg
                Font.Draw ("You Hit the Enemy!", 1, 175, fffsize, black)

            end if

        else
            randint (PB, 1, 2)
            Draw.FillBox (0, 0, 325, 186, grey)
            if PB = 2 then
                HP -= edamage
                Font.Draw ("Your Block Failed You Were Damaged!", 1, 175, fffsize, black)

            else
                randint (CAT, 1, 2)
                HP -= 0
                Font.Draw (" You Blocked!", 1, 175, fffsize, black)
                if CAT = 2 then
                    Font.Draw ("Your couter attack failed!", 1, 160, fffsize, black)

                else
                    Font.Draw ("Your couter attack succeded!", 1, 160, fffsize, black)
                    ehp -= dmg
                end if
            end if

        end if
        delay (2000)

        exit when HP <= 0 or ehp <= 0
    end loop
    if HP <= 0 then
        GameOver
    else
        Draw.FillBox (0, 0, maxx, maxy, green)
        Draw.FillBox (0, maxy, maxx, 320, white)

        Font.Draw ("You Killed The Boar! ", 170, 350, fffffsize, black)
        Font.Draw ("EXP + 10", 473, 170, ffsize, black)
        EXP += 10
        if EXP >= 30 then
            EXP -= 30
            lvl += 1
            dmg += 2
            HPmax += 20
            HP := HPmax
        end if
        delay (3000)
        afterwards
    end if
end battleboar

%---------------------------------------------------------------------------------
proc next
%l'introduction au sanglier
    cls
    ent := 0
    text
    boarpic := Pic.FileNew ("boar.jpg")
    Pic.Draw (boarpic, 235, 240, picCopy)

    ename := "Wild Boar"

    Font.Draw ("Enemy Name : " + ename, 470, 366, fffsize, black)
    Font.Draw ("HP : 20 ", 470, 351, fffsize, black)
    Font.Draw ("Lvl. : 1  ", 470, 336, fffsize, black)
    Font.Draw ("Enemy Damage : 5 ", 470, 321, fffsize, black)

    Font.Draw ("-" + Invent (1), 473, 150, fffsize, black)

    Font.Draw ("His weapon now in hand, the HERO begins his march", 1, 175, fffsize, black)
    Font.Draw ("towards greatness. Suddenly a wild boar appears.", 1, 160, fffsize, black)
    Font.Draw ("Select the fight button then press enter when ready.", 1, 145, fffsize, black)
    Font.Draw ("1. FIGHT!", 370, 150, ffsize, black)

    loop
        Input.KeyDown (chars)
        if chars ('1') then

            Font.Draw ("1. FIGHT!", 370, 150, ffsize, white)

            ent := 1
        end if


        exit when chars (KEY_ENTER) and ent > 0

    end loop
    if ent = 1 then
        Draw.FillBox (0, 0, maxx, maxy, red)
        Font.Draw ("BATTLE! ", 240, 350, fffffsize, white)
        delay (200)
        Draw.FillBox (0, 0, maxx, maxy, grey)
        Font.Draw ("BATTLE! ", 240, 350, fffffsize, white)
        delay (200)
        Draw.FillBox (0, 0, maxx, maxy, black)
        Font.Draw ("BATTLE! ", 240, 350, fffffsize, white)
        delay (200)
        Draw.FillBox (0, 0, maxx, maxy, red)
        Font.Draw ("BATTLE! ", 240, 350, fffffsize, white)
        delay (200)
        Draw.FillBox (0, 0, maxx, maxy, grey)
        Font.Draw ("BATTLE! ", 240, 350, fffffsize, white)
        delay (200)
        Draw.FillBox (0, 0, maxx, maxy, black)
        Font.Draw ("BATTLE! ", 240, 350, fffffsize, white)
        delay (200)


        battleboar
    end if
end next
%---4 8---------------------------------------------------------------------------------
%si tu choisis l'arc
proc bow
    weapon := "Bow"
    weapon2 := weapon
    speed := 4
    dmg := 8
    Invent (1) := weapon
    next
end bow

%-------------------------------------------------------------------------------------------
%si tu choisis l'epee
proc sword
    weapon := "Sword"
    weapon2 := weapon
    speed := 8
    dmg := 5
    Invent (1) := weapon
    next
end sword
%--------------------------------------------------------------------------------------------
%si tu choisis la lance
proc spear 
    weapon := "Spear"
    weapon2 := weapon
    speed := 6
    dmg := 7
    Invent (1) := weapon
    next
end spear
%-------------------------------------------------------------------------------
%shhhhhh tu n'as rien vue
proc scythe
    weapon := "Death Scythe"
    weapon2 := weapon
    speed := 1000
    dmg := 1000
    Invent (1) := weapon
    next

end scythe

%-------------------------------------------------------------------------------
%le debut du jeux
Font.Draw ("The hero wakes up, he sees a chest before him. Inside", 1, 175, fffsize, black)
Font.Draw ("is his weapon but what is it? A bow a sword or a ", 1, 160, fffsize, black)
Font.Draw ("spear? Note that the sword has less chances of ", 1, 145, fffsize, black)
Font.Draw ("missing but less damage. The bow has more chances   ", 1, 130, fffsize, black)
Font.Draw ("of missing but more damage. The spear is the most ", 1, 115, fffsize, black)
Font.Draw ("balanced weapon.", 1, 100, fffsize, black)

chestpic := Pic.FileNew ("chest.jpg")
Pic.Draw (chestpic, 210, 190, picCopy)

Font.Draw ("1. Bow", 370, 150, ffsize, black)
Font.Draw ("2. Sword", 370, 110, ffsize, black)
Font.Draw ("3. Spear", 370, 70, ffsize, black)
ent := 1


loop
    Input.KeyDown (chars)
    if chars ('1') then

        Font.Draw ("1. Bow", 370, 150, ffsize, white)
        Font.Draw ("2. Sword", 370, 110, ffsize, black)
        Font.Draw ("3. Spear", 370, 70, ffsize, black)
        ent := 1
    end if

    Input.KeyDown (chars)
    if chars ('2') then

        Font.Draw ("1. Bow", 370, 150, ffsize, black)
        Font.Draw ("3. Spear", 370, 70, ffsize, black)
        Font.Draw ("2. Sword", 370, 110, ffsize, white)

        ent := 2
    end if

    Input.KeyDown (chars)
    if chars ('3') then

        Font.Draw ("1. Bow", 370, 150, ffsize, black)
        Font.Draw ("3. Spear", 370, 70, ffsize, white)
        Font.Draw ("2. Sword", 370, 110, ffsize, black)

        ent := 3
    end if


    Input.KeyDown (chars)
    if chars ('*') then

        ent := 4

    end if

    exit when chars (KEY_ENTER) and ent > 0

end loop

if ent = 1 then
    bow
elsif ent = 3 then
    spear
elsif ent = 2 then
    sword
else
    Draw.FillBox (0, 0, maxx, maxy, white)
    Font.Draw ("GODMODE ACTIVE! ", 190, 350, fffffsize, black)
    delay (100)
    Draw.FillBox (0, 0, maxx, maxy, grey)
    Font.Draw ("GODMODE ACTIVE! ", 190, 350, fffffsize, black)
    delay (100)
    Draw.FillBox (0, 0, maxx, maxy, white)
    Font.Draw ("GODMODE ACTIVE! ", 190, 350, fffffsize, black)
    delay (100)
    Draw.FillBox (0, 0, maxx, maxy, grey)
    Font.Draw ("GODMODE ACTIVE! ", 190, 350, fffffsize, black)
    delay (100)
    Draw.FillBox (0, 0, maxx, maxy, white)
    Font.Draw ("GODMODE ACTIVE! ", 190, 350, fffffsize, black)
    delay (100)
    Draw.FillBox (0, 0, maxx, maxy, grey)
    Font.Draw ("GODMODE ACTIVE! ", 190, 350, fffffsize, black)
    delay (100)
    Draw.FillBox (0, 0, maxx, maxy, white)
    Font.Draw ("GODMODE ACTIVE! ", 190, 350, fffffsize, black)
    delay (100)
    Draw.FillBox (0, 0, maxx, maxy, grey)
    Font.Draw ("GODMODE ACTIVE! ", 190, 350, fffffsize, black)
    delay (100)
    Draw.FillBox (0, 0, maxx, maxy, white)
    Font.Draw ("GODMODE ACTIVE! ", 190, 350, fffffsize, black)
    delay (100)
    Draw.FillBox (0, 0, maxx, maxy, grey)
    Font.Draw ("GODMODE ACTIVE! ", 190, 350, fffffsize, black)
    delay (100)
    Draw.FillBox (0, 0, maxx, maxy, white)
    Font.Draw ("GODMODE ACTIVE! ", 190, 350, fffffsize, black)
    delay (100)
    Draw.FillBox (0, 0, maxx, maxy, grey)
    Font.Draw ("GODMODE ACTIVE! ", 190, 350, fffffsize, black)
    delay (100)
    Draw.FillBox (0, 0, maxx, maxy, white)
    Font.Draw ("GODMODE ACTIVE! ", 190, 350, fffffsize, black)
    delay (100)
    Draw.FillBox (0, 0, maxx, maxy, grey)
    Font.Draw ("GODMODE ACTIVE! ", 190, 350, fffffsize, black)
    delay (100)
    Draw.FillBox (0, 0, maxx, maxy, white)
    Font.Draw ("GODMODE ACTIVE! ", 190, 350, fffffsize, black)
    delay (100)
    Draw.FillBox (0, 0, maxx, maxy, grey)
    Font.Draw ("GODMODE ACTIVE! ", 190, 350, fffffsize, black)
    delay (100)

    scythe
end if



