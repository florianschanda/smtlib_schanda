(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.879030035285451649684773656190373003482818603515625p802 {- 3958799339359034 802 (-5.01176e+241)}
; Y = 1.258652891353400082863345232908613979816436767578125p360 {+ 1164869065117474 360 (2.956e+108)}
; -1.879030035285451649684773656190373003482818603515625p802 > 1.258652891353400082863345232908613979816436767578125p360 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100100001 #b1110000100001000000111001100010111000000101100111010)))
(assert (= y (fp #b0 #b10101100111 #b0100001000110111000100110110110101100000111100100010)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
