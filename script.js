// Get the links and the content container
const links = document.querySelectorAll('.navitem');
const contentContainer = document.getElementById('content-container');

// Add event listeners to the links
links.forEach((link) => {
  link.addEventListener('click', (e) => {
    e.preventDefault();
    const linkId = link.id;
    const htmlFile = 'pages/' + linkId.replace('-link', '.html').toLowerCase();
    loadContent(htmlFile);
  });
});

window.addEventListener('load', () => {
  loadContent('pages/inicio.html');
});

// Function to load the content
function loadContent(htmlFile) {
  fetch(htmlFile)
    .then((response) => response.text())
    .then((html) => {
      contentContainer.innerHTML = html;
    }).catch(console.log);
}
