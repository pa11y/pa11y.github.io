

if('querySelector' in document
     && 'localStorage' in window
     && 'addEventListener' in window) {

	// Javascript mustard cut

	var menuItems = document.querySelectorAll('[data-js-menu]');

	var activateMenu = function (el) {

		var classList = el.parentNode.parentNode.classList;

		if (classList.contains("site-navigation__item--has-submenu")) {
			if (!classList.contains('open')) {
				classList.add('open');
				el.classList.add('site-navigation__submenu-button--transform');
				el.setAttribute('aria-expanded', "true");
				el.querySelector('.visually-hidden').innerText = 'hide submenu';
			} else {
				classList.remove('open');
				el.classList.remove('site-navigation__submenu-button--transform');
				el.setAttribute('aria-expanded', "false");
				el.querySelector('.visually-hidden').innerText = 'show submenu';
			}
		}
	};

	Array.prototype.forEach.call(menuItems, function(el, i) {
		var btn = '<button class="site-navigation__submenu-button" tabindex="-1"><span><span class="visually-hidden">show submenu</span></span></button>';
		var topLevelLink = el.querySelector('a');
		topLevelLink.innerHTML = topLevelLink.innerHTML + ' ' + btn;


		el.querySelector('a button').addEventListener("click",  function(event) {
			activateMenu(this);
			event.preventDefault();
		});
		//clears menu on tab
		document.addEventListener('keydown', function(event) {
			if (event.keyCode == 9 && document.querySelector('[data-js-menu]').classList.contains('open')) {
					activateMenu(this.querySelector('a button'));
			};
		});

	});
}
