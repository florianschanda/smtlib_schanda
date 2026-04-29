(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.404297771199283229037746423273347318172454833984375p253 {+ 1820795291719814 253 (2.03258e+076)}
; Y = 1.1061086670451480973298430399154312908649444580078125p788 {+ 477870953365309 788 (1.80067e+237)}
; 1.404297771199283229037746423273347318172454833984375p253 > 1.1061086670451480973298430399154312908649444580078125p788 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011111100 #b0110011110000000000011110000100100100101100010000110)))
(assert (= y (fp #b0 #b11100010011 #b0001101100101001111100000000011011000111111100111101)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
