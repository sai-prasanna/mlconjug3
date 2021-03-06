��          �      |      �    �  �     �   �  �   c  �   D  �   �  �   �  r  �  �  %	  x   �
  .  1  6   `  5   �  6   �  9     7   >  6   v    �    �  �   �  G   �  i  �  *  a  �   �  �   W  �     �       �    �  �  �  �  �  �   ]  Z  �  7   9  5   q  5   �  7   �  4     5   J  9  �  '  �   �   �!  E   �"                     
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
PO-Revision-Date: 2018-06-16 14:40+0200
Language-Team: 
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Generated-By: pygettext.py 1.5
X-Generator: Poedit 2.0.8
Last-Translator: SekouD <sekoud.python>
Plural-Forms: nplurals=2; plural=(n != 1);
Language: pt
 
        Obtém informações de conjugação correspondentes ao modelo fornecido.

        :param template: string.
            Nome do padrão final do verbo.
        :return: OrderedDict or None.
            OrderedDict contendo os sufixos conjugados do modelo.

         
        Obtém informações verbais e retorna uma instância de VerbInfo.

        :param verb: string.
            Verbo para conjugar.
        :return: VerbInfo object or None.

         
        Carregue e analise as conjugações do arquivo xml.

        :param conjugations_file: string or path object.
            Caminho para o arquivo xml de conjugação.

         
        Carregue e analise os formulários flexionados do tempo do arquivo xml.

        :param tense: string.
            O tempo atual sendo processado.
        :return: list.
            Lista de sufixos conjugados.

         
        Carregue e analise os verbos do arquivo xml.

        :param verbs_file: string or path object.
            Caminho para o arquivo xml de verbos.

         
        Analisa o arquivo XML

        :param file: FileObject.
            Arquivo XML contendo os modelos de conjugação
        :return: OrderedDict.
            Um OrderedDict contendo todos os modelos de conjugação no arquivo.

         
        Analisa o arquivo XML

        :param file: FileObject.
            Arquivo XML contendo os verbos.
        :return: OrderedDict.
            Um OrderedDict contendo o verbo e seu modelo para todos os verbos no arquivo.

         
        | Verifica se o verbo é um verbo válido no idioma dado.
        | As palavras inglesas são sempre tratadas como verbos possíveis.
        | Verbos em outros idiomas são filtrados por seus finais.

        :param verb: string.
            O verbo conjugado
        :return: bool.
            True se o verbo for um verbo válido no idioma. False em contrário.

         
        | Detecta as terminações permitidas para verbos nos idiomas suportados.
        | Todos os idiomas suportados, exceto o inglês, restringem a forma que um verbo pode receber.
        | Como o inglês é muito mais produtivo e variado na morfologia de seus verbos, qualquer palavra é permitida como verbo.

        :return: set.
            Um conjunto contendo as terminações permitidas de verbos no idioma de destino.

         
        | Popula as formas flexionadas do verbo.
        | Adiciona pronomes pessoais aos verbos flexionados.

         
        | Popula as formas flexionadas do verbo.
        | Esta é a versão genérica desse método.
        | Não adiciona pronomes pessoais às formas conjugadas.
        | Esse método pode manipular qualquer novo idioma se a estrutura de conjugação estiver em conformidade com o Esquema XML da Verbiste.

         
    Esta classe define o Objeto Verb em Inglês.

     
    Esta classe define o Objeto Verb Francês.

     
    Esta classe define o Objeto Verb Italiano.

     
    Esta classe define o Objeto Verb português.

     
    Esta classe define o Objeto Verbo romeno.

     
    Esta classe define o Objeto Verb Espanhol.

     
    Esta classe define o Objeto Verb.

    :param verb_info: VerbInfo Object.
    :param conjug_info: OrderedDict.
    :param subject: string.
        Ativa os pronomes abreviados ou completos.
        O valor padrão é 'abrev'.
        Selecione 'pronome' para pronomes completos.

     
    Essa classe define a estrutura de informações verbais do Verbiste.

    :param infinitive: string.
        Forma Infinitiva do Verbo.
    :param root: string.
        Raiz lexical do verbo.
    :param template: string.
        Nome do padrão final do verbo.

     
    Esta é a classe que manipula os arquivos xml da Verbiste.

    :param language: string.
    | A linguagem do conjugador. O valor padrão é fr para francês.
    | Os valores permitidos são: fr, en, es, pt, ro.

     Idioma não suportado.
Os idiomas permitidos são fr, en, es, pt, ro. 