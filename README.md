# Flutter TodoList App with Firebase Authentication

Une application TodoList moderne développée avec Flutter et intégrée avec Firebase Authentication.

## 🚀 Fonctionnalités

- ✅ **Gestion des tâches** : Ajouter, supprimer et marquer les tâches comme terminées
- 🔐 **Authentification Firebase** : Inscription et connexion sécurisées
- 📱 **Interface responsive** : Compatible web, mobile et desktop
- 🎨 **Design moderne** : Interface utilisateur intuitive et élégante
- 🔄 **État en temps réel** : Synchronisation automatique avec Firebase

## 📋 Prérequis

- Flutter SDK (version 3.5.3 ou supérieure)
- Dart SDK
- Un projet Firebase configuré
- Un navigateur web moderne (pour le développement web)

## 🛠️ Installation

1. **Cloner le repository**
   ```bash
   git clone https://github.com/YoussefLouzi/FLUTTER-TODOLIST.git
   cd FLUTTER-TODOLIST
   ```

2. **Installer les dépendances**
   ```bash
   flutter pub get
   ```

3. **Configuration Firebase**
   - Créez un projet Firebase sur [Firebase Console](https://console.firebase.google.com/)
   - Activez l'authentification par email/mot de passe
   - Copiez `lib/firebase_options_template.dart` vers `lib/firebase_options.dart`
   - Remplacez les valeurs placeholder par vos vraies clés Firebase :
     ```dart
     static const FirebaseOptions web = FirebaseOptions(
       apiKey: 'VOTRE_API_KEY',
       appId: 'VOTRE_APP_ID',
       messagingSenderId: 'VOTRE_SENDER_ID',
       projectId: 'VOTRE_PROJECT_ID',
       authDomain: 'VOTRE_PROJECT_ID.firebaseapp.com',
       storageBucket: 'VOTRE_PROJECT_ID.appspot.com',
     );
     ```

4. **Lancer l'application**
   ```bash
   # Pour le web
   flutter run -d chrome
   
   # Pour Windows
   flutter run -d windows
   
   # Pour Android
   flutter run -d android
   ```

## 📱 Utilisation

### Authentification
1. **Inscription** : Créez un nouveau compte avec email/mot de passe
2. **Connexion** : Connectez-vous avec vos identifiants
3. **Déconnexion** : Utilisez le bouton de déconnexion dans l'AppBar

### Gestion des tâches
1. **Ajouter une tâche** : Utilisez le bouton "+" pour ajouter une nouvelle tâche
2. **Marquer comme terminée** : Cochez la case à côté de la tâche
3. **Supprimer une tâche** : Utilisez le bouton de suppression

## 🏗️ Architecture

```
lib/
├── main.dart              # Point d'entrée de l'application
├── application.dart       # Configuration de l'application
├── auth_verify.dart       # Gestion de l'authentification
├── home.dart             # Écran principal après connexion
├── tasks.dart            # Interface de gestion des tâches
├── task.dart             # Modèle de données des tâches
├── firebase_options.dart # Configuration Firebase (non versionné)
└── firebase_options_template.dart # Template de configuration
```

## 📦 Dépendances principales

- `flutter`: Framework de développement
- `firebase_core`: Core Firebase SDK
- `firebase_auth`: Authentification Firebase
- `uuid`: Génération d'identifiants uniques

## 🔧 Configuration Firebase

### Étapes de configuration :

1. **Créer un projet Firebase**
2. **Activer Authentication**
   - Aller dans Authentication > Sign-in method
   - Activer "Email/Password"
3. **Obtenir les clés de configuration**
   - Aller dans Project Settings
   - Ajouter une app Web
   - Copier les clés de configuration

### Structure des clés Firebase :
```dart
apiKey: "Clé API pour l'authentification"
appId: "Identifiant unique de l'application"
messagingSenderId: "ID pour les notifications push"
projectId: "Identifiant du projet Firebase"
authDomain: "Domaine d'authentification"
storageBucket: "Bucket de stockage"
```

## 🚀 Déploiement

### Web
```bash
flutter build web
# Les fichiers sont générés dans build/web/
```

### Android
```bash
flutter build apk
# Le fichier APK est généré dans build/app/outputs/flutter-apk/
```

### Windows
```bash
flutter build windows
# Les fichiers sont générés dans build/windows/runner/Release/
```

## 🤝 Contribution

1. Fork le projet
2. Créez une branche pour votre fonctionnalité (`git checkout -b feature/AmazingFeature`)
3. Committez vos changements (`git commit -m 'Add some AmazingFeature'`)
4. Push vers la branche (`git push origin feature/AmazingFeature`)
5. Ouvrez une Pull Request

## 📄 Licence

Ce projet est sous licence MIT. Voir le fichier `LICENSE` pour plus de détails.

## 👨‍💻 Auteur

**Youssef Louzi**
- GitHub: [@YoussefLouzi](https://github.com/YoussefLouzi)

## 🙏 Remerciements

- Flutter Team pour le framework
- Firebase Team pour les services backend
- La communauté Flutter pour les ressources et l'aide

---

⭐ N'hésitez pas à donner une étoile si ce projet vous a aidé !