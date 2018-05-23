

if('querySelector' in document
     && 'localStorage' in window
     && 'addEventListener' in window) {

	document.querySelector('body').classList.remove('no-js');

	// Javascript mustard cut

	var menuItems = document.querySelectorAll('[data-js-menu]');

	var activateMenu = function (el) {
		var classList = el.parentNode.classList;

		if (classList.contains("site-nav__item--has-submenu")) {
			if (!classList.contains('is-open')) {
				classList.add('is-open');
				el.setAttribute('aria-expanded', "true");
			} else {
				classList.remove('is-open');
				el.setAttribute('aria-expanded', "false");
			}
		}
	};

	Array.prototype.forEach.call(menuItems, function(el, i) {
		el.querySelector('button').addEventListener("click",  function(event) {
			activateMenu(this);
			event.preventDefault();
		});
		//clears menu on tab
		document.addEventListener('keydown', function(event) {
			if (event.keyCode == 9 && document.querySelector('[data-js-menu]').classList.contains('is-open')) {
				activateMenu(this.querySelector('button'));
			};
		});

	});
}
