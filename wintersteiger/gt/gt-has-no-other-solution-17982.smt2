(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.680116984355110698601265539764426648616790771484375p-769 {+ 3062974597310022 -769 (5.41094e-232)}
; Y = -1.0738127977092124520908100748783908784389495849609375p-605 {- 332423288258383 -605 (-8.08688e-183)}
; 1.680116984355110698601265539764426648616790771484375p-769 > -1.0738127977092124520908100748783908784389495849609375p-605 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011111110 #b1010111000011100001001011000110101000010011001000110)))
(assert (= y (fp #b1 #b00110100010 #b0001001011100101011001010100000000101111111101001111)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
