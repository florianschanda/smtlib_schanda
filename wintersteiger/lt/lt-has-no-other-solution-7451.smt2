(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.9588596373923727878008094194228760898113250732421875p-501 {+ 4318319905660899 -501 (2.9921e-151)}
; Y = 1.29447600435631837711980551830492913722991943359375p-114 {+ 1326202023488668 -114 (6.23268e-035)}
; 1.9588596373923727878008094194228760898113250732421875p-501 < 1.29447600435631837711980551830492913722991943359375p-114 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000001010 #b1111010101110111110100110100000000001101111111100011)))
(assert (= y (fp #b0 #b01110001101 #b0100101101100010110001111000100000101010110010011100)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
