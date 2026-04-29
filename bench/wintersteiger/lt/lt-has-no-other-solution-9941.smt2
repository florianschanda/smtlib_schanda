(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5110754985063714617155028463457711040973663330078125p169 {+ 2301679424631485 169 (1.13072e+051)}
; Y = -1.9947047820635115389364955262863077223300933837890625p583 {- 4479752085844881 583 (-6.31489e+175)}
; 1.5110754985063714617155028463457711040973663330078125p169 < -1.9947047820635115389364955262863077223300933837890625p583 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010101000 #b1000001011010101110110000000011111011111001010111101)))
(assert (= y (fp #b1 #b11001000110 #b1111111010100100111110001111110000100011001110010001)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
