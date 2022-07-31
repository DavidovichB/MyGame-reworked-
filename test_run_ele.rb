require_relative 'hero.rb'
require_relative 'hero_class.rb'
require_relative 'hand_of_god.rb'
require_relative 'tail_wind.rb'
require_relative 'desecrated_forces.rb'
require_relative 'touch_of_god.rb'

first_skill = HandOfGod.new
second_skill = TailWind.new
third_skill = DesecratedForces.new
fourth_skill = TouchOfGod.new

caster = HeroClass.new(name: 'caster', ipl_damage: 0.02, ipl_health: 0.05, ipl_mana: 0.005, ipl_physical_damage_reduction: 0.05, ipl_magical_damage_reduction: 0.01)

elementalist = Hero.new(
  name: 'Elementalist', 
  damage: 50,
  physical_dodge_chance: 5,
  physical_damage_reduction: 0.95,
  magical_damage_reduction: 0.90,
  spell_dodge_chance: 0,
  fire_damage_reduction: 0.95, 
  water_damage_reduction: 0.95, 
  wind_damage_reduction: 0.95,
  poison_damage_reduction: 1.05, 
  earth_damage_reduction: 0.95,
  max_health_point: 600,
  max_mana_point: 170,
  skills: [first_skill, second_skill, third_skill, fourth_skill],
  hero_class: caster,
  ipl_fire_damage_reduction: 1, 
  ipl_water_damage_reduction: 1, 
  ipl_wind_damage_reduction: 1,
  ipl_poison_damage_reduction: 1, 
  ipl_earth_damage_reduction: 1
)

fourth_skill.level_up


elementalist.skills[3].use(elementalist)

p elementalist

