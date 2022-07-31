require_relative 'base_skill.rb'

class SecondSkill < BaseSkill

  def initialize
    @mana_cost = 35
    @cooldown = 3
    @triggering_chance = 0
    @skill_duration = 0
    @current_skill_level = 0
    @heal_gain = 0
    @physical_dodge_chance_gain = 0
    @spell_dodge_chance_gain = 0
    @skill_name = 'second_skill'
    @mana_gain = 0
    @max_skill_level = 4
    @active = true
    @damage_gain = 0
    @physical_damage_reduction = 0
    @magical_damage_reduction = 0
    @spell_damage = 0
    @target_type = 'self'
  end

  def use(target)
    @illusion_max_health = (@illusion_max_health * target.max_health_point) / 100
  end

  private

  def upgrade_flow
   [
      { illusion_max_health: 10 },
      { illusion_max_health: 20 },
      { illusion_max_health: 30 },
      { illusion_max_health: 40 }
    ]
  end
end