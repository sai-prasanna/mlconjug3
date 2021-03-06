��          �      |      �    �  �     �   �  �   c  �   D  �   �  �   �  r  �  �  %	  x   �
  .  1  6   `  5   �  6   �  9     7   >  6   v    �    �  �   �  G   �  s  �    k  �   �  �   B  �   �  �   �  	  z  �   �  �  �  �    |   �  =  _  4   �  5   �  5     7   >  4   v  5   �  1  �       �   .!  B   "                     
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
PO-Revision-Date: 2018-06-16 17:50+0200
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
        | Rellena las formas flexionadas del verbo.
        | Agrega pronombres personales a los verbos inflexos.

         
        | Rellena las formas flexionadas del verbo.
        | Esta es la versión genérica de este método.
        | No agrega pronombres personales a las formas conjugadas.
        | Este método puede manejar cualquier idioma nuevo si la estructura de conjugación se ajusta al esquema XML de Verbiste.

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

     Idioma no admitido.
Los idiomas permitidos son fr, en, es, pt, ro. 