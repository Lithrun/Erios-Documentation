document.addEventListener("DOMContentLoaded", () => {
  const hosts = [];

  document.querySelectorAll("div.highlighter-rouge, figure.highlight").forEach((host) => {
    hosts.push(host);
  });

  document.querySelectorAll("pre").forEach((pre) => {
    if (pre.closest(".highlighter-rouge, figure.highlight")) {
      return;
    }

    const code = pre.firstElementChild;
    if (!code || code.tagName !== "CODE") {
      return;
    }

    if (!/\blanguage-/.test(code.className)) {
      return;
    }

    hosts.push(pre);
  });

  hosts.forEach((host) => {
    if (host.dataset.copyEnhanced === "true") {
      return;
    }

    const code = host.querySelector("pre code") || host.querySelector("code");
    if (!code) {
      return;
    }

    host.dataset.copyEnhanced = "true";
    host.classList.add("code-copy-host");

    const button = document.createElement("button");
    button.type = "button";
    button.className = "code-copy-button";
    button.setAttribute("aria-label", "Copy code");

    const label = document.createElement("span");
    label.className = "code-copy-button-label";
    label.textContent = "Copy";
    button.appendChild(label);

    const copyText = async () => {
      const text = code.textContent ?? "";

      if (navigator.clipboard && window.isSecureContext) {
        await navigator.clipboard.writeText(text);
        return;
      }

      const area = document.createElement("textarea");
      area.value = text;
      area.setAttribute("readonly", "");
      area.style.position = "absolute";
      area.style.left = "-9999px";
      document.body.appendChild(area);
      area.select();
      document.execCommand("copy");
      document.body.removeChild(area);
    };

    let resetTimer = null;
    button.addEventListener("click", async () => {
      try {
        await copyText();
        button.dataset.copyState = "copied";
        label.textContent = "Copied";

        window.clearTimeout(resetTimer);
        resetTimer = window.setTimeout(() => {
          delete button.dataset.copyState;
          label.textContent = "Copy";
        }, 1600);
      } catch (_error) {
        button.dataset.copyState = "copied";
        label.textContent = "Failed";

        window.clearTimeout(resetTimer);
        resetTimer = window.setTimeout(() => {
          delete button.dataset.copyState;
          label.textContent = "Copy";
        }, 1600);
      }
    });

    host.appendChild(button);
  });
});
