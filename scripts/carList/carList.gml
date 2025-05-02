function carList(){ 
		roster = [
			//Class D
			{
				//0
				carName : "Nissan 180SX",
				price : 3000,
				topSpeed : 65,
				baseAcceleration : .1,
				weight : 3000,
				class : "D",
				color : [
				{
						str : "Red",
						spr : spr_playerCar
				},
				{
						str : "Blue",
						spr : spr_opponent1
				},
				{
						str : "Gray",
						spr : spr_opponent2
				},
				{
						str : "White",
						spr : spr_opponent3
				},
				]
		
			},
			{
				//1
				carName : "Infiniti G35",
				price : 110,
				topSpeed : 67,
				baseAcceleration : 0.12,
				weight : 3050,
				class : "D",
				color : [
				{
						str : "Red",
						spr : spr_playerCar
				},
				{
						str : "Blue",
						spr : spr_opponent1
				},
				{
						str : "Gray",
						spr : spr_opponent2
				},
				{
						str : "White",
						spr : spr_opponent3
				},
				]
			},
			{
				//2
				carName : "Toyota GR86",
				price : 100,
				topSpeed : 70,
				baseAcceleration : 0.11,
				weight : 2930,
				class : "D",
				color : [
				{
						str : "Red",
						spr : spr_gr86_red
				},
				{
						str : "Blue",
						spr : spr_gr86_blue
				},
				{
						str : "Grey",
						spr : spr_gr86_grey
				},
				{
						str : "White",
						spr : spr_gr86_white
				},
				{
						str : "Green",
						spr : spr_gr86_green
				},
				{
						str : "Orange",
						spr : spr_gr86_orange
				},
				{
						str : "Black",
						spr : spr_gr86_black
				},
				]
			},
			//Class C
			{
				//3
				carName : "Dodge Charger",
				price : 1100,
				topSpeed : 85,
				baseAcceleration : 0.13,
				weight : 2900,
				class : "C",
				color : [
				{
						str : "Red",
						spr : spr_charger_red
				},
				{
						str : "Blue",
						spr : spr_charger_blue
				},
				{
						str : "Black",
						spr : spr_charger_black
				},
				{
						str : "White",
						spr : spr_charger_white
				},
				{
						str : "Orange",
						spr : spr_charger_orange
				},
				{
						str : "Police",
						spr : spr_charger_ncshp
				},
				]
			},
			{
				//4
				carName : "Ford Mustang",
				price : 1200,
				topSpeed : 85,
				baseAcceleration : 0.14,
				weight : 2800,
				class : "C",
				color : [
				{
						str : "Red",
						spr : spr_playerCar
				},
				{
						str : "Blue",
						spr : spr_opponent1
				},
				{
						str : "Gray",
						spr : spr_opponent2
				},
				{
						str : "White",
						spr : spr_opponent3
				},
				]
			},
			{
				//5
				carName : "BMW M3 F82",
				price : 1190,
				topSpeed : 82,
				baseAcceleration : 0.16,
				weight : 2700,
				class : "C",
				color : [
				{
						str : "Red",
						spr : spr_playerCar
				},
				{
						str : "Blue",
						spr : spr_opponent1
				},
				{
						str : "Gray",
						spr : spr_opponent2
				},
				{
						str : "White",
						spr : spr_opponent3
				},
				]
			},
			{
				//6
				carName : "Audi S6",
				price : 1200,
				topSpeed : 80,
				baseAcceleration : 0.18,
				weight : 2750,
				class : "C",
				color : [
				{
						str : "Red",
						spr : spr_s6_red
				},
				{
						str : "Blue",
						spr : spr_s6_blue
				},
				{
						str : "Black",
						spr : spr_s6_black
				},
				{
						str : "White",
						spr : spr_s6_white
				},
				{
						str : "Green",
						spr : spr_s6_green
				},
				]
			},
			{
				//7
				carName : "Nissan Skyline R34 GT-R",
				price : 1250,
				topSpeed : 85,
				baseAcceleration : 0.17,
				weight : 2750,
				class : "C",
				color : [
				{
						str : "Red",
						spr : spr_playerCar
				},
				{
						str : "Blue",
						spr : spr_opponent1
				},
				{
						str : "Gray",
						spr : spr_opponent2
				},
				{
						str : "White",
						spr : spr_opponent3
				},
				]
			},
			//Class B
			{
				//8
				carName : "Nissan Skyline R35 GTR",
				price : 10500,
				topSpeed : 100,
				baseAcceleration : 0.2,
				weight : 2300,
				class : "B",
				color : [
				{
						str : "Red",
						spr : spr_playerCar
				},
				{
						str : "Blue",
						spr : spr_opponent1
				},
				{
						str : "Gray",
						spr : spr_opponent2
				},
				{
						str : "White",
						spr : spr_opponent3
				},
				]
			},
			{
				//9
				carName : "Toyota Supra MK5",
				price : 11000,
				topSpeed : 105,
				baseAcceleration : 0.19,
				weight : 2250,
				class : "B",
				color : [
				{
						str : "Orange",
						spr : spr_supramk5_orange
				},
				{
						str : "Blue",
						spr : spr_supramk5_blue
				},
				{
						str : "Gray",
						spr : spr_supramk5_grey
				},
				{
						str : "White",
						spr : spr_supramk5_white
				},
				{
						str : "Pink",
						spr : spr_supramk5_pink
				},
				{
						str : "Green",
						spr : spr_supramk5_green
				},
				]
			},
			{
				//10
				carName : "Ferrari 488",
				price : 11100,
				topSpeed : 105,
				baseAcceleration : 0.2,
				weight : 2000,
				class : "B",
				color : [
				{
						str : "Red",
						spr : spr_488_red
				},
				{
						str : "Blue",
						spr : spr_488_blue
				},
				{
						str : "Black",
						spr : spr_488_black
				},
				{
						str : "White",
						spr : spr_488_white
				},
				{
						str : "Yellow",
						spr : spr_488_white
				},
				]
			},
			{
				//11
				carName : "Dodge Challenger SRT Hellcat",
				price : 10990,
				topSpeed : 110,
				baseAcceleration : 0.19,
				weight : 2100,
				class : "B",
				color : [
				{
						str : "Red",
						spr : spr_playerCar
				},
				{
						str : "Blue",
						spr : spr_opponent1
				},
				{
						str : "Gray",
						spr : spr_opponent2
				},
				{
						str : "White",
						spr : spr_opponent3
				},
				]
			},
			//Class A
			{
				//12
				carName : "Ferrari 296 GT3",
				price : 101000,
				topSpeed : 100,
				baseAcceleration : 0.3,
				weight : 1500,
				class : "A",
				color : [
				{
						str : "Red",
						spr : spr_296_red
				},
				{
						str : "Blue",
						spr : spr_296_blue
				},
				{
						str : "Green",
						spr : spr_296_green
				},
				{
						str : "Black",
						spr : spr_296_black
				},
				{
						str : "Yellow",
						spr : spr_296_yellow
				},
				]
			},
			{
				//13
				carName : "Lamborghini Huracan GT3",
				price : 101500,
				topSpeed : 105,
				baseAcceleration : 0.29,
				weight : 1400,
				class : "A",
				color : [
				{
						str : "Green",
						spr : spr_huracan_green
				},
				]
			},
			{
				//14
				carName : "Mazda 787B",
				price : 100500,
				topSpeed : 110,
				baseAcceleration : 0.27,
				weight : 1450,
				class : "A",
				color : [
				{
						str : "Red",
						spr : spr_playerCar
				},
				{
						str : "Blue",
						spr : spr_opponent1
				},
				{
						str : "Gray",
						spr : spr_opponent2
				},
				{
						str : "White",
						spr : spr_opponent3
				},
				]
			},
			//Class S
			{
				//15
				carName : "2004 Ferrari F2004 F1 car",
				price : 150000,
				topSpeed : 150,
				baseAcceleration : 0.35,
				weight : 1000,
				class : "S",
				color : [
				{
						str : "Red",
						spr : spr_playerCar
				},
				{
						str : "Blue",
						spr : spr_opponent1
				},
				{
						str : "Gray",
						spr : spr_opponent2
				},
				{
						str : "White",
						spr : spr_opponent3
				},
				]
			},
			{
				//16
				carName : "Ford Electric Supervan",
				price : 150000,
				topSpeed : 150,
				baseAcceleration : 0.35,
				weight : 1000,
				class : "S",
				color : [
				{
						str : "Purple",
						spr : spr_supervan_purple
				},
				{
						str : "Blue",
						spr : spr_supervan_blue
				},
				{
						str : "Black",
						spr : spr_supervan_black
				},
				{
						str : "White",
						spr : spr_supervan_white
				},
				{
						str : "UNCC Green",
						spr : spr_supervan_uncc
				},
				]
			}
			]
			return roster

}
