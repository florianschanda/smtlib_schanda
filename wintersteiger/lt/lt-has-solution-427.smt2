(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.762866502869300244782380104879848659038543701171875p-395 {- 3435645298055614 -395 (-2.1846e-119)}
; Y = -1.636935769062781265148487364058382809162139892578125p617 {- 2868503692210082 617 (-8.90305e+185)}
; -1.762866502869300244782380104879848659038543701171875p-395 < -1.636935769062781265148487364058382809162139892578125p617 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001110100 #b1100001101001011001110000001100100001001100110111110)))
(assert (= y (fp #b1 #b11001101000 #b1010001100001110001110001111100111000110111110100010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
