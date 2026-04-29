(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9520472589034347787873002744163386523723602294921875p-855 {+ 4287639680436611 -855 (8.12539e-258)}
; Y = 1.20572331074944916196045596734620630741119384765625p960 {+ 926495425632644 960 (1.17502e+289)}
; 1.9520472589034347787873002744163386523723602294921875p-855 = 1.20572331074944916196045596734620630741119384765625p960 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00010101000 #b1111001110111001010111101000000100111100100110000011)))
(assert (= y (fp #b0 #b11110111111 #b0011010010101010010010000110101110110001100110000100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
