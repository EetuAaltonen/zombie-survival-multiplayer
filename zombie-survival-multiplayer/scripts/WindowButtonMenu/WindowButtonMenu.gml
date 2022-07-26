function WindowButtonMenu(_elementId, _position, _size, _backgroundColor, _buttonsData, _buttonStyle) : WindowElement(_elementId, _position, _size, _backgroundColor) constructor
{
	buttonsData = _buttonsData;
	buttonStyle = _buttonStyle;
	
	initButtons = true;
	
	static UpdateContent = function()
	{
		if (initButtons)
		{
			initButtons = false;
			var buttonElements = ds_list_create();
			var buttonCount = ds_list_size(buttonsData);
			var buttonMargin = (buttonStyle.margin + buttonStyle.size.h);
			var buttonPosition = new Vector2(-(buttonStyle.size.w * 0.5), -(buttonMargin * (buttonCount * 0.5)));
			for (var i = 0; i < buttonCount; i++)
			{
				var buttonData = buttonsData[| i];
				var newButton = new WindowButton(
					("MainMenu" + buttonData.title),
					new Vector2(buttonPosition.X, buttonPosition.Y),
					buttonStyle.size, buttonStyle.color, buttonData.title, buttonData.onClick
				);
				ds_list_add(buttonElements, newButton);
				buttonPosition.Y += buttonMargin;
			}
			AddChildElements(buttonElements);
		} else {
			UpdateChildElements();
		}
	}
	
	static DrawContent = function()
	{
		if (!initButtons)
		{
			var buttonCount = ds_list_size(childElements);
			for (var i = 0; i < buttonCount; i++)
			{
				var button = childElements[| i];
				button.Draw();
			}
		}
	}
}