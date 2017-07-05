(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.2776552079624823310410874910303391516208648681640625p226 {- 1250447891117313 226 (-1.37782e+068)}
; Y = +oo {+ 0 1024 (1.#INF)}
; -1.2776552079624823310410874910303391516208648681640625p226 > +oo == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011100001 #b0100011100010100011010010110010111000011010100000001)))
(assert (= y (_ +oo 11 53)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
