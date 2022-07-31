class Hero

	attr_accessor \
		:damage,
		:physical_dodge_chance,
		:name,
		:physical_damage_reduction, 
		:magical_damage_reduction, 
		:spell_dodge_chance, 
		:fire_damage_reduction, 
		:water_damage_reduction, 
		:earth_damage_reduction, 
		:wind_damage_reduction, 
		:poison_damage_reduction, 
		:state,
		:skills,
		:max_health_point,
		:max_mana_point,
		:gold,
		:level,
		:hero_class,
		:ipl_fire_damage_reduction, 
		:ipl_water_damage_reduction, 
		:ipl_wind_damage_reduction, 
		:ipl_poison_damage_reduction, 
		:ipl_earth_damage_reduction,
		:current_healt_point,
		:current_mana_point

	def initialize(
		name:, 
		damage:,
		physical_dodge_chance:,
		physical_damage_reduction:,
		magical_damage_reduction:,
		spell_dodge_chance:,
		fire_damage_reduction:, 
		water_damage_reduction:, 
		wind_damage_reduction:,
		poison_damage_reduction:, 
		earth_damage_reduction:,
		max_health_point:,
		max_mana_point:,
		skills:,
		hero_class:,
		ipl_fire_damage_reduction:, 
		ipl_water_damage_reduction:, 
		ipl_wind_damage_reduction:,
		ipl_poison_damage_reduction:, 
		ipl_earth_damage_reduction:
	)
		@name = name
		@damage = damage
		@physical_dodge_chance = physical_dodge_chance
		@physical_damage_reduction = physical_damage_reduction
		@magical_damage_reduction = magical_damage_reduction
		@spell_dodge_chance = spell_dodge_chance
		@fire_damage_reduction = fire_damage_reduction
		@water_damage_reduction = water_damage_reduction
		@poison_damage_reduction = poison_damage_reduction
		@wind_damage_reduction = wind_damage_reduction
		@earth_damage_reduction = earth_damage_reduction
		@max_health_point = max_health_point
		@max_mana_point = max_mana_point
		@current_healt_point = max_health_point
		@current_mana_point = max_mana_point
		@ipl_fire_damage_reduction = ipl_fire_damage_reduction
		@ipl_water_damage_reduction = ipl_water_damage_reduction
		@ipl_wind_damage_reduction = ipl_wind_damage_reduction
		@ipl_poison_damage_reduction = ipl_poison_damage_reduction
		@ipl_earth_damage_reduction = ipl_earth_damage_reduction
		@hero_class = hero_class
		@skills = skills
		@level = 1
		@gold = 10
	end

	def level_up
		@level += 1
		ipl_by_hero_class
		ipl_by_hero_elements
	end

	# def activate_skills
	# 	@skills.each do |skill|
	# 		self.class.define_method "use_#{skill.skill_name}" do |target = nil|
	# 			 skill.target_type == 'enemy' ? skill.use(target) : skill.use(self)
	# 		 end
	# 	 end
	# end

	private

	def ipl_by_hero_class
		@damage += (@damage * @hero_class.ipl_damage).round(2)
		@max_health_point += (@max_health_point * @hero_class.ipl_health).round(2)
		@max_mana_point += (@max_mana_point * @hero_class.ipl_mana).round(2)
		@physical_damage_reduction += (@physical_damage_reduction * @hero_class.ipl_physical_damage_reduction).round(2)
		@magical_damage_reduction += (@magical_damage_reduction * @hero_class.ipl_magical_damage_reduction).round(2)
	end

	def ipl_by_hero_elements
		@fire_damage_reduction += (@fire_damage_reduction * @ipl_fire_damage_reduction).round(2)
		@water_damage_reduction += (@water_damage_reduction * @ipl_water_damage_reduction).round(2)
		@wind_damage_reduction += (@wind_damage_reduction * @ipl_wind_damage_reduction).round(2)
		@poison_damage_reduction += (@poison_damage_reduction * @ipl_poison_damage_reduction).round(2)
		@earth_damage_reduction += (@earth_damage_reduction * @ipl_earth_damage_reduction).round(2)
	end
end
