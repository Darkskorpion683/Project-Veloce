audio_play_sound(snd_cashPrize,1,false)
rewardMoney = global.playerMoney
rewardMultiplier = 1
if global.raceIndex <= 4 then rewardMultiplier = 1
if global.raceIndex > 4 && global.raceIndex <= 9 then rewardMultiplier = 10
if global.raceIndex > 9 && global.raceIndex <= 14 then rewardMultiplier = 100
if global.raceIndex > 14 then rewardMultiplier = 1000
global.playerMoney += (10.00*(5-global.place))*rewardMultiplier