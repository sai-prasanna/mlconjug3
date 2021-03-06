��    %      D  5   l      @  �   A    �  �     �   �  �   ]  �   >  �   �  �   �  �   �	  �   e
    7  �   V  r    �  �  �     x   �  .  4  a  c  6   �  5   �  6   2  9   i  7   �  6   �        +  �   8  �    �   �  &  �  H  �     .   l   K   -   �   2   �   G   !  s  a!  �   �"  3  �#  �   �$  �   �%  �   H&  �   <'  	  �'    �(  �   �)  �   �*  W  �+  �   -  �  .  �  �/  �   �1  w   32  R  �2  �  �3  :   �6  ;   7  ;   Q7  =   �7  9   �7  ;   8  ?  A8  9  �9  �   �:    �;    �=  |  �>  �  ^A  "   D  w   (D  5   �D  5   �D  G   E                                                            !          
                     $            #   "       %                                           	                       
        Assigns the provided pre-trained scikit-learn model to be able to conjugate unknown verbs.

        :param model: scikit-learn Classifier or Pipeline.

         
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
        Parses a verb and returns the ending ngrams.

        :param verb: string.
            Verb to vectorize.
        :return: list.
            Final ngrams of the verb.
         
        Predicts the conjugation class of the provided list of verbs.

        :param verbs: list.
            List of verbs.
        :return: list.
            List of predicted conjugation groups.

         
        Splits the data into a training and a testing set.

        :param threshold: int.
            Minimum size of conjugation class to be split.
        :param proportion: float.
            Proportion of samples in the training set.
            Must be between 0 and 1.

         
        Trains the model on the supplied samples and labels.

        :param samples: list.
            List of verbs.
        :param labels: list.
            List of verb templates.

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
        | Populates the dictionary containing the conjugation templates.
        | Populates the lists containing the verbs and their templates.

         
        | Populates the inflected forms of the verb.
        | Adds personal pronouns to the inflected verbs.

         
        | Populates the inflected forms of the verb.
        | This is the generic version of this method.
        | It does not add personal pronouns to the conjugated forms.
        | This method can handle any new language if the conjugation structure conforms to the Verbiste XML Schema.

         
        | This is the main method of this class.
        | It first checks to see if the verb is in Verbiste.
        | If it is not, and a pre-trained scikit-learn model has been supplied, the method then calls the model
        to predict the conjugation class of the provided verb.

        | Returns a Verb object or None.

        :param verb: string.
            Verb to conjugate.
        :param subject: string.
            Toggles abbreviated or full pronouns.
            The default value is 'abbrev'.
            Select 'pronoun' for full pronouns.
        :return: Verb object or None.

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

     
    | Custom Vectorizer optimized for extracting verbs features.
    | The Vectorizer subclasses sklearn.feature_extraction.text.CountVectorizer .
    | As in Indo-European languages verbs are inflected by adding a morphological suffix,
    the vectorizer extracts verb endings and produces a vector representation of the verb with binary features.

    | The features are the verb ending ngrams. (ngram_range is set at class instanciation).

     
    | This class holds and manages the data set.
    | Defines helper functions for managing Machine Learning tasks like constructing a training and testing set.

    :param VerbisteObj:
        Instance of a Verbiste object.

     
    | This class manages the scikit-learn model.
    | The Pipeline includes a feature vectorizer, a feature selector and a classifier.
    | If any of the vectorizer, feature selector or classifier is not supplied at instance declaration,
    the __init__ method will provide good default values that get more than 92% prediction accuracy.

    :param vectorizer: scikit-learn Vectorizer.
    :param feature_selector: scikit-learn Classifier with a fit_transform() method
    :param classifier: scikit-learn Classifier with a predict() method

     
    | This is the main class of the project.
    | The class manages the Verbiste data set and provides an interface with the scikit-learn model.
    | If no parameters are provided, the default language is set to french and the pre-trained french conjugation model is used.
    | The class defines the method conjugate(verb, language) which is the main method of the module.

    :param language: string.
        Language of the conjugator. The default language is 'fr' for french.
    :param model: string.
        A user provided model if the user has trained his own model.

     Console script for mlconjug. The language for the conjugation model. The values can be fr, en, es, it, pt or ro. The default value is fr. The split proportion must be between 0 and 1. The supplied word: {0} is not a valid verb in {1}. Unsupported language.
The allowed languages are fr, en, es, it, pt, ro. Project-Id-Version: 
POT-Creation-Date: 2018-06-15 21:51+0200
PO-Revision-Date: 2018-06-16 18:32+0200
Language-Team: 
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Generated-By: pygettext.py 1.5
X-Generator: Poedit 2.0.8
Last-Translator: SekouD <sekoud.python@gmail.com>
Plural-Forms: nplurals=2; plural=(n != 1);
Language: it
 
        Assegna il modello pre-formato scikit-learn fornito per essere in grado di coniugare verbi sconosciuti.

        :param model: scikit-learn Classifier or Pipeline.

         
        Ottiene informazioni di coniugazione corrispondenti al modello specificato.

        :param template: string.
            Nome del modello di fine del verbo.
        :return: OrderedDict or None.
            OrderedDict contenente i suffissi coniugati del modello.

         
        Ottiene informazioni sui verbi e restituisce un'istanza de VerbInfo.

        :param verb: string.
            Verbo da coniugare.
        :return: VerbInfo object or None.

         
        Carica e analizza le coniugazioni dal file xml.

        :param conjugations_file: string or path object.
            Percorso del file xml di coniugazione.

         
        Carica e analizza le forme flesse del tempo dal file xml.

        :param tense: string.
            Il tempo corrente in elaborazione.
        :return: list.
            Elenco di suffissi coniugati.

         
        Carica e analizza i verbi dal file xml.

        :param verbs_file: string or path object.
            Percorso del file xml dei verbi.

         
        Analizza il file XML

        :param file: FileObject.
            File XML contenente i modelli di coniugazione
        :return: OrderedDict.
            Un OrderedDict contenente tutti i modelli di coniugazione nel file.

         
        Analizza il file XML

        :param file: FileObject.
            File XML contenente i verbi
        :return: OrderedDict.
            Un OrderedDict contenente il verbo e il suo modello per tutti i verbi nel file.

         
        Analizza un verbo e restituisce gli n-gram finali.

        :param verb: string.
            Verbo da vettorializzare.
        :return: list.
            N-gram finali del verbo.
         
        Predice la classe di coniugazione dell'elenco di verbi fornito.

        :param verbs: list.
            Elenco dei verbi.
        :return: list.
            Elenco dei gruppi di coniugazione previsti.

         
        Divide i dati in un training e un set di test.

        :param threshold: int.
            Dimensione minima della classe di coniugazione da dividere.
        :param proportion: float.
            Proporzione di campioni nel set di allenamento.
            Deve essere compreso tra 0 e 1.

         
        Prepara il modello sui campioni e sulle etichette forniti.

        :param samples: list.
            Elenco dei verbi.
        :param labels: list.
            Elenco di modelli di verbo.

         
        | Controlla se il verbo è un verbo valido nella lingua data.
        | Le parole inglesi sono sempre trattate come possibili verbi.
        | I verbi in altre lingue sono filtrati dalle loro terminazioni.

        :param verb: string.
            Il verbo coniugare.
        :return: bool.
            True se il verbo è un verbo valido nella lingua. False altrimenti.

         
        | Rileva le terminazioni consentite per i verbi nelle lingue supportate.
        | Tutte le lingue supportate tranne l'inglese limitano il modulo che un verbo può assumere.
        | Poiché l'inglese è molto più produttivo e vario nella morfologia dei suoi verbi, qualsiasi parola è consentita come un verbo.

         : return: set.
            Un set contenente le terminazioni consentite di verbi nella lingua di destinazione.

         
        | Compila il dizionario contenente i modelli di coniugazione.
        | Compila gli elenchi contenenti i verbi e i loro modelli.

         
        | Compila le forme flesse del verbo.
        | Aggiunge pronomi personali ai verbi inflessi.

         
        | Compila le forme flesse del verbo.
        | Questa è la versione generica di questo metodo.
        | Non aggiunge pronomi personali alle forme coniugate.
        | Questo metodo può gestire qualsiasi nuovo linguaggio se la struttura di coniugazione è conforme allo schema XML di Verbiste.

         
        | Questo è il metodo principale di questa classe.
        | Prima controlla se il verbo è in Verbiste.
        | In caso contrario, è stato fornito un modello di apprendimento scikit pre-addestrato, quindi il metodo chiama il modello
        per predire la classe di coniugazione del verbo fornito.

        | Restituisce un oggetto Verb o None.

        :param verb: string.
            Verbo da coniugare.
        :param subject: string.
            Attiva i pronomi abbreviati o pieni.
            Il valore predefinito è 'abbrev'.
            Seleziona "pronome" per i pronomi completi.
        :return: Verb object or None.

         
    Questa classe definisce l'oggetto Verb inglese.

     
    Questa classe definisce l'oggetto Verb francese.

     
    Questa classe definisce l'oggetto Verb italiano.

     
    Questa classe definisce l'oggetto Verb Portoghese.

     
    Questa classe definisce l'oggetto Verb rumeno.

     
    Questa classe definisce l'oggetto Verb spagnolo.

     
    Questa classe definisce l'oggetto Verb.

    :param verb_info: VerbInfo Object.
    :param conjug_info: OrderedDict.
    :param subject: string.
        Attiva i pronomi abbreviati o pieni.
        Il valore predefinito è 'abbrev'.
        Seleziona "pronome" per i pronomi completi.

     
    Questa classe definisce la struttura delle informazioni del verbo del Verbiste.

    :param infinitive: string.
        Forma infinita del verbo
    :param root: string.
        Radice lessicale del verbo.
    :param template: string.
        Nome del modello di fine del verbo.

     
    Questa è la classe che gestisce i file xml di Verbiste.

    :param language: string.
    | La lingua del coniugatore. Il valore predefinito è fr per il francese.
    | I valori consentiti sono: fr, en, es, it, pt, ro.

     
    | Vectorizer personalizzato ottimizzato per l'estrazione delle caratteristiche dei verbi.
    | Le sottoclassi di Vectorizer sklearn.feature_extraction.text.CountVectorizer.
    | Come nelle lingue indoeuropee i verbi sono flessi aggiungendo un suffisso morfologico,
    il vettore estrae le desinenze dei verbi e produce una rappresentazione vettoriale del verbo con caratteristiche binarie.

    | Le caratteristiche sono i verbo che terminano con ngrams. (n-gram_range è impostato sull'istanza della classe).

     
    | Questa classe contiene e gestisce il set di dati.
    | Definisce le funzioni di supporto per la gestione delle attività di Machine Learning come la costruzione di un set di training e test.

    :param VerbisteObj:
        Istanza di un oggetto Verbiste.

     
    | Questa classe gestisce il modello di apprendimento scikit.
    | La pipeline include un vettore di funzionalità, un selettore di funzionalità e un classificatore.
    | Se uno qualsiasi dei vettori, selettore di funzionalità o classificatore non viene fornito nella dichiarazione di istanza,
    il metodo __init__ fornirà buoni valori predefiniti che ottengono più del 92% di accuratezza di previsione.

    :param vectorizer: scikit-learn Vectorizer.
    :param feature_selector: scikit-learn Classifier with a fit_transform() method
    :param classifier: scikit-learn Classifier with a predict() method

     
    | Questa è la classe principale del progetto.
    | La classe gestisce il set di dati Verbiste e fornisce un'interfaccia con il modello di apprendimento scikit.
    | Se non vengono forniti parametri, la lingua predefinita è impostata su francese e viene utilizzato il modello di coniugazione francese pre-addestrato.
    | La classe definisce il metodo conjugate (verb, language) che è il metodo principale del modulo.

    :param language: string.
        Lingua del coniugatore. La lingua predefinita è "fr" per il francese.
    :param model: string.
        Un modello fornito dall'utente se l'utente ha formato il proprio modello.

     Script della console per mlconjug. La lingua per il modello di coniugazione. I valori possono essere fr, en, es, it, pt o ro. Il valore predefinito è fr. La proporzione divisa deve essere compresa tra 0 e 1. La parola fornita: {0} non è un verbo valido in {1}. Lingua non supportata
Le lingue consentite sono fr, en, es, it, pt, ro. 