# -*- coding: utf-8 -*-
"""
Created on Fri Apr 24 22:38:32 2020

@author: piphi
"""


from webscraper import Search 
import unittest

class TestScraperMethods(unittest.TestCase):
    
    def test_default(self):
        self.assertEqual(len(Search.diy("plastic")), len(Search.query) * 2)
        
    def test_custom(self):
        self.assertAlmostEqual(len(Search.diy("plastic", 15)), 15, delta = 1)
        #self.assertAlmostEqual(len(search_diy("plastic", 37)), 37, delta = 1)
    
    def test_valueerror(self):
        with self.assertRaises(ValueError):
            Search.diy("",-5)
    def test_typeerror(self):
        with self.assertRaises(TypeError):
            Search.diy(-5)
            
    def test_location_search(self):
        self.assertEqual(len(Search.center("plastic")), 1)
            
            
            
    

if __name__ == "__main__":
    unittest.main()