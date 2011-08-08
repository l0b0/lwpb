#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
test suite

Default syntax:

./test_package.py
    Run all unit tests
"""

__author__ = 'Victor Engmark'
__copyright__ = 'Copyright (C) 2011 Victor Engmark'
__maintainer__ = 'Victor Engmark'
__email__ = 'victor.engmark@gmail.com'
__license__ = 'GPL v3 or newer'

from doctest import testmod
import unittest

from lwpb import lwpb as package


class TestDoc(unittest.TestCase):
    """Test Python documentation strings."""
    def test_doc(self):
        """Documentation tests."""
        self.assertEqual(testmod(package)[0], 0)


def main():
    """Run tests"""
    unittest.main()


if __name__ == '__main__':
    main()
