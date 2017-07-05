(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.9356904185355698899684284697286784648895263671875p-692 {- 4213975020250936 -692 (-9.42061e-209)}
; Y = -1.7639778218264725584418783910223282873630523681640625p472 {- 3440650233697025 472 (-2.15105e+142)}
; -1.9356904185355698899684284697286784648895263671875p-692 = -1.7639778218264725584418783910223282873630523681640625p472 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101001011 #b1110111110001001011010000100001011001010011100111000)))
(assert (= y (fp #b1 #b10111010111 #b1100001110010100000011001110111110011101001100000001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
