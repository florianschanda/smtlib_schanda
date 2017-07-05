(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.1781460296809063148515406282967887818813323974609375p93 {- 802298392888463 93 (-1.16678e+028)}
; Y = -0.5093819191680239999442392218043096363544464111328125p-1022 {- 2294052221354381 -1023 (-1.13341e-308)}
; -1.1781460296809063148515406282967887818813323974609375p93 < -0.5093819191680239999442392218043096363544464111328125p-1022 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10001011100 #b0010110110011010111110100110101101100100010010001111)))
(assert (= y (fp #b1 #b00000000000 #b1000001001100110110110100111110000000000000110001101)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
