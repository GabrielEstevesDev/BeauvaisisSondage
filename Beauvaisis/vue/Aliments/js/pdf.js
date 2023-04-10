// Importation de la bibliothèque pdfMake

// Définition du contenu du document PDF
var docDefinition = {
  content: [
    { text: "Exemple de document PDF", style: "header" },
    {
      text: "Ceci est un exemple de document PDF créé avec pdfMake.",
      style: "subheader",
    },
    { text: "Contenu du document", style: "body" },
  ],
  styles: {
    header: {
      fontSize: 18,
      bold: true,
      margin: [0, 0, 0, 10],
    },
    subheader: {
      fontSize: 14,
      bold: true,
      margin: [0, 10, 0, 5],
    },
    body: {
      fontSize: 12,
      margin: [0, 5, 0, 10],
    },
  },
};

// Fonction pour télécharger le document PDF
function downloadPdf() {
  pdfMake.createPdf(docDefinition).download();
}

// Bouton pour télécharger le document PDF
var button = document.createElement("button");
button.innerHTML = "Télécharger PDF";
button.addEventListener("click", downloadPdf);
document.body.appendChild(button);
