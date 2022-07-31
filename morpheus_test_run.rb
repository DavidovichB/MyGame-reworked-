require_relative 'hero.rb'
require_relative 'hero_class.rb'
require_relative 'base_skill.rb'
require_relative 'first_skill.rb'
require_relative 'second_skill.rb'
require_relative 'third_skill.rb'
require_relative 'fourth_skill.rb'

first_skill = FirstSkill.new
second_skill = SecondSkill.new
third_skill = ThirdSkill.new
fourth_skill = FourthSkill.new

caster = HeroClass.new(name: 'caster', ipl_damage: 0.02, ipl_health: 0.05, ipl_mana: 0.005, ipl_physical_damage_reduction: 0.05, ipl_magical_damage_reduction: 0.01)

morpheus = Hero.new(
  name: 'Morpheus', 
  damage: 35,
  physical_dodge_chance: 5,
  physical_damage_reduction: 0.97,
  magical_damage_reduction: 0.90,
  spell_dodge_chance: 0,
  fire_damage_reduction: 1.05, 
  water_damage_reduction: 1.02, 
  wind_damage_reduction: 1.01,
  poison_damage_reduction: 1.05, 
  earth_damage_reduction: 1.03,
  max_health_point: 450,
  max_mana_point: 240,
  skills: [first_skill, second_skill, third_skill, fourth_skill],
  hero_class: caster,
  ipl_fire_damage_reduction: 1, 
  ipl_water_damage_reduction: 1, 
  ipl_wind_damage_reduction: 1,
  ipl_poison_damage_reduction: 1, 
  ipl_earth_damage_reduction: 1
)

fourth_skill.level_up

morpheus.skills[3].use(morpheus)

p morpheus

fourth_skill.level_up

morpheus.skills[3].use(morpheus)

p morpheus

