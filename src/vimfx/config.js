const { classes: Cc, interfaces: Ci, utils: Cu } = Components

function copyToClipboard (str) {
  const clipboardHelper = Cc['@mozilla.org/widget/clipboardhelper;1']
    .getService(Ci.nsIClipboardHelper)

  clipboardHelper.copyString(str)
}

vimfx.addCommand({
  name: 'yank_all',
  description: 'Yank all tabs'
}, ({ vim }) => {
  const urls = vim.window.getBrowser().browsers
    .map(browser => browser.currentURI.spec)

  copyToClipboard(urls.join('\n'))

  vim.notify(`Copied ${urls.length} URLs`)
})

vimfx.set('custom.mode.normal.yank_all', 'gya')
