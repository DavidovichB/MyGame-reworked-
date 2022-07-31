require_relative 'base_skill.rb'

class DesecratedForces < BaseSkill

  def initialize
    @mana_cost = (0.5)
    @cooldown = 4
    @triggering_chance = 0
    @skill_duration = 1
    @current_skill_level = 0
    @heal_gain = 0
    @physical_dodge_chance_gain = 0
    @spell_dodge_chance_gain = 0
    @skill_name = 'desecrated_forces'
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
    target.current_mana_point = target.max_mana_point * @mana_cost
  end

  private

  def upgrade_flow
   [
      { mana_gain: 25, triggering_chance: 15 },
      { mana_gain: 30, triggering_chance: 20 },
      { mana_gain: 35, triggering_chance: 25 },
      { mana_gain: 40, triggering_chance: 30 }
    ]
  end
end