// Progressive enhancement for the progress report (_layouts/progress.html):
// the phase switcher and each phase's tabs, with the open one kept in the URL
// (#release, #demo-done). Without JavaScript every panel simply renders in order.
(function () {
  var root = document.getElementById('progress-report');
  if (!root) return;
  root.classList.remove('no-js');

  function tabsOf(list) {
    return Array.prototype.slice.call(list.querySelectorAll('[role="tab"]'));
  }

  function select(tab, focus) {
    tabsOf(tab.closest('[role="tablist"]')).forEach(function (t) {
      var on = t === tab;
      t.setAttribute('aria-selected', on ? 'true' : 'false');
      t.tabIndex = on ? 0 : -1;
      var panel = document.getElementById(t.getAttribute('aria-controls'));
      if (panel) panel.hidden = !on;
    });
    if (focus) tab.focus();
  }

  function remember(tab) {
    try { history.replaceState(null, '', '#' + tab.id.replace(/^pr-(phase|tab)-/, '')); } catch (e) { /* ignore */ }
  }

  // Opens every panel around an element, outermost first.
  function reveal(el) {
    var chain = [];
    for (var p = el.closest('[role="tabpanel"]'); p; p = p.parentElement.closest('[role="tabpanel"]')) chain.unshift(p);
    chain.forEach(function (panel) {
      var tab = root.querySelector('[aria-controls="' + panel.id + '"]');
      if (tab) select(tab);
    });
  }

  Array.prototype.forEach.call(root.querySelectorAll('[role="tablist"]'), function (list) {
    var tabs = tabsOf(list);
    tabs.forEach(function (t, i) {
      t.addEventListener('click', function () { select(t); remember(t); });
      t.addEventListener('keydown', function (e) {
        var next = null;
        if (e.key === 'ArrowRight') next = tabs[(i + 1) % tabs.length];
        if (e.key === 'ArrowLeft') next = tabs[(i - 1 + tabs.length) % tabs.length];
        if (next) { select(next, true); remember(next); }
      });
    });
    var initial = tabs.filter(function (t) { return t.getAttribute('aria-selected') === 'true'; })[0];
    select(initial || tabs[0]);
  });

  // An open info box closes when clicking elsewhere or pressing Escape.
  var infos = Array.prototype.slice.call(root.querySelectorAll('.pr-info'));
  document.addEventListener('click', function (e) {
    infos.forEach(function (d) { if (d.open && !d.contains(e.target)) d.open = false; });
  });
  document.addEventListener('keydown', function (e) {
    if (e.key !== 'Escape') return;
    infos.forEach(function (d) {
      if (!d.open) return;
      d.open = false;
      d.querySelector('summary').focus();
    });
  });

  // #release opens a phase, #demo-done a tab inside one, #demo-todo-core a group.
  var hash = decodeURIComponent(location.hash.slice(1));
  if (hash) {
    var target = document.getElementById('pr-phase-' + hash) ||
      document.getElementById('pr-tab-' + hash) ||
      document.getElementById('pr-' + hash);
    if (target) {
      reveal(target);
      if (target.getAttribute('role') === 'tab') select(target);
    }
  }
})();
