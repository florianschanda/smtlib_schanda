(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5722863288632169531666704642702825367450714111328125p-646 {+ 2577348497417613 -646 (5.38461e-195)}
; Y = 1.5239481155906713372161220831912942230701446533203125p385 {+ 2359652538135621 385 (1.20093e+116)}
; 1.5722863288632169531666704642702825367450714111328125p-646 < 1.5239481155906713372161220831912942230701446533203125p385 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101111001 #b1001001010000001010110110101101001101010010110001101)))
(assert (= y (fp #b0 #b10110000000 #b1000011000100001011101101011010101000011010001000101)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
