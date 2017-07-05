(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.2073204141267750433286209954530932009220123291015625p-921 {- 933688139807641 -921 (-6.81078e-278)}
; -1.2073204141267750433286209954530932009220123291015625p-921 S == NaN
; [HW: NaN] 

; mpf : + 4503599627370495 1024
; mpfd: + 4503599627370495 1024 (1.#QNAN) class: NaN
; hwf : - 2251799813685248 1024 (-1.#IND) class: NaN

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001100110 #b0011010100010010111100110101111001110111101110011001)))
(assert (= r (_ NaN 11 53)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
