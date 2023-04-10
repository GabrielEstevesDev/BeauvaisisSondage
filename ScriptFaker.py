import MySQLdb
from faker import Faker

# Connexion à la base de données MySQL
db = MySQLdb.connect(host="localhost", user="root", passwd="", db="saewebtest")
cursor = db.cursor()

# Configuration de Faker pour la génération de données aléatoires
fake = Faker()

# Boucle pour générer 100 utilisateurs
for i in range(100):
    # Générer des données aléatoires pour chaque utilisateur
    login = fake.user_name()
    email = fake.email()
    mdphash = fake.password(length=10, special_chars=True, digits=True, upper_case=True, lower_case=True)

    # Insérer les données dans la table `utilisateurs`
    add_user = ("INSERT INTO utilisateurs "
                "(login, email, mdphash) "
                "VALUES (%s, %s, %s)")
    data_user = (login, email, mdphash)
    cursor.execute(add_user, data_user)

import random  # ajout de l'importation du module random


# récupération des codes des aliments depuis la table 'aliments'
cursor.execute("SELECT alim_code FROM aliments")
aliments = cursor.fetchall()
cursor.execute("SELECT id FROM utilisateurs")
idU = cursor.fetchall()
# insertion de 100 fausses lignes dans la table 'sondage'
for i in range(100):
    administre = idU[i]
    nom = fake.name()
    aliments_choices = random.sample(aliments, k=10)
    aliment1 = aliments_choices[0][0]
    aliment2 = aliments_choices[1][0]
    aliment3 = aliments_choices[2][0]
    aliment4 = aliments_choices[3][0]
    aliment5 = aliments_choices[4][0]
    aliment6 = aliments_choices[5][0]
    aliment7 = aliments_choices[6][0]
    aliment8 = aliments_choices[7][0]
    aliment9 = aliments_choices[8][0]
    aliment10 = aliments_choices[9][0]
    sql = "INSERT INTO sondage (Administre, Nom, Aliment1, Aliment2, Aliment3, Aliment4, Aliment5, Aliment6, Aliment7, Aliment8, Aliment9, Aliment10, NutriScore, ScoreSante) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"
    val = (administre, nom, aliment1, aliment2, aliment3, aliment4, aliment5, aliment6, aliment7, aliment8, aliment9, aliment10, 'D', 0)
    cursor.execute(sql, val)
# Fermeture de la connexion à la base de données MySQL
db.commit()
cursor.close()
db.close()
# Fermeture de la connexion à la base de données MySQL