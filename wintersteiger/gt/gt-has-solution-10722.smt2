(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0109298333706799866149594890885055065155029296875p-490 {+ 49223593495416 -490 (3.16245e-148)}
; Y = 1.2572673814212291798497744821361266076564788818359375p-136 {+ 1158629283103231 -136 (1.44327e-041)}
; 1.0109298333706799866149594890885055065155029296875p-490 > 1.2572673814212291798497744821361266076564788818359375p-136 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000010101 #b0000001011001100010011000010110011100000101101111000)))
(assert (= y (fp #b0 #b01101110111 #b0100000111011100010001100110110110001000000111111111)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
