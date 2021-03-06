��          �      |      �    �  �     �   �  �   c  �   D  �   �  �   �  r  �  �  %	  x   �
  .  1  6   `  5   �  6   �  9     7   >  6   v    �    �  �   �  G   �  h  �  0  `  �   �  �   b    /  �   2    �    �  �      �  �   �  m  _  6   �  8     6   =  8   t  6   �  7   �  E     4  b!  �   �"  O   �#                     
                                       	                                     
        Gets conjugation information corresponding to the given template.

        :param template: string.
            Name of the verb ending pattern.
        :return: OrderedDict or None.
            OrderedDict containing the conjugated suffixes of the template.

         
        Gets verb information and returns a VerbInfo instance.

        :param verb: string.
            Verb to conjugate.
        :return: VerbInfo object or None.

         
        Load and parses the conjugations from xml file.

        :param conjugations_file: string or path object.
            Path to the conjugation xml file.

         
        Load and parses the inflected forms of the tense from xml file.

        :param tense: string.
            The current tense being processed.
        :return: list.
            List of conjugated suffixes.

         
        Load and parses the verbs from xml file.

        :param verbs_file: string or path object.
            Path to the verbs xml file.

         
        Parses XML file

        :param file: FileObject.
            XML file containing the conjugation templates
        :return: OrderedDict.
            An OrderedDict containing all the conjugation templates in the file.

         
        Parses XML file

        :param file: FileObject.
            XML file containing the verbs.
        :return: OrderedDict.
            An OrderedDict containing the verb and its template for all verbs in the file.

         
        | Checks if the verb is a valid verb in the given language.
        | English words are always treated as possible verbs.
        | Verbs in other languages are filtered by their endings.

        :param verb: string.
            The verb conjugate.
        :return: bool.
            True if the verb is a valid verb in the language. False otherwise.

         
        | Detects the allowed endings for verbs in the supported languages.
        | All the supported languages except for English restrict the form a verb can take.
        | As English is much more productive and varied in the morphology of its verbs, any word is allowed as a verb.

        :return: set.
            A set containing the allowed endings of verbs in the target language.

         
        | Populates the inflected forms of the verb.
        | Adds personal pronouns to the inflected verbs.

         
        | Populates the inflected forms of the verb.
        | This is the generic version of this method.
        | It does not add personal pronouns to the conjugated forms.
        | This method can handle any new language if the conjugation structure conforms to the Verbiste XML Schema.

         
    This class defines the English Verb Object.

     
    This class defines the French Verb Object.

     
    This class defines the Italian Verb Object.

     
    This class defines the Portuguese Verb Object.

     
    This class defines the Romanian Verb Object.

     
    This class defines the Spanish Verb Object.

     
    This class defines the Verb Object.

    :param verb_info: VerbInfo Object.
    :param conjug_info: OrderedDict.
    :param subject: string.
        Toggles abbreviated or full pronouns.
        The default value is 'abbrev'.
        Select 'pronoun' for full pronouns.

     
    This class defines the Verbiste verb information structure.

    :param infinitive: string.
        Infinitive form of the verb.
    :param root: string.
        Lexical root of the verb.
    :param template: string.
        Name of the verb ending pattern.

     
    This is the class handling the Verbiste xml files.

    :param language: string.
    | The language of the conjugator. The default value is fr for French.
    | The allowed values are: fr, en, es, it, pt, ro.

     Unsupported language.
The allowed languages are fr, en, es, it, pt, ro. Project-Id-Version: 
POT-Creation-Date: 2018-06-15 21:52+0200
PO-Revision-Date: 2018-06-16 14:30+0200
Language-Team: 
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Generated-By: pygettext.py 1.5
X-Generator: Poedit 2.0.8
Last-Translator: SekouD <sekoud.python>
Plural-Forms: nplurals=2; plural=(n > 1);
Language: fr
 
        Récupère les informations de conjugaison correspondant au modèle donné.

        :param template: string.
            Nom du modèle de fin de verbe.
        :return: OrderedDict or None.
            OrderedDict contenant les suffixes conjugués du modèle.

         
        Récupère les informations du verbe et renvoie une instance de VerbInfo.

        :param verb: string.
            Verbe à conjuguer.
        :return: VerbInfo object or None.

         
        Charge et analyse les conjugaisons à partir du fichier XML.

        :param conjugations_file: string or path object.
            Chemin vers le fichier XML de conjugaison.

         
        Charge et analyse les formes fléchies du temps à partir du fichier xml.

        :param tense: string.
            Le temps en cours de traitement.
        :return: list.
            Liste des suffixes conjugués.

         
        Charge et analyse les verbes du fichier XML.

        :param verbs_file: string or path object.
            Chemin vers le fichier xml des verbes.

         
        Analyse le fichier XML

        :param file: FileObject.
            Fichier XML contenant les modèles de conjugaison
        :return: OrderedDict.
            Un OrderedDict contenant tous les modèles de conjugaison dans le fichier.

         
        Analyse le fichier XML

        :param file: FileObject.
            Fichier XML contenant les verbes.
        :return: OrderedDict.
            Un OrderedDict contenant le verbe et son modèle pour tous les verbes du fichier.

         
        | Vérifie si le verbe est un verbe valide dans la langue donnée.
        | Les mots anglais sont toujours traités comme des verbes possibles.
        | Les verbes dans d'autres langues sont filtrés par leurs terminaisonss.

        :param verb: string.
            Le verbe a conjuguer.
        :return: bool.
            True si le verbe est un verbe valide dans la langue. False sinon.

         
        | Détecte les terminaisonss autorisées pour les verbes dans les langues prises en charge.
        | Toutes les langues prises en charge à l'exception de l'anglais limitent la forme qu'un verbe peut prendre.
        | Comme l'anglais est beaucoup plus productif et varié dans la morphologie de ses verbes, n'importe quel mot est autorisé comme un verbe.

         : return: set.
            Un ensemble contenant les terminaisons autorisées des verbes dans la langue cible.

         
        | Remplit les formes fléchies du verbe.
        | Ajoute les pronoms personnels aux verbes fléchis.

         
        | Remplit les formes fléchies du verbe.
        | C'est la version générique de cette méthode.
        | Cette méthode n'ajoute pas de pronoms personnels aux formes conjuguées.
        | Cette méthode peut gérer n'importe quel nouvelle langue si la structure de conjugaison est conforme au schéma XML de Verbiste.

         
    Cette classe définit l'objet Verb anglais.

     
    Cette classe définit l'objet Verb français.

     
    Cette classe définit l'objet Verb italien.

     
    Cette classe définit l'objet Verb portugais.

     
    Cette classe définit l'objet Verb roumain.

     
    Cette classe définit l'objet Verb espagnol.

     
    Cette classe définit l'objet Verb.

    :param verb_info: VerbInfo Object.
    :param conjug_info: OrderedDict.
    :param subject: string.
        Bascule les pronoms abrégés ou complets.
        La valeur par défaut est 'abbrev'.
        Sélectionnez "pronom" pour les pronoms complets.

     
    Cette classe définit la structure d'information du verbe dans Verbiste.

    :param infinitive: string.
        Forme infinitive du verbe.
    :param root: string.
        Racine lexicale du verbe.
    :param template: string.
        Nom du modèle de terminaison de verbe.

     
    C'est la classe qui manipule les fichiers XML de Verbiste.

    :param language: string.
     | La langue du conjugateur. La valeur par défaut est fr pour le français.
     | Les valeurs autorisées sont: fr, en, es, it, pt, ro.

     Langue non prise en charge
Les langues autorisées sont fr, en, es, it, pt, ro. 