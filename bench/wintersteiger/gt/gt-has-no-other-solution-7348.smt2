(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.074105922776325439116362758795730769634246826171875p-947 {+ 333743406201406 -947 (9.02903e-286)}
; Y = -1.105047933203987753358887857757508754730224609375p234 {- 473093832833520 234 (-3.0507e+070)}
; 1.074105922776325439116362758795730769634246826171875p-947 > -1.105047933203987753358887857757508754730224609375p234 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001001100 #b0001001011111000100110110001001011000011101000111110)))
(assert (= y (fp #b1 #b10011101001 #b0001101011100100011010111101110110011111100111110000)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
