require_relative 'base_skill.rb'

class TouchOfGod < BaseSkill

  def initialize
    @mana_cost = 50
    @cooldown = 0
    @triggering_chance = 0
    @skill_duration = 0
    @current_skill_level = 0
    @heal_gain = 0
    @physical_dodge_chance_gain = 0
    @spell_dodge_chance_gain = 0
    @skill_name = 'touch_of_god'
    @mana_gain = 0
    @max_skill_level = 3
    @active = true
    @damage_gain = 0
    @physical_damage_reduction = 0
    @magical_damage_reduction = 0
    @spell_damage = 0
    @target_type = 'self'
  end

  def use(target)
    target.damage += @damage_gain
  end

  private

  def upgrade_flow
   [
      { damage_gain: 123 },
      { damage_gain: 1234 },
      { damage_gain: 12345 }
    ]
  end
end