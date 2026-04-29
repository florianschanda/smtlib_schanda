(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.3980250350932639236134491511620581150054931640625p-894 {- 1792545399730152 -894 (-1.05852e-269)}
; Y = 1.6843485449342996407295913741108961403369903564453125p302 {+ 3082031851957653 302 (1.37243e+091)}
; -1.3980250350932639236134491511620581150054931640625p-894 > 1.6843485449342996407295913741108961403369903564453125p302 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010000001 #b0110010111100100111101111111110010110110111111101000)))
(assert (= y (fp #b0 #b10100101101 #b1010111100110001011101110101101110001110110110010101)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
