(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3047441471294896064847534944419749081134796142578125p-118 {+ 1372445627455709 -118 (3.92632e-036)}
; Y = -1.7035712868158727761880300022312439978122711181640625p510 {- 3168603385132545 510 (-5.71029e+153)}
; 1.3047441471294896064847534944419749081134796142578125p-118 > -1.7035712868158727761880300022312439978122711181640625p510 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110001001 #b0100111000000011101101100110000110010001100011011101)))
(assert (= y (fp #b1 #b10111111101 #b1011010000011101001111110111001101000111011000000001)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
