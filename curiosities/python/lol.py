#! /usr/bin/env python3
# -*- coding: utf-8 -*-
"""
.. module:: TODO
   :platform: Unix
   :synopsis: TODO.

.. moduleauthor:: Aljosha Friemann a.friemann@patagona.de

"""

def fun(c={}):
    print('old c: %s' % c)
    c.update({'foo': 'bar'})
    print('new c: %s' % c)

def main():
    """main"""
    fun()
    fun()

if __name__ == '__main__':
    exit(main())

# vim: tabstop=8 expandtab shiftwidth=4 softtabstop=4 fenc=utf-8
