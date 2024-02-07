javascript:javascript:var DELAY = 1;var autoClicker
StyleElement = document.createElement("style");autoClickerStyleElement.inner
HTML="*{cursor: crosshair !important;}";document.body.appendChild(autoClickerSt
yleElement);function addClicker(e) {if(!e.isTrusted) {return;}if(e.target.
classList.contains("auto-clicker-target")) {e.target.classList.remove("auto-cli
cker-target");} else {e.target.classList.add("auto-clicker-target");}document.body.remove
Child(autoClickerStyleElement);document.body.removeEventListener("click", addClicker);e.pr
eventDefault();autoClick(e.target);}function autoClick(element) {if(element.classList.contain
s("auto-clicker-target")) {element.click();setTimeout(function(){ autoClick(element); }, DELAY)
;}}document.body.addEventListener("click", addClicker, 0);
