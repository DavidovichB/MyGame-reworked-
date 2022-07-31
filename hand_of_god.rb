require_relative 'base_skill.rb'

class HandOfGod < BaseSkill

  def initialize
    @mana_cost = 20
    @cooldown = 3
    @triggering_chance = 0
    @skill_duration = 1
    @current_skill_level = 0
    @heal_gain = 0
    @physical_dodge_chance_gain = 0
    @spell_dodge_chance_gain = 0
    @skill_name = 'hand_of_god'
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
    target.damage += @damage_gain
  end

  private

  def upgrade_flow
   [
      { damage_gain: 10 },
      { damage_gain: 20 },
      { damage_gain: 30 },
      { damage_gain: 40 }
    ]
  end
end