(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6552172375818596794516679437947459518909454345703125p840 {+ 2950836107020389 840 (1.21353e+253)}
; Y = -1.810149757399286851722308711032383143901824951171875p-775 {- 3648590145537726 -775 (-9.10894e-234)}
; 1.6552172375818596794516679437947459518909454345703125p840 > -1.810149757399286851722308711032383143901824951171875p-775 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11101000111 #b1010011110111100010100010001111100110000100001100101)))
(assert (= y (fp #b1 #b00011111000 #b1100111101100101111110010111100011100100011010111110)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
