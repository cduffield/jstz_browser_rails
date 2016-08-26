(function() {
  Cookies.set("browser.timezone", jstz.determine().name(), { path: '/' });
})();
