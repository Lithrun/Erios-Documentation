// Progressive enhancement for the progress report (_layouts/progress.html):
// tabs, chart tooltips, and click-through from a chart row to its task list.
// Without JavaScript every panel simply renders in order.
(function () {
  var root = document.getElementById('progress-report');
  if (!root) return;
  root.classList.remove('no-js');

  // ---- tabs
  var tabs = Array.prototype.slice.call(root.querySelectorAll('[role="tab"]'));
  var panels = tabs.map(function (t) { return document.getElementById(t.getAttribute('aria-controls')); });

  function select(tab, focus) {
    tabs.forEach(function (t, i) {
      var on = t === tab;
      t.setAttribute('aria-selected', on ? 'true' : 'false');
      t.tabIndex = on ? 0 : -1;
      if (panels[i]) panels[i].hidden = !on;
    });
    if (focus) tab.focus();
    try { history.replaceState(null, '', '#' + tab.id.replace('pr-tab-', '')); } catch (e) { /* ignore */ }
  }

  tabs.forEach(function (t, i) {
    t.addEventListener('click', function () { select(t); });
    t.addEventListener('keydown', function (e) {
      if (e.key === 'ArrowRight') select(tabs[(i + 1) % tabs.length], true);
      if (e.key === 'ArrowLeft') select(tabs[(i - 1 + tabs.length) % tabs.length], true);
    });
  });

  var initial = null;
  var hash = location.hash.replace('#', '');
  if (hash) {
    initial = document.getElementById('pr-tab-' + hash);
    if (!initial) {
      // A link straight to an area group (#pr-bl-core) should open its tab.
      var target = document.getElementById(hash);
      var panel = target && target.closest('.pr-panel');
      if (panel) initial = document.getElementById(panel.getAttribute('aria-labelledby'));
    }
  }
  select(initial || tabs[0]);

  // ---- chart: click an area label to jump to its task list
  root.querySelectorAll('.pr-cat').forEach(function (btn) {
    btn.addEventListener('click', function () {
      var target = document.getElementById(btn.getAttribute('data-target'));
      if (!target) return;
      var panel = target.closest('.pr-panel');
      var tab = panel && document.getElementById(panel.getAttribute('aria-labelledby'));
      if (tab) select(tab);
      target.scrollIntoView({ behavior: 'smooth', block: 'start' });
    });
  });

  // ---- chart: tooltip on hover / focus
  var tip = document.getElementById('pr-tip');
  function show(el) {
    if (!tip) return;
    tip.textContent = el.getAttribute('data-tip');
    tip.classList.add('is-on');
    var r = el.getBoundingClientRect();
    var left = r.left + r.width / 2 - tip.offsetWidth / 2;
    left = Math.max(8, Math.min(left, window.innerWidth - tip.offsetWidth - 8));
    tip.style.left = left + 'px';
    tip.style.top = (r.top - tip.offsetHeight - 8) + 'px';
  }
  function hide() { if (tip) tip.classList.remove('is-on'); }
  root.querySelectorAll('.pr-track').forEach(function (el) {
    el.addEventListener('mouseenter', function () { show(el); });
    el.addEventListener('mouseleave', hide);
    el.addEventListener('focus', function () { show(el); });
    el.addEventListener('blur', hide);
  });
  window.addEventListener('scroll', hide, { passive: true });
})();
