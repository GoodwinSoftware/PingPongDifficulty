-- barb gold change (not working)
-- UPDATE Improvements SET DispersalGold=5 WHERE ImprovementType="IMPROVEMENT_BARBARIAN_CAMP";
UPDATE ModifierArguments SET Extra="+10000", SecondExtra="DIFFICULTY_DEITY" WHERE Name="Amount" AND ModifierId="BARBARIAN_CAMP_GOLD_SCALING";
-- UPDATE ModifierArguments SET Extra="+5" WHERE Name="Amount" AND ModifierId="BARBARIAN_CAMP_GOLD_SCALING";


-- Hooks to modify all yield types independently for all difficulties
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES
('TRAIT_LEADER_MAJOR_CIV', 'TRAIT_BUFF_HUMAN_SCIENCE_SETTLER'),
('TRAIT_LEADER_MAJOR_CIV', 'TRAIT_BUFF_HUMAN_CULTURE_SETTLER'),
('TRAIT_LEADER_MAJOR_CIV', 'TRAIT_BUFF_HUMAN_FAITH_SETTLER'),
('TRAIT_LEADER_MAJOR_CIV', 'TRAIT_BUFF_HUMAN_GOLD_SETTLER'),
('TRAIT_LEADER_MAJOR_CIV', 'TRAIT_BUFF_HUMAN_PRODUCTION_SETTLER'),

('TRAIT_LEADER_MAJOR_CIV', 'TRAIT_BUFF_HUMAN_SCIENCE_CHIEFTAIN'),
('TRAIT_LEADER_MAJOR_CIV', 'TRAIT_BUFF_HUMAN_CULTURE_CHIEFTAIN'),
('TRAIT_LEADER_MAJOR_CIV', 'TRAIT_BUFF_HUMAN_FAITH_CHIEFTAIN'),
('TRAIT_LEADER_MAJOR_CIV', 'TRAIT_BUFF_HUMAN_GOLD_CHIEFTAIN'),
('TRAIT_LEADER_MAJOR_CIV', 'TRAIT_BUFF_HUMAN_PRODUCTION_CHIEFTAIN'),

('TRAIT_LEADER_MAJOR_CIV', 'TRAIT_BUFF_HUMAN_SCIENCE_WARLORD'),
('TRAIT_LEADER_MAJOR_CIV', 'TRAIT_BUFF_HUMAN_CULTURE_WARLORD'),
('TRAIT_LEADER_MAJOR_CIV', 'TRAIT_BUFF_HUMAN_FAITH_WARLORD'),
('TRAIT_LEADER_MAJOR_CIV', 'TRAIT_BUFF_HUMAN_GOLD_WARLORD'),
('TRAIT_LEADER_MAJOR_CIV', 'TRAIT_BUFF_HUMAN_PRODUCTION_WARLORD'),

('TRAIT_LEADER_MAJOR_CIV', 'TRAIT_BUFF_HUMAN_SCIENCE_PRINCE'),
('TRAIT_LEADER_MAJOR_CIV', 'TRAIT_BUFF_HUMAN_CULTURE_PRINCE'),
('TRAIT_LEADER_MAJOR_CIV', 'TRAIT_BUFF_HUMAN_FAITH_PRINCE'),
('TRAIT_LEADER_MAJOR_CIV', 'TRAIT_BUFF_HUMAN_GOLD_PRINCE'),
('TRAIT_LEADER_MAJOR_CIV', 'TRAIT_BUFF_HUMAN_PRODUCTION_PRINCE'),

('TRAIT_LEADER_MAJOR_CIV', 'TRAIT_BUFF_HUMAN_SCIENCE_KING'),
('TRAIT_LEADER_MAJOR_CIV', 'TRAIT_BUFF_HUMAN_CULTURE_KING'),
('TRAIT_LEADER_MAJOR_CIV', 'TRAIT_BUFF_HUMAN_FAITH_KING'),
('TRAIT_LEADER_MAJOR_CIV', 'TRAIT_BUFF_HUMAN_GOLD_KING'),
('TRAIT_LEADER_MAJOR_CIV', 'TRAIT_BUFF_HUMAN_PRODUCTION_KING'),

