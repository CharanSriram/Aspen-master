# -*- coding: utf-8 -*-
"""
Created on Fri Apr 24 22:38:38 2020

@author: piphi
"""
from googlesearch import search 

# google keywords to search


class Search:
    query = ["diy ", "reuse "]
    
    @classmethod
    def diy(self, material: str, results: int = 4, waittime: int = 2):

        #appends the material to the keywords
        terms = [(s + material) for s in self.query]
        
        return self._search_function(terms, results, waittime)
    
    @classmethod
    def center(self, material: str):
        terms = ["recycling center " + material]
        return self._search_function(terms,1)
    
    @classmethod
    def _search_function(self, query: list, results, waittime: int = 2):
        
        queries_per_search = results/len(query)
        
        # quick check
        if queries_per_search < 0:
            raise ValueError("This will yield no search results")
            
        search_results = []
        for i in query:
            for j in search(
                    i, tld='com', lang='en',
                    num = queries_per_search,
                    stop = queries_per_search, pause = waittime): 
                search_results.append(j)
        return search_results
    

if __name__ == "__main__":
    #searcher = Search()
    print(Search.diy("plastic"))
    print(Search.center("plastic"))

