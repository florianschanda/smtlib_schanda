(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7835526242967068011324727194732986390590667724609375p-824 {- 3528807306807823 -824 (-1.5943e-248)}
; Y = 1.6660442369901300452283976483158767223358154296875p-220 {+ 2999596577521016 -220 (9.88752e-067)}
; -1.7835526242967068011324727194732986390590667724609375p-824 < 1.6660442369901300452283976483158767223358154296875p-220 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011000111 #b1100100010010110111001111010000000001100101000001111)))
(assert (= y (fp #b0 #b01100100011 #b1010101010000001111000000000011110001111110101111000)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