('TRAIT_LEADER_MAJOR_CIV', 'TRAIT_BUFF_HUMAN_SCIENCE_EMPEROR'),
('TRAIT_LEADER_MAJOR_CIV', 'TRAIT_BUFF_HUMAN_CULTURE_EMPEROR'),
('TRAIT_LEADER_MAJOR_CIV', 'TRAIT_BUFF_HUMAN_FAITH_EMPEROR'),
('TRAIT_LEADER_MAJOR_CIV', 'TRAIT_BUFF_HUMAN_GOLD_EMPEROR'),
('TRAIT_LEADER_MAJOR_CIV', 'TRAIT_BUFF_HUMAN_PRODUCTION_EMPEROR'),

('TRAIT_LEADER_MAJOR_CIV', 'TRAIT_BUFF_HUMAN_SCIENCE_IMMORTAL'),
('TRAIT_LEADER_MAJOR_CIV', 'TRAIT_BUFF_HUMAN_CULTURE_IMMORTAL'),
('TRAIT_LEADER_MAJOR_CIV', 'TRAIT_BUFF_HUMAN_FAITH_IMMORTAL'),
('TRAIT_LEADER_MAJOR_CIV', 'TRAIT_BUFF_HUMAN_GOLD_IMMORTAL'),
('TRAIT_LEADER_MAJOR_CIV', 'TRAIT_BUFF_HUMAN_PRODUCTION_IMMORTAL'),

('TRAIT_LEADER_MAJOR_CIV', 'TRAIT_BUFF_HUMAN_SCIENCE_DEITY'),
('TRAIT_LEADER_MAJOR_CIV', 'TRAIT_BUFF_HUMAN_CULTURE_DEITY'),
('TRAIT_LEADER_MAJOR_CIV', 'TRAIT_BUFF_HUMAN_FAITH_DEITY'),
('TRAIT_LEADER_MAJOR_CIV', 'TRAIT_BUFF_HUMAN_GOLD_DEITY'),
('TRAIT_LEADER_MAJOR_CIV', 'TRAIT_BUFF_HUMAN_PRODUCTION_DEITY');

