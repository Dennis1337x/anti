config = {
	["webhook"] = "https://discord.com/api/webhooks/1196100046739996692/bNfGDVAqhR62rc1NFZB5FhGgMGWczsBc4psgKeY0qiV8W5kS59z4jWa7sYe5zsPqbhIh", -- رابط الويب هوك لنظام الحماية
	explosion = {
		true, -- تفعيل حماية من التفجير والغاء تأثيرات التفجيرات
		["explosion-ids"] = {  -- ايدي التفجيرات من اللعبه تستطيع اختيار نوع الانفجارات من هنا
		-- https://wiki.multitheftauto.com/wiki/CreateExplosion
			0,
			1,
			2,
			3,
			8,
			9,
			10,
			11,
			12
		}
	},
	projectile = true, -- حماية من التفجير جديد لازم تحدث سيرفرك لاخر اصدار عشان تشتغل
	JetPack = true, -- منع استخدام الجيت باك
	aircars = true, -- منع طيران السيارة طيارن تقليدي
	hovercars = true, -- منع المركبات من المشي عالماء
	extrabunny = true, -- منع القفز عاليا بالدراجات الهوائية
	extrajump = true, -- منع القفزة العالية
	pedFire = true, -- منع الاشتعال بالنار للاعب
	invisible = true, -- منع الاختفاء للاعب
	invisibleCar = true, -- منع الاختفاء للمركبة
	speedGame = {true, 1.1}, -- منع السرعة للعبه بشكل عام اقصى سرعة 10 والسرعه الطبيعيه 1
	gravity = {false, 5}, -- منع الجاذبيه في حال حاول التلاعب بالجاذبيه اقل او اكثر
	speedVehicle = {true, 900}, -- منع السرعة للمركبات تستطيع وضع السرعه التي تحب حسب مواصفات المركبات بسيرفرك
	flyPlayer = {false, 900}, -- الطياران بالاعب المسافة بينه وبين الارض تختارها حسب حاجة سيرفرك
	flyVehicle = {true, 5}, -- الطياران بالمركبة المسافة بينها وبين الارض تختارها حسب حاجة سيرفرك
	InfinteAmmo = {true, 400}, -- حماية الرصاص للأسلحة ، اذا تعدت العدد الذي تضعه يكشف
	BlacklistWeapon = {
		true, -- تفعيل البلاك ليست اسلحة
		TableWeapon = { -- ايدي الاسلحة المسموحة داخل السيرفر تستطيع الاختيار من هنا 
		-- https://wiki.multitheftauto.com/wiki/Weapons
			[0] = true, 
			[3] = true, 
			[4] = true, 
			[5] = true, 
			[22] = true, 
			[24] = true, 
			[25] = true, 
			[28] = true, 
			[29] = true, 
			[30] = true, 
			[31] = true, 
		}
	},

	
}
