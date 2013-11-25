#include "link-includes.h"
#include <string.h>
#define THRESH 20

void traverse_tree(CNode *n)
{
	CNode * m;
	static char * spacer = " ";

	if (n == NULL)
		return;
    
    printf("%s", n->label);
	for (m = n->child; m != NULL; m = m->next)
	{
		if (m->child == NULL)
		{
			printf("%s%s", spacer, m->label);
			spacer = " ";
		} else
		{
			traverse_tree(m);
		}
	}
}

int is_punctuation ( char c )
{
	if ( c == '.' || c == '?' || c == '!' || c == ';' )
		return 1;
	return 0;
}

int main()
{
	Dictionary dict;
	Parse_Options opts;
	Sentence sent;
	Linkage linkage;
	CNode * cn;
	char * string;

	opts = parse_options_create();
	dict = dictionary_create("4.0.dict", "4.0.knowledge",
			"4.0.constituent-knowledge", "4.0.affix");
	int high = 0;
	int overall = 0;
	while (1)
	{
		char input_string[100024];

		int char_count = 0;
		while (1)
		{
			char c;
			scanf ("%c", &c);
			if ( is_punctuation(c) )
			{
				input_string[char_count++] = c;
				input_string[char_count] = '\0';
				break;
			}
			else
			{
				input_string[char_count++] = c;
			}
		}

		//printf ( "%s", input_string );
		//if (strcmp(input_string, "EOF") == 0)
		//	break;
		sent = sentence_create(input_string, dict);
		if (sentence_parse(sent, opts))
		{
			linkage = linkage_create(0, sent, opts);
			string = linkage_print_diagram(linkage);
            char* allLinks = linkage_print_links_and_domains(linkage);
            int numLinks = linkage_get_num_links(linkage);
            printf("%s\n",allLinks);
            int i;
            for(i=0;i<numLinks;i++)
              printf("%s\n",linkage_get_word(linkage,linkage_get_link_lword(linkage,i)));
            cn = linkage_constituent_tree(linkage);			
            traverse_tree(cn);
            linkage_free_constituent_tree(cn);     
            string_delete(string);

			linkage_delete(linkage);
		}
		else
		{
			printf ( "Sorry sentence has to be valid before I can give you begins relation\n" );
		}
		sentence_delete(sent);
	}
	dictionary_delete(dict);
	parse_options_delete(opts);
	return 0;
}
