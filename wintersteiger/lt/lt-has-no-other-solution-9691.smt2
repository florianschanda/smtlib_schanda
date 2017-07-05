(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5277977446894073221272947193938307464122772216796875p-413 {+ 2376989726310203 -413 (7.22234e-125)}
; Y = 1.3224458070626712302697569612064398825168609619140625p-26 {+ 1452166816534625 -26 (1.9706e-008)}
; 1.5277977446894073221272947193938307464122772216796875p-413 < 1.3224458070626712302697569612064398825168609619140625p-26 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001100010 #b1000011100011101110000001100010001010111111100111011)))
(assert (= y (fp #b0 #b01111100101 #b0101001010001011110011101111010000010001000001100001)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
