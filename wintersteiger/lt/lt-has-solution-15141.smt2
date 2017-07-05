(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = +oo {+ 0 1024 (1.#INF)}
; Y = 1.842226584922714405223587164073251187801361083984375p810 {+ 3793051334019462 810 (1.25788e+244)}
; +oo < 1.842226584922714405223587164073251187801361083984375p810 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (_ +oo 11 53)))
(assert (= y (fp #b0 #b11100101001 #b1101011110011100001010010101011000010000100110000110)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