-- connect the hooks above into modifier code, based on the requirements (difficulty+human)
INSERT INTO Modifiers (ModifierId, ModifierType, OwnerRequirementSetId) VALUES
('TRAIT_BUFF_HUMAN_SCIENCE_SETTLER', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',  'PLAYER_IS_HUMAN_SETTLER'),
('TRAIT_BUFF_HUMAN_CULTURE_SETTLER', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',  'PLAYER_IS_HUMAN_SETTLER'),
('TRAIT_BUFF_HUMAN_FAITH_SETTLER', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',  'PLAYER_IS_HUMAN_SETTLER'),
('TRAIT_BUFF_HUMAN_GOLD_SETTLER', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',  'PLAYER_IS_HUMAN_SETTLER'),
('TRAIT_BUFF_HUMAN_PRODUCTION_SETTLER', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',  'PLAYER_IS_HUMAN_SETTLER'),

('TRAIT_BUFF_HUMAN_SCIENCE_CHIEFTAIN', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',  'PLAYER_IS_HUMAN_CHIEFTAIN'),
('TRAIT_BUFF_HUMAN_CULTURE_CHIEFTAIN', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',  'PLAYER_IS_HUMAN_CHIEFTAIN'),
('TRAIT_BUFF_HUMAN_FAITH_CHIEFTAIN', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',  'PLAYER_IS_HUMAN_CHIEFTAIN'),
('TRAIT_BUFF_HUMAN_GOLD_CHIEFTAIN', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',  'PLAYER_IS_HUMAN_CHIEFTAIN'),
('TRAIT_BUFF_HUMAN_PRODUCTION_CHIEFTAIN', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',  'PLAYER_IS_HUMAN_CHIEFTAIN'),

('TRAIT_BUFF_HUMAN_SCIENCE_WARLORD', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',  'PLAYER_IS_HUMAN_WARLORD'),
('TRAIT_BUFF_HUMAN_CULTURE_WARLORD', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',  'PLAYER_IS_HUMAN_WARLORD'),
('TRAIT_BUFF_HUMAN_FAITH_WARLORD', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',  'PLAYER_IS_HUMAN_WARLORD'),
('TRAIT_BUFF_HUMAN_GOLD_WARLORD', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',  'PLAYER_IS_HUMAN_WARLORD'),
('TRAIT_BUFF_HUMAN_PRODUCTION_WARLORD', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',  'PLAYER_IS_HUMAN_WARLORD'),

('TRAIT_BUFF_HUMAN_SCIENCE_PRINCE', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',  'PLAYER_IS_HUMAN_PRINCE'),
('TRAIT_BUFF_HUMAN_CULTURE_PRINCE', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',  'PLAYER_IS_HUMAN_PRINCE'),
('TRAIT_BUFF_HUMAN_FAITH_PRINCE', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',  'PLAYER_IS_HUMAN_PRINCE'),
('TRAIT_BUFF_HUMAN_GOLD_PRINCE', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',  'PLAYER_IS_HUMAN_PRINCE'),
('TRAIT_BUFF_HUMAN_PRODUCTION_PRINCE', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',  'PLAYER_IS_HUMAN_PRINCE'),

('TRAIT_BUFF_HUMAN_SCIENCE_KING', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',  'PLAYER_IS_HUMAN_KING'),
('TRAIT_BUFF_HUMAN_CULTURE_KING', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',  'PLAYER_IS_HUMAN_KING'),
('TRAIT_BUFF_HUMAN_FAITH_KING', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',  'PLAYER_IS_HUMAN_KING'),
('TRAIT_BUFF_HUMAN_GOLD_KING', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',  'PLAYER_IS_HUMAN_KING'),
('TRAIT_BUFF_HUMAN_PRODUCTION_KING', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',  'PLAYER_IS_HUMAN_KING'),

('TRAIT_BUFF_HUMAN_SCIENCE_EMPEROR', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',  'PLAYER_IS_HUMAN_EMPEROR'),
('TRAIT_BUFF_HUMAN_CULTURE_EMPEROR', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',  'PLAYER_IS_HUMAN_EMPEROR'),
('TRAIT_BUFF_HUMAN_FAITH_EMPEROR', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',  'PLAYER_IS_HUMAN_EMPEROR'),
('TRAIT_BUFF_HUMAN_GOLD_EMPEROR', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',  'PLAYER_IS_HUMAN_EMPEROR'),
('TRAIT_BUFF_HUMAN_PRODUCTION_EMPEROR', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',  'PLAYER_IS_HUMAN_EMPEROR'),

('TRAIT_BUFF_HUMAN_SCIENCE_IMMORTAL', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',  'PLAYER_IS_HUMAN_IMMORTAL'),
('TRAIT_BUFF_HUMAN_CULTURE_IMMORTAL', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',  'PLAYER_IS_HUMAN_IMMORTAL'),
('TRAIT_BUFF_HUMAN_FAITH_IMMORTAL', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',  'PLAYER_IS_HUMAN_IMMORTAL'),
('TRAIT_BUFF_HUMAN_GOLD_IMMORTAL', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',  'PLAYER_IS_HUMAN_IMMORTAL'),
('TRAIT_BUFF_HUMAN_PRODUCTION_IMMORTAL', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',  'PLAYER_IS_HUMAN_IMMORTAL'),

('TRAIT_BUFF_HUMAN_SCIENCE_DEITY', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',  'PLAYER_IS_HUMAN_DEITY'),
('TRAIT_BUFF_HUMAN_CULTURE_DEITY', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',  'PLAYER_IS_HUMAN_DEITY'),
('TRAIT_BUFF_HUMAN_FAITH_DEITY', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',  'PLAYER_IS_HUMAN_DEITY'),
('TRAIT_BUFF_HUMAN_GOLD_DEITY', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',  'PLAYER_IS_HUMAN_DEITY'),
('TRAIT_BUFF_HUMAN_PRODUCTION_DEITY', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',  'PLAYER_IS_HUMAN_DEITY');

-- actually modify the yields
-- these tield bonuses are additive. a chieftain player is also a settler player, etc.
-- we've also reversed the difficulties, so that we can have "higher" difficulties give players extra units
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES
-- we no longer use Settler - Warlord. Left them here in case we want to add additional levels

('TRAIT_BUFF_HUMAN_SCIENCE_SETTLER', 'YieldType', 'YIELD_SCIENCE'),
('TRAIT_BUFF_HUMAN_SCIENCE_SETTLER', 'Amount', -32),
('TRAIT_BUFF_HUMAN_CULTURE_SETTLER', 'YieldType', 'YIELD_CULTURE'),
('TRAIT_BUFF_HUMAN_CULTURE_SETTLER', 'Amount', -32),
('TRAIT_BUFF_HUMAN_FAITH_SETTLER', 'YieldType', 'YIELD_FAITH'),
('TRAIT_BUFF_HUMAN_FAITH_SETTLER', 'Amount', -32),
('TRAIT_BUFF_HUMAN_PRODUCTION_SETTLER', 'YieldType', 'YIELD_PRODUCTION'),
('TRAIT_BUFF_HUMAN_PRODUCTION_SETTLER', 'Amount', -8),
('TRAIT_BUFF_HUMAN_GOLD_SETTLER', 'YieldType', 'YIELD_GOLD'),
('TRAIT_BUFF_HUMAN_GOLD_SETTLER', 'Amount', -8),

('TRAIT_BUFF_HUMAN_SCIENCE_CHIEFTAIN', 'YieldType', 'YIELD_SCIENCE'),
('TRAIT_BUFF_HUMAN_SCIENCE_CHIEFTAIN', 'Amount', +8),
('TRAIT_BUFF_HUMAN_CULTURE_CHIEFTAIN', 'YieldType', 'YIELD_CULTURE'),
('TRAIT_BUFF_HUMAN_CULTURE_CHIEFTAIN', 'Amount', +8),
('TRAIT_BUFF_HUMAN_FAITH_CHIEFTAIN', 'YieldType', 'YIELD_FAITH'),
('TRAIT_BUFF_HUMAN_FAITH_CHIEFTAIN', 'Amount', +8),
('TRAIT_BUFF_HUMAN_PRODUCTION_CHIEFTAIN', 'YieldType', 'YIELD_PRODUCTION'),
('TRAIT_BUFF_HUMAN_PRODUCTION_CHIEFTAIN', 'Amount', +4),
('TRAIT_BUFF_HUMAN_GOLD_CHIEFTAIN', 'YieldType', 'YIELD_GOLD'),
('TRAIT_BUFF_HUMAN_GOLD_CHIEFTAIN', 'Amount', +4),

('TRAIT_BUFF_HUMAN_SCIENCE_WARLORD', 'YieldType', 'YIELD_SCIENCE'),
('TRAIT_BUFF_HUMAN_SCIENCE_WARLORD', 'Amount', +8),
('TRAIT_BUFF_HUMAN_CULTURE_WARLORD', 'YieldType', 'YIELD_CULTURE'),
('TRAIT_BUFF_HUMAN_CULTURE_WARLORD', 'Amount', +8),
('TRAIT_BUFF_HUMAN_FAITH_WARLORD', 'YieldType', 'YIELD_FAITH'),
('TRAIT_BUFF_HUMAN_FAITH_WARLORD', 'Amount', +8),
('TRAIT_BUFF_HUMAN_PRODUCTION_WARLORD', 'YieldType', 'YIELD_PRODUCTION'),
('TRAIT_BUFF_HUMAN_PRODUCTION_WARLORD', 'Amount', +2),
('TRAIT_BUFF_HUMAN_GOLD_WARLORD', 'YieldType', 'YIELD_GOLD'),
('TRAIT_BUFF_HUMAN_GOLD_WARLORD', 'Amount', +2),

('TRAIT_BUFF_HUMAN_SCIENCE_PRINCE', 'YieldType', 'YIELD_SCIENCE'),
('TRAIT_BUFF_HUMAN_SCIENCE_PRINCE', 'Amount', +8),
('TRAIT_BUFF_HUMAN_CULTURE_PRINCE', 'YieldType', 'YIELD_CULTURE'),
('TRAIT_BUFF_HUMAN_CULTURE_PRINCE', 'Amount', +8),
('TRAIT_BUFF_HUMAN_FAITH_PRINCE', 'YieldType', 'YIELD_FAITH'),
('TRAIT_BUFF_HUMAN_FAITH_PRINCE', 'Amount', +8),
('TRAIT_BUFF_HUMAN_PRODUCTION_PRINCE', 'YieldType', 'YIELD_PRODUCTION'),
('TRAIT_BUFF_HUMAN_PRODUCTION_PRINCE', 'Amount', +1),
('TRAIT_BUFF_HUMAN_GOLD_PRINCE', 'YieldType', 'YIELD_GOLD'),
('TRAIT_BUFF_HUMAN_GOLD_PRINCE', 'Amount', +1),

('TRAIT_BUFF_HUMAN_SCIENCE_KING', 'YieldType', 'YIELD_SCIENCE'),
('TRAIT_BUFF_HUMAN_SCIENCE_KING', 'Amount', +8),
('TRAIT_BUFF_HUMAN_CULTURE_KING', 'YieldType', 'YIELD_CULTURE'),
('TRAIT_BUFF_HUMAN_CULTURE_KING', 'Amount', +8),
('TRAIT_BUFF_HUMAN_FAITH_KING', 'YieldType', 'YIELD_FAITH'),
('TRAIT_BUFF_HUMAN_FAITH_KING', 'Amount', +8),
('TRAIT_BUFF_HUMAN_PRODUCTION_KING', 'YieldType', 'YIELD_PRODUCTION'),
('TRAIT_BUFF_HUMAN_PRODUCTION_KING', 'Amount', +1),
('TRAIT_BUFF_HUMAN_GOLD_KING', 'YieldType', 'YIELD_GOLD'),
('TRAIT_BUFF_HUMAN_GOLD_KING', 'Amount', +1),

('TRAIT_BUFF_HUMAN_SCIENCE_EMPEROR', 'YieldType', 'YIELD_SCIENCE'),
('TRAIT_BUFF_HUMAN_SCIENCE_EMPEROR', 'Amount', +8),
('TRAIT_BUFF_HUMAN_CULTURE_EMPEROR', 'YieldType', 'YIELD_CULTURE'),
('TRAIT_BUFF_HUMAN_CULTURE_EMPEROR', 'Amount', +8),
('TRAIT_BUFF_HUMAN_FAITH_EMPEROR', 'YieldType', 'YIELD_FAITH'),
('TRAIT_BUFF_HUMAN_FAITH_EMPEROR', 'Amount', +8),
('TRAIT_BUFF_HUMAN_PRODUCTION_EMPEROR', 'YieldType', 'YIELD_PRODUCTION'),
('TRAIT_BUFF_HUMAN_PRODUCTION_EMPEROR', 'Amount', +1),
('TRAIT_BUFF_HUMAN_GOLD_EMPEROR', 'YieldType', 'YIELD_GOLD'),
('TRAIT_BUFF_HUMAN_GOLD_EMPEROR', 'Amount', +1),

('TRAIT_BUFF_HUMAN_SCIENCE_IMMORTAL', 'YieldType', 'YIELD_SCIENCE'),
('TRAIT_BUFF_HUMAN_SCIENCE_IMMORTAL', 'Amount', +8),
('TRAIT_BUFF_HUMAN_CULTURE_IMMORTAL', 'YieldType', 'YIELD_CULTURE'),
('TRAIT_BUFF_HUMAN_CULTURE_IMMORTAL', 'Amount', +8),
('TRAIT_BUFF_HUMAN_FAITH_IMMORTAL', 'YieldType', 'YIELD_FAITH'),
('TRAIT_BUFF_HUMAN_FAITH_IMMORTAL', 'Amount', +8),
('TRAIT_BUFF_HUMAN_PRODUCTION_IMMORTAL', 'YieldType', 'YIELD_PRODUCTION'),
('TRAIT_BUFF_HUMAN_PRODUCTION_IMMORTAL', 'Amount', +1),
('TRAIT_BUFF_HUMAN_GOLD_IMMORTAL', 'YieldType', 'YIELD_GOLD'),
('TRAIT_BUFF_HUMAN_GOLD_IMMORTAL', 'Amount', +1),

('TRAIT_BUFF_HUMAN_SCIENCE_DEITY', 'YieldType', 'YIELD_SCIENCE'),
('TRAIT_BUFF_HUMAN_SCIENCE_DEITY', 'Amount', +10000),
('TRAIT_BUFF_HUMAN_CULTURE_DEITY', 'YieldType', 'YIELD_CULTURE'),
('TRAIT_BUFF_HUMAN_CULTURE_DEITY', 'Amount', +10000),
('TRAIT_BUFF_HUMAN_FAITH_DEITY', 'YieldType', 'YIELD_FAITH'),
('TRAIT_BUFF_HUMAN_FAITH_DEITY', 'Amount', +10000),
('TRAIT_BUFF_HUMAN_PRODUCTION_DEITY', 'YieldType', 'YIELD_PRODUCTION'),
('TRAIT_BUFF_HUMAN_PRODUCTION_DEITY', 'Amount', +10000),
('TRAIT_BUFF_HUMAN_GOLD_DEITY', 'YieldType', 'YIELD_GOLD'),
('TRAIT_BUFF_HUMAN_GOLD_DEITY', 'Amount', +10000);


-- requirement sets, checking for difficulty+human
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES
('PLAYER_IS_HUMAN_SETTLER', 'REQUIREMENTSET_TEST_ALL'),
('PLAYER_IS_HUMAN_CHIEFTAIN', 'REQUIREMENTSET_TEST_ALL'),
('PLAYER_IS_HUMAN_WARLORD', 'REQUIREMENTSET_TEST_ALL'),
('PLAYER_IS_HUMAN_PRINCE', 'REQUIREMENTSET_TEST_ALL'),
('PLAYER_IS_HUMAN_KING', 'REQUIREMENTSET_TEST_ALL'),
('PLAYER_IS_HUMAN_EMPEROR', 'REQUIREMENTSET_TEST_ALL'),
('PLAYER_IS_HUMAN_IMMORTAL', 'REQUIREMENTSET_TEST_ALL'),
('PLAYER_IS_HUMAN_DEITY', 'REQUIREMENTSET_TEST_ALL');

-- morphing the requirement sets into the actual requirements
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES
('PLAYER_IS_HUMAN_SETTLER', 'REQUIRES_PLAYER_IS_HUMAN'),
('PLAYER_IS_HUMAN_SETTLER', 'REQUIRES_SETTLER'),
('PLAYER_IS_HUMAN_CHIEFTAIN', 'REQUIRES_PLAYER_IS_HUMAN'),
('PLAYER_IS_HUMAN_CHIEFTAIN', 'REQUIRES_CHIEFTAIN'),
('PLAYER_IS_HUMAN_WARLORD', 'REQUIRES_PLAYER_IS_HUMAN'),
('PLAYER_IS_HUMAN_WARLORD', 'REQUIRES_WARLORD'),
('PLAYER_IS_HUMAN_PRINCE', 'REQUIRES_PLAYER_IS_HUMAN'),
('PLAYER_IS_HUMAN_PRINCE', 'REQUIRES_PRINCE'),
('PLAYER_IS_HUMAN_KING', 'REQUIRES_PLAYER_IS_HUMAN'),
('PLAYER_IS_HUMAN_KING', 'REQUIRES_KING'),
('PLAYER_IS_HUMAN_EMPEROR', 'REQUIRES_PLAYER_IS_HUMAN'),
('PLAYER_IS_HUMAN_EMPEROR', 'REQUIRES_EMPEROR'),
('PLAYER_IS_HUMAN_IMMORTAL', 'REQUIRES_PLAYER_IS_HUMAN'),
('PLAYER_IS_HUMAN_IMMORTAL', 'REQUIRES_IMMORTAL'),
('PLAYER_IS_HUMAN_DEITY', 'REQUIRES_PLAYER_IS_HUMAN'),
('PLAYER_IS_HUMAN_DEITY', 'REQUIRES_DEITY');
