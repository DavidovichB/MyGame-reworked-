require_relative 'base_skill.rb'

class TailWind < BaseSkill

  def initialize
    @mana_cost = 35
    @cooldown = 3
    @triggering_chance = 0
    @skill_duration = 1
    @current_skill_level = 0
    @heal_gain = 0
    @physical_dodge_chance_gain = 0
    @spell_dodge_chance_gain = 0
    @skill_name = 'tail_wind'
    @mana_gain = 0
    @max_skill_level = 4
    @active = false
    @damage_gain = 0
    @physical_damage_reduction = 0
    @magical_damage_reduction = 0
    @spell_damage = 0
    @target_type = 'self'
  end

  def use(target)
    target.physical_dodge_chance += @physical_dodge_chance_gain
    target.spell_dodge_chance += @spell_dodge_chance_gain
  end

  private

  def upgrade_flow
   [
      { triggering_chance: 0.14 },
      { triggering_chance: 0.16 },
      { triggering_chance: 0.18 },
      { triggering_chance: 0.20 }
    ]
  end
end