(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.880067850049889077723719310597516596317291259765625p50 {+ 3963473241545434 50 (2.11677e+015)}
; Y = 1.7840287875242715198709220203454606235027313232421875p317 {+ 3530951755342051 317 (4.76333e+095)}
; 1.880067850049889077723719310597516596317291259765625p50 < 1.7840287875242715198709220203454606235027313232421875p317 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10000110001 #b1110000101001100001000000110101000111001101011011010)))
(assert (= y (fp #b0 #b10100111100 #b1100100010110110000111000101000110001010000011100011)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
