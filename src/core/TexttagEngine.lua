function TextTagCreateText(unit, text)
    thistexttag = CreateTextTag()
    SetTextTagPos(thistexttag, GetUnitX(unit), GetUnitY(unit), GetUnitZ(u)+30)
    SetTextTagColor(thistexttag, 255, 255, 255, 237)
    SetTextTagPermanent(thistexttag, false)
    SetTextTagFadepoint(thistexttag, 2)
    SetTextTagLifespan(thistexttag, 3)
    SetTextTagVelocity(thistexttag, .01775 * Cos(bj_PI / 2), .01775 * Sin(bj_PI / 2))
    SetTextTagText(thistexttag, text, 0.025)
    return thistexttag
end

function TextTagCreate(unit)
    thistexttag = CreateTextTag()
    SetTextTagPos(thistexttag, GetUnitX(unit), GetUnitY(unit), GetUnitZ(u)+30)
    SetTextTagColor(thistexttag, 255, 255, 255, 237)
    SetTextTagPermanent(thistexttag, false)
    SetTextTagFadepoint(thistexttag, 2)
    SetTextTagLifespan(thistexttag, 3)
    SetTextTagVelocity(thistexttag, .01775 * Cos(bj_PI / 2), .01775 * Sin(bj_PI / 2))
    return thistexttag
end

function CreateCastText(unit)
    thistexttag = CreateTextTag()
    SetTextTagPos(thistexttag, GetUnitX(unit), GetUnitY(unit), GetUnitZ(u)+160)
    SetTextTagColor(thistexttag, 255, 255, 255, 237)
    SetTextTagPermanent(thistexttag, false)
    SetTextTagFadepoint(thistexttag, 1)
    SetTextTagLifespan(thistexttag, 1)
    SetTextTagText(thistexttag, "|cffff0000!!!|r", 0.06)
end