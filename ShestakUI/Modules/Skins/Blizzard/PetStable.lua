local T, C, L = unpack(select(2, ...))
if C.skins.blizzard_frames ~= true then return end

----------------------------------------------------------------------------------------
--	PetStable skin
----------------------------------------------------------------------------------------
local function LoadSkin()
	PetStableFrame:StripTextures(true)
	PetStableLeftInset:StripTextures(true)
	PetStableFrameInset:StripTextures(true)
	PetStableBottomInset:StripTextures(true)
	PetStableModelShadow:StripTextures(true)

	PetStableFrame:CreateBackdrop("Transparent")
	PetStableFrame.backdrop:Point("TOPLEFT", -2, 2)
	PetStableFrame.backdrop:Point("BOTTOMRIGHT", 2, -2)

	T.SkinRotateButton(PetStableModelRotateLeftButton)
	T.SkinRotateButton(PetStableModelRotateRightButton)
	PetStableModelRotateRightButton:ClearAllPoints()
	PetStableModelRotateRightButton:Point("LEFT", PetStableModelRotateLeftButton, "RIGHT", 3, 0)

	T.SkinNextPrevButton(PetStablePrevPageButton)
	T.SkinNextPrevButton(PetStableNextPageButton)

	T.SkinCloseButton(PetStableFrameCloseButton)

	for i = 1, 5 do
		local button = _G["PetStableActivePet"..i]
		local icon = _G["PetStableActivePet"..i.."IconTexture"]

		button:StripTextures()
		button:StyleButton(false)
		button:SetTemplate("Default")

		icon:SetTexCoord(0.1, 0.9, 0.1, 0.9)
		icon:ClearAllPoints()
		icon:Point("TOPLEFT", 2, -2)
		icon:Point("BOTTOMRIGHT", -2, 2)
	end

	for i = 1, 10 do
		local button = _G["PetStableStabledPet"..i]
		local icon = _G["PetStableStabledPet"..i.."IconTexture"]

		button:StripTextures()
		button:StyleButton(false)
		button:SetTemplate("Default")

		icon:SetTexCoord(0.1, 0.9, 0.1, 0.9)
		icon:ClearAllPoints()
		icon:Point("TOPLEFT", 2, -2)
		icon:Point("BOTTOMRIGHT", -2, 2)
	end

	PetStableSelectedPetIcon:SetTexCoord(0.1, 0.9, 0.1, 0.9)
	--PetStableDietTexture:SetTexCoord(0.08593750, 0.13476563, 0.73437500, 0.77929688)
end

tinsert(T.SkinFuncs["ShestakUI"], LoadSkin)