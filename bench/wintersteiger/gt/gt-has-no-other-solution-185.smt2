(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.60370157346060349112804033211432397365570068359375p-608 {+ 2718830181280156 -608 (1.50968e-183)}
; Y = -1.005021527708609863083211166667751967906951904296875p725 {- 22614950317326 725 (-1.77387e+218)}
; 1.60370157346060349112804033211432397365570068359375p-608 > -1.005021527708609863083211166667751967906951904296875p725 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110011111 #b1001101010001100001011111011001010001110100110011100)))
(assert (= y (fp #b1 #b11011010100 #b0000000101001001000101110100000101001000110100001110)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
