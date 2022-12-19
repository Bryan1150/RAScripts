// Mario Kart DS
// #ID = 12711

FirstMinutesAddress = 0x3ceac5
//Bits 0 to 6 =  1st Best Time - Minutes
FirstSecondsAddress = 0x3ceac6
//Bits 0 to 5 = Figure-8 Circuit - 1st Best Time - Seconds
FirstMillisecondsAddress = 0x3ceac7

SecondMinutes = 0x3ceae1
SecondSeconds = 0x3ceae2
SecondsMilli = 0x3ceae3

ThirdMinutes = 0x3ceafd
ThirdSeconds = 0x3ceafe
ThirdMilli = 0x3ceaff

FourthMinutes = 0x3ceb19
FourthSeconds = 0x3ceb1a
FourthMilli = 0x3ceb1b

BitFlagFirst = bit0(0x3ceac4)
BitFlagSecond = bit0(0x3ceae0)
BitFlagThird = bit0(0x3ceafc)
BitFlagFourth = bit0(0x3ceb18)

function calculateMilliseconds(MinutesAddress, SecondsAddress, MillisecondsAddress){
Minutes = 
(bit0(MinutesAddress) * 1) +
(bit1(MinutesAddress) * 2) +
(bit2(MinutesAddress) * 4) +
(bit3(MinutesAddress) * 8) +
(bit4(MinutesAddress) * 16) +
(bit5(MinutesAddress) * 32) +
(bit6(MinutesAddress) * 64)

Seconds = 
(bit7(MinutesAddress) * 1) +
(bit0(SecondsAddress) * 2) +
(bit1(SecondsAddress) * 4) +
(bit2(SecondsAddress) * 8) +
(bit3(SecondsAddress) * 16) +
(bit4(SecondsAddress) * 32) +
(bit5(SecondsAddress) * 64)

Milliseconds = 
(bit6(SecondsAddress) * 1) +
(bit7(SecondsAddress) * 2) +
(bit0(MillisecondsAddress) * 4) +
(bit1(MillisecondsAddress) * 8) +
(bit2(MillisecondsAddress) * 16) +
(bit3(MillisecondsAddress) * 32) +
(bit4(MillisecondsAddress) * 64) +
(bit5(MillisecondsAddress) * 128) +
(bit6(MillisecondsAddress) * 256) +
(bit7(MillisecondsAddress) * 512)

return Minutes * 60000 +
      Seconds * 1000 +
      Milliseconds
}

function calculateMillisecondsDelta(MinutesAddress, SecondsAddress, MillisecondsAddress){
Minutes = 
(bit0(MinutesAddress) * 1) +
(bit1(MinutesAddress) * 2) +
(bit2(MinutesAddress) * 4) +
(bit3(MinutesAddress) * 8) +
(bit4(MinutesAddress) * 16) +
(bit5(MinutesAddress) * 32) +
(bit6(MinutesAddress) * 64)

Seconds = 
(bit7(MinutesAddress) * 1) +
(bit0(SecondsAddress) * 2) +
(bit1(SecondsAddress) * 4) +
(bit2(SecondsAddress) * 8) +
(bit3(SecondsAddress) * 16) +
(bit4(SecondsAddress) * 32) +
(bit5(SecondsAddress) * 64)

Milliseconds = 
(bit6(SecondsAddress) * 1) +
(bit7(SecondsAddress) * 2) +
(bit0(MillisecondsAddress) * 4) +
(bit1(MillisecondsAddress) * 8) +
(bit2(MillisecondsAddress) * 16) +
(bit3(MillisecondsAddress) * 32) +
(bit4(MillisecondsAddress) * 64) +
(bit5(MillisecondsAddress) * 128) +
(bit6(MillisecondsAddress) * 256) +
(bit7(MillisecondsAddress) * 512)

return prev(Minutes) * 60000 +
      prev(Seconds) * 1000 +
      prev(Milliseconds)
}

function calculateMillisecondsInGame(minutes, seconds, milliseconds){
    return
    minutes * 60000 +
    seconds * 1000 +
    milliseconds
}

achievement(
    title = "test",
    description = "test",
    points = 0,
    trigger = 
    measured(
    tally(4, 
    once(calculateMilliseconds(FirstMinutesAddress, FirstSecondsAddress, FirstMillisecondsAddress) < calculateMillisecondsInGame(1,44,199) && BitFlagFirst == 1),
    once(calculateMilliseconds(SecondMinutes , SecondSeconds, SecondsMilli) < calculateMillisecondsInGame(1,2,291)&& BitFlagSecond == 1),
    once(calculateMilliseconds(ThirdMinutes, ThirdSeconds, ThirdMilli) < calculateMillisecondsInGame(1,51,946)&& BitFlagThird == 1),
    once(calculateMilliseconds(FourthMinutes, FourthSeconds, FourthMilli) < calculateMillisecondsInGame(2,8,905)&& BitFlagFourth == 1))
    )
    
    &&
    never(
    tally(4,
    once(calculateMillisecondsDelta(FirstMinutesAddress, FirstSecondsAddress, FirstMillisecondsAddress) < calculateMillisecondsInGame(1,44,199)&& BitFlagFirst == 1),
    once(calculateMillisecondsDelta(SecondMinutes , SecondSeconds, SecondsMilli) < calculateMillisecondsInGame(1,2,291)&& BitFlagSecond == 1),
    once(calculateMillisecondsDelta(ThirdMinutes, ThirdSeconds, ThirdMilli) < calculateMillisecondsInGame(1,51,946)&& BitFlagThird == 1),
    once(calculateMillisecondsDelta(FourthMinutes, FourthSeconds, FourthMilli) < calculateMillisecondsInGame(2,8,905)&& BitFlagFourth == 1)
    ))
   
)