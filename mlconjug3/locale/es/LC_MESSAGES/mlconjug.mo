��    %      D  5   l      @  �   A    �  �     �   �  �   ]  �   >  �   �  �   �  �   �	  �   e
    7  �   V  r    �  �  �     x   �  .  4  a  c  6   �  5   �  6   2  9   i  7   �  6   �        +  �   8  �    �   �  &  �  H  �     .   l   K   -   �   2   �   G   !  s  a!  �   �"    �#  �   �$  �   d%  �   &  �   �&  	  �'  �   �(  �   �)  �   *  b  w+  �   �,  �  �-  �  ^/  �   %1  |   �1  =  K2  �  �3  4   v6  5   �6  5   �6  7   7  4   O7  5   �7  1  �7    �8  �   :  '  �:  #  =  k  ;>  �  �@      HC  z   iC  /   �C  <   D  B   QD                                                            !          
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
Language: es
 
        Asigna el modelo de aprendizaje de scikit preentrenado provisto para poder conjugar verbos desconocidos.

        :param model: scikit-learn Classifier or Pipeline.

         
        Obtiene información verbal correspondiente a la patron determinada.

        :param template: string.
            Nombre del verbo acabar con patrón.
        :return: OrderedDict or None.
            OrderedDict que contiene el conjugado sufijos de la patrón.

         
        Obtiene información de verbo y devuelve una instancia de VerbInfo.

        :param verb: string.
            Verbo a conjugar.
        :return: VerbInfo object or None.

         
        Cargue y analiza las conjugaciones del archivo xml.

        :param conjugations_file: string or path object.
            Ruta al archivo xml de conjugación.

         
        Carga y analiza las formas derivadas del tiempo de archivo xml.

        :param tense: string.
            El tiempo actual está procesando.
        :return: list.
            Lista de sufijos conjugados.

         
        Carga y analiza los verbos del archivo xml.

        :param verbs_file: string or path object.
            Ruta del archivo de xml de los verbos.

         
        Analiza el archivo XML.

        :param file: FileObject.
            Archivo XML que contiene las patrónes de conjugación.
        :return: OrderedDict.
            Un OrderedDict que contiene todas las patrónes de conjugación en el archivo.

         
        Analiza el archivo XML.

        :param file: FileObject.
            Archivo XML que contiene los verbos.
        :return: OrderedDict.
            Un OrderedDict que contiene el verbo y su patrón para todos los verbos en el archivo.

         
        Analizaun verbo y devuelve los n-gramos finales.

        :param verb: string.
            Verbo para vectorizar
        :return: list.
            N-gramos finales del verbo.
         
        Predice la clase de conjugación de la lista de verbos proporcionada.

        :param verbs: list.
            Lista de verbos.
        :return: list.
            Lista de grupos de conjugación predichos.

         
        Divide los datos en un conjunto de entrenamiento y prueba.

        :param threshold: int.
            Tamaño mínimo de la clase de conjugación para dividir.
        :param proportion: float.
            Proporción de muestras en el conjunto de entrenamiento.
            Debe estar entre 0 y 1.

         
        Entrena el modelo en las muestras y etiquetas suministradas.

        :param samples: list.
            Lista de verbos.
        :param labels: list.
            Lista de plantillas de verbos.

         
        | Comprueba si el verbo es un verbo válido en el idioma dado.
        | Las palabras en inglés siempre se tratan como posibles verbos.
        | Los verbos en otros idiomas se filtran por sus terminaciones.

        :param verb: string.
            El verbo para ser conjugado.
        :return: bool.
            True si el verbo es un verbo válido en el idioma. False de lo contrario.

         
        | Detecta las permitidas terminaciones para los verbos en los idiomas admitidos.
        | Todos los idiomas excepto inglés restringen la forma de que un verbo puede tomar.
        | Como el inglés es mucho más productivo y variado en la morfología de sus verbos, se permite cualquier palabra como un verbo.

        :return: set.
            Un conjunto que contiene las terminaciones permitidas de verbos en el idioma de destino.

         
        | Rellena el diccionario que contiene las plantillas de conjugación.
        | Rellena las listas que contienen los verbos y sus plantillas.

         
        | Rellena las formas flexionadas del verbo.
        | Agrega pronombres personales a los verbos inflexos.

         
        | Rellena las formas flexionadas del verbo.
        | Esta es la versión genérica de este método.
        | No agrega pronombres personales a las formas conjugadas.
        | Este método puede manejar cualquier idioma nuevo si la estructura de conjugación se ajusta al esquema XML de Verbiste.

         
        | Este es el método principal de esta clase.
        | Primero verifica si el verbo está en Verbiste.
        | Si no es así, y se ha proporcionado un modelo de aprendizaje scikit preentrenado, el método llama al modelo
        para predecir la clase de conjugación del verbo proporcionado.

        | Devuelve un objeto Verb o None.

        :param verb: string.
            Verbo para conjugar
        :param subject: string.
            Alterna los pronombres abreviados o completos.
            El valor predeterminado es 'abreviatura'.
            Seleccione 'pronombre' para los pronombres completos.
        :return: Verb object or None.

         
    Esta clase define el Objeto Verb inglés.

     
    Esta clase define el Objeto Verb francés.

     
    Esta clase define el Objeto Verb italiano.

     
    Esta clase define el Objeto Verb portugués.

     
    Esta clase define el Objeto Verbo Rumano.

     
    Esta clase define el Objeto Verb Español.

     
    Esta clase define el Objeto Verb.

    :param verb_info: VerbInfo Object.
    :param conjug_info: OrderedDict.
    :param subject: string.
        Cambia abreviado o completo pronombres.
        El valor predeterminado es 'abreviatura'.
        Seleccione 'pronombre' para pronombres completos.

     
    Esta clase define la estructura de información del verbo en Verbiste.

    :param infinitive: string.
        Forma infinitiva del verbo
    :param root: string.
        Raíz léxica del verbo.
    :param template: string.
         Nombre del verbo finalizando patrón.

     
    Esta es la clase que maneja los archivos Verbiste xml.

    :param language: string.
    | El lenguaje del Conjugador. El valor predeterminado es fr para el francés.
    | Los valores permitidos son: fr, en, es, pt, ro.

     
    | Custom Vectorizer optimizado para extraer las características de los verbos.
    | Las subclases Vectorizer sklearn.feature_extraction.text.CountVectorizer.
    | Al igual que en los idiomas indoeuropeos, los verbos se inflan añadiendo un sufijo morfológico,
    el vectorizador extrae las terminaciones de los verbos y produce una representación vectorial del verbo con características binarias.

    | Las características son los ngrams de final del verbo. (ngram_range se establece en la instanciación de clase).

     
    | Esta clase contiene y administra el conjunto de datos.
    | Define funciones de ayuda para gestionar tareas de Aprendizaje automático, como la construcción de un conjunto de entrenamiento y prueba.

    :param VerbisteObj:
        Instancia de un objeto Verbiste.

     
    | Esta clase maneja el modelo scikit-learn.
    | El Pipeline incluye un vectorizador de características, un selector de funciones y un clasificador.
    | Si alguno de los vectores, selector de funciones o clasificador no se incluye en la declaración de instancia,
    el método __init__ proporcionará buenos valores predeterminados que obtienen más del 92% de precisión de predicción.

    :param vectorizer: scikit-learn Vectorizer.
    :param feature_selector: scikit-learn Classifier with a fit_transform() method
    :param classifier: scikit-learn Classifier with a predict() method

     
    | Esta es la clase principal del proyecto.
    | La clase administra el conjunto de datos Verbiste y proporciona una interfaz con el modelo scikit-learn.
    | Si no se proporcionan parámetros, el idioma predeterminado se establece en francés y se utiliza el modelo de conjugación francés preentrenado.
    | La clase define el método conjugado (verbo, lenguaje) que es el método principal del módulo.

    :param language: string.
        Idioma del conjugador El idioma predeterminado es 'fr' para francés.
    :param model: string.
        Un modelo proporcionado por el usuario si el usuario ha entrenado su propio modelo.

     Script de consola para mlconjug. El lenguaje para el modelo de conjugación. Los valores pueden ser fr, en, es, it, pt o ro. El valor predeterminado es fr. La proporción dividida debe estar entre 0 y 1. La palabra proporcionada: {0} no es un verbo válido en {1}. Idioma no admitido.
Los idiomas permitidos son fr, en, es, pt, ro. 