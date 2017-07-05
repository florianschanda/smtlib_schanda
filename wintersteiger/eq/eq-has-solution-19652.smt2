(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1075232875630078854811699784477241337299346923828125p-523 {+ 484241837802413 -523 (4.03334e-158)}
; Y = 1.0276355237651750851313181556179188191890716552734375p565 {+ 124459334531031 565 (1.24104e+170)}
; 1.1075232875630078854811699784477241337299346923828125p-523 = 1.0276355237651750851313181556179188191890716552734375p565 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111110100 #b0001101110000110101001010110101110100100001110101101)))
(assert (= y (fp #b0 #b11000110100 #b0000011100010011000111110010011011000111011111010111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
