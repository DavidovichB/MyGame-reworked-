class BaseSkill
  attr_accessor \
  :spell_damage, 
  :mana_cost, 
  :cooldown, 
  :triggering_chance, 
  :skill_duration, 
  :illusion_max_health, 
  :illusion_attack_damage, 
  :current_skill_level, 
  :max_skill_level,
  :heal_gain, 
  :physical_dodge_chance_gain,
  :spell_dodge_chance_gain,
  :skill_name,
  :mana_gain,
  :active,
  :damage_gain,
  :physical_damage_reduction,
  :magical_damage_reduction,
  :target_type

  def initialize(
    spell_damage: 0, 
    mana_cost: 0, 
    cooldown: 0, 
    triggering_chance: 0, 
    skill_duration: 0, 
    illusion_max_health: 0, 
    illusion_attack_damage: 0, 
    max_skill_level: 4,
    heal_gain: 0, 
    physical_dodge_chance_gain: 0,
    spell_dodge_chance_gain: 0,
    skill_name:,
    mana_gain: 0,
    active: true,
    damage_gain: 0,
    physical_damage_reduction: 0,
    magical_damage_reduction: 0,
    target_type: 'enemy'
  )
    @spell_damage = spell_damage
    @mana_cost = mana_cost
    @cooldown = cooldown
    @triggering_chance = triggering_chance
    @skill_duration = skill_duration 
    @illusion_max_health = illusion_max_health
    @illusion_attack_damage = illusion_attack_damage
    @current_skill_level = 0
    @heal_gain = heal_gain
    @physical_dodge_chance_gain = physical_dodge_chance_gain
    @spell_dodge_chance_gain = spell_dodge_chance_gain
    @skill_name = skill_name
    @mana_gain = mana_gain
    @max_skill_level = max_skill_level
    @active = active
    @damage_gain = damage_gain
    @physical_damage_reduction = physical_damage_reduction
    @magical_damage_reduction = magical_damage_reduction
    @target_type = target_type
  end

  def level_up
    return if @current_skill_level == @max_skill_level
    
    @current_skill_level += 1
    ipl_by_next_level_stats
  end

  private

  def next_level_stats
    upgrade_flow[@current_skill_level - 1]
  end

  def ipl_by_next_level_stats
    @spell_damage = update_if_exists(:spell_damage)
    @mana_cost = update_if_exists(:mana_cost)
    @cooldown = update_if_exists(:cooldown)
    @triggering_chance = update_if_exists(:triggering_chance)
    @skill_duration = update_if_exists(:skill_duration)
    @illusion_max_health = update_if_exists(:illusion_max_health)
    @illusion_attack_damage = update_if_exists(:illusion_attack_damage)
    @heal_gain = update_if_exists(:heal_gain)
    @physical_dodge_chance_gain = update_if_exists(:physical_dodge_chance_gain)
    @spell_dodge_chance_gain = update_if_exists(:spell_dodge_chance_gain)
    @mana_gain = update_if_exists(:mana_gain)
    @damage_gain = update_if_exists(:damage_gain)
    @physical_damage_reduction = update_if_exists(:physical_damage_reduction)
    @magical_damage_reduction = update_if_exists(:magical_damage_reduction)
  end

  def update_if_exists(field)
    next_level_stats[field].nil? ? send(field) : next_level_stats[field]
  end

  def upgrade_flow
    raise 'upgrade_flow method should be implemented'
  end
end
