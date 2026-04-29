(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 0.405586516348219294769705811631865799427032470703125p-1022 {+ 1826599283892338 -1023 (9.0246e-309)}
; Y = 1.8274806434232842011766706491471268236637115478515625p-588 {+ 3726641517377401 -588 (1.80391e-177)}
; 0.405586516348219294769705811631865799427032470703125p-1022 < 1.8274806434232842011766706491471268236637115478515625p-588 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000000000 #b0110011111010100100001001001011101101010000001110010)))
(assert (= y (fp #b0 #b00110110011 #b1101001111010101110001010111110110010011011101111001)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
