(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9525001087025355417381433653645217418670654296875p-855 {+ 4289679134623096 -855 (8.12727e-258)}
; Y = 1.2555907621383262107173095500911585986614227294921875p-669 {+ 1151078461125507 -669 (5.12603e-202)}
; 1.9525001087025355417381433653645217418670654296875p-855 = 1.2555907621383262107173095500911585986614227294921875p-669 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00010101000 #b1111001111010111000011000001000001010000010101111000)))
(assert (= y (fp #b0 #b00101100010 #b0100000101101110011001010110110010001011001110000011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
