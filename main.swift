// Création du tableau de mots
let moyensDeTransport = ["bateau", "voiture", "vélo", "avion", "bus", "train", "moto"]
// Affichage des mots aux indices 2, 3 et 20 (si l'indice n'existe pas, affiche nil)
print(moyensDeTransport[ 2])
print(moyensDeTransport[ 3])
// Affichage de tous les mots de la liste sous la forme "Moyen de transport numéro [i] est [mot]"
print("\nAffichage des moyens de transport:")
for (index, moyen) in moyensDeTransport.enumerated() {
    print("Moyen de transport numéro \(index) est \(moyen)")
}
// Affichage des mots aux indices impairs 
print("\nMots aux indices impairs:")
for (index, moyen) in moyensDeTransport.enumerated() {
    if index % 2 != 0 {
        print(moyen)
    }
}
// Affichage des mots aux indices  pairs
print("\nMots aux indices pairs:")
for (index, moyen) in moyensDeTransport.enumerated() {
    if index % 2 == 0 {
        print(moyen)
    }
}
// Inversion de l'ordre du tableau
let reversedArray = moyensDeTransport.reversed()
print("\nTableau inversé:", reversedArray)
// Insertion des mots 'camion' et 'taxi'
var newArray = moyensDeTransport
newArray.insert("camion", at: 0) // En tête de liste
newArray.append("taxi") // En fin de liste
print("\nTableau avec 'camion' et 'taxi' ajoutés:", newArray)
// À partir de l'indice 2
var newArray1 = moyensDeTransport
newArray1.insert(contentsOf: ["camion", "taxi"], at: 2) 
print("\nTableau avec camion et taxi insérés:", newArray1)
// Modélisation des personnes
let personnes: [[String: Any]] = [
    ["nom": "Pierre", "sexe": "M", "annee_naissance": 2010],
    ["nom": "Michelle", "sexe": "F", "annee_naissance": 2008],
    ["nom": "Estelle", "sexe": "F", "annee_naissance": 2005],
    ["nom": "Quentin", "sexe": "M", "annee_naissance": 2010],
    ["nom": "Francois", "sexe": "M", "annee_naissance": 1980],
    ["nom": "Cristelle", "sexe": "F", "annee_naissance": 1995]
]
// Affichage du nom de toutes les personnes avec leur année de naissance
print("Affichage du nom et de l'année de naissance:")
for personne in personnes {
    let nom = personne["nom"] as! String
    let anneeNaissance = personne["annee_naissance"] as! Int
    let sexe = personne["sexe"] as! String
    let genre = sexe == "M" ? "est né" : "est née"
    print("\(nom) \(genre) en \(anneeNaissance)")
}
// Affichage des noms de toutes les personnes majeures (né en 2004 ou avant)
print("\nPersonnes majeures:")
for personne in personnes {
    let anneeNaissance = personne["annee_naissance"] as! Int
    if anneeNaissance <= 2004 {
        print(personne["nom"]!)
    }
}

// Affichage des filles puis des garçons
print("\nFilles:")
for personne in personnes {
    let sexe = personne["sexe"] as! String
    if sexe == "F" {
        print(personne["nom"]!)
    }
}

print("\nGarçons:")
for personne in personnes {
    let sexe = personne["sexe"] as! String
    if sexe == "M" {
        print(personne["nom"]!)
    }
}

// Ajout d'une nouvelle personne dans la liste
let nouvellePersonne: [String: Any] = ["nom": "jogyo", "sexe": "M", "annee_naissance": 2003]
var personnesModifiees = personnes
personnesModifiees.append(nouvellePersonne)

// Affichage de la liste mise à jour
print("\nListe mise à jour avec une nouvelle personne:")
print(personnesModifiees)