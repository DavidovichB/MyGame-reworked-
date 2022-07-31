class HeroClass
  attr_accessor \
    :ipl_damage,
    :ipl_health,
    :ipl_mana,
    :ipl_physical_damage_reduction,
    :ipl_magical_damage_reduction,
    :name

  def initialize(ipl_damage:, ipl_health:, ipl_mana:, ipl_physical_damage_reduction:, ipl_magical_damage_reduction:, name:)
    @ipl_damage = ipl_damage
    @ipl_health = ipl_health
    @ipl_mana = ipl_mana
    @ipl_physical_damage_reduction = ipl_physical_damage_reduction
    @ipl_magical_damage_reduction = ipl_magical_damage_reduction
    @name = name
  end
end
