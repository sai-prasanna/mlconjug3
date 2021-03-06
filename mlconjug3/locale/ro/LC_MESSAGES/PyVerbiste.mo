��          �      |      �    �  �     �   �  �   c  �   D  �   �  �   �  r  �  �  %	  x   �
  .  1  6   `  5   �  6   �  9     7   >  6   v    �    �  �   �  G   �  �  �  3  �  �   �  �   �  �   X  �   X    
    #  �  :  �  �  �   �  Q  a  >   �  C   �  <   6  >   s  >   �  <   �  F  .   ;  u!  �   �"  @   �#                     
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
PO-Revision-Date: 2018-06-16 14:41+0200
Language-Team: 
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Generated-By: pygettext.py 1.5
X-Generator: Poedit 2.0.8
Last-Translator: SekouD <sekoud.python>
Plural-Forms: nplurals=3; plural=(n==1 ? 0 : (n==0 || (n%100 > 0 && n%100 < 20)) ? 1 : 2);
Language: ro
 
        Obține informații de conjugare corespunzătoare șablonului dat.

        :param template: string.
            Numele modelului de terminare a verbului.
        :return: OrderedDict or None.
            OrdonatDict conținând sufixele conjugate ale șablonului.

         
        Obține informații verbale și returnează o instanță VerbInfo.

        :param verb: string.
            Verbul să se conjugă.
        :return: VerbInfo object or None.

         
        Încarcă și analizează conjugările din fișierul xml.

        :param conjugations_file: string or path object.
            Calea spre fișierul xml de conjugare.

        
        Încarcă și analizează formele inflexionate ale timpului din fișierul xml.

        :param tense: string.
            Timpul curent este procesat.
        :return: list.
            Lista sufixelor conjugate.

         
        Încărcați și parse verbele din fișierul xml.

        :param verbs_file: string or path object.
            Calea spre fișierul xml verbale.

         
        Parsează fișierul XML

        :param file: FileObject.
            Fișier XML care conține șabloanele de conjugare
        :return: OrderedDict.
            Un ordin ordonat care conține toate șabloanele de conjugare din fișier.

         
        Parsează fișierul XML

        :param file: FileObject.
            Fișier XML care conține verbele.
        :return: OrderedDict.
            Un ordin ordonat conținând verbul și șablonul său pentru toate verbele din fișier.

         
        | Verifică dacă verbul este un verb valabil în limba dată.
        | Cuvintele în limba engleză sunt tratate întotdeauna ca verbe posibile.
        | Verbe în alte limbi sunt filtrate după terminările lor.

        :param verb: string.
            Verbul conjugat.
        :return: bool.
            Adevărat dacă verbul este un verb valabil în limba respectivă. Fals altfel.

         
        | Detectează terminațiile permise pentru verbe în limbile acceptate.
        | Toate limbile acceptate, cu excepția limbii engleze, restricționează forma pe care o poate lua un verb.
        | Deoarece limba engleză este mult mai productivă și variată în morfologia verbelor sale, orice cuvânt este permis ca verb.

        :return: set.
            Un set care conține terminalele permise ale verbelor în limba țintă.

         
        | Populează formele inflamate ale verbului.
        | Adaugă pronume personale la verbele inflaționate.

         
        | Populează formele inflamate ale verbului.
        | Aceasta este versiunea generică a acestei metode.
        | Nu adaugă pronume personale forțelor conjugate.
        | Această metodă poate gestiona orice limbă nouă dacă structura de conjugare este conformă cu Schema XML Verbiste.

         
    Această clasă definește Obiectul englez de Verb.

     
    Această clasă definește Obiectul de Verb franțuzesc.

     
    Această clasă definește Obiectul Verb italian.

     
    Această clasă definește Obiectul Verb portughez.

     
    Această clasă definește Obiectul Verb românesc.

     
    Această clasă definește Obiectul Verb spaniol.

     
    Această clasă definește obiectul Verb.

    :param verb_info: VerbInfo Object.
    :param conjug_info: OrderedDict.
    :param subject: string.
        Comută denumiri abstracte sau complete.
        Valoarea implicită este "abbrev".
        Selectați "pronume" pentru pronume complet.

     
    Această clasă definește structura informațională a Verbiste.

    :param infinitive: string.
        Forma infinitivă a verbului.
    :param root: string.
        Rădăcina lexicală a verbului.
    :param template: string.
        Numele modelului de terminare a verbului.

     
    Aceasta este clasa care manipulează fișierele xml Verbiste.

    :param language: string.
    | Limba conjugatorului. Valoarea implicită este fr pentru franceză.
    | Valorile admise sunt: fr, en, es, it, pt, ro.

     Limba neacceptată.
Limbile permise sunt fr, en, es, it, pt, ro. 