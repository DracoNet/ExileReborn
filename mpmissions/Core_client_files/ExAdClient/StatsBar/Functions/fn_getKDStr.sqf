/*  
	fn_getClanStr.sqf
	
	Copyright 2016 Jan Babor

	Licensed under the Apache License, Version 2.0 (the "License");
	you may not use this file except in compliance with the License.
	You may obtain a copy of the License at

		http://www.apache.org/licenses/LICENSE-2.0

	Unless required by applicable law or agreed to in writing, software
	distributed under the License is distributed on an "AS IS" BASIS,
	WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
	See the License for the specific language governing permissions and
	limitations under the License.

*/
private["_request","_death","_img","_text"];

_request = [];

_death = if(ExileClientPlayerDeaths == 0)then{0.001}else{ExileClientPlayerDeaths};

_img = [ExAd_SB_ICON_KD] call ExAd_fnc_formatSBImage;
_text = [ExileClientPlayerKills / _death, 2] call ExileClient_util_math_round;

_request pushBack [_img,_text];

if(ExAd_SB_COMPONENTS_ACTIVE_COLORS)then{
	_request pushBack ([0,2,_text] call ExAd_fnc_getSBColor)
};

_request call ExAd_fnc_formatSBOutput