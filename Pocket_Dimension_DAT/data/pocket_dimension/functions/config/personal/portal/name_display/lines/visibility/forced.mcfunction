#> Called by pocket_dimension:config/personal/portal/name_display/lines/visibility

execute if score #pd.config.global.portal.name_display.visible PDFlag matches 1 run tellraw @s [{"text": ""}, {"font": "pocket_dimension:icons", "translate": "pd.icon.chat_section.config.continue"}, {"text": " Display your name on portal: "}, {"font": "pocket_dimension:icons", "translate": "pd.icon.button.show", "hoverEvent": {"action": "show_text", "value": [{"text": "Current setting: "}, {"text": "SHOW", "color": "#69ca73"}, {"text": "\nEnforced by global config", "color": "#ffd12f"}]}}]
execute unless score #pd.config.global.portal.name_display.visible PDFlag matches 1 run tellraw @s [{"text": ""}, {"font": "pocket_dimension:icons", "translate": "pd.icon.chat_section.config.continue"}, {"text": " Display your name on portal: "}, {"font": "pocket_dimension:icons", "translate": "pd.icon.button.hide", "hoverEvent": {"action": "show_text", "value": [{"text": "Current setting: "}, {"text": "HIDE", "color": "#c44949"}, {"text": "\nEnforced by global config", "color": "#ffd12f"}]}}]