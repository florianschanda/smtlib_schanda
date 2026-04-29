(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.07704579777472186918885199702344834804534912109375p-651 {+ 346983426148700 -651 (1.15268e-196)}
; Y = 1.8266953741241620523538813358754850924015045166015625p-8 {+ 3723104978854489 -8 (0.00713553)}
; 1.07704579777472186918885199702344834804534912109375p-651 = 1.8266953741241620523538813358754850924015045166015625p-8 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101110100 #b0001001110111001010001011111110110111100100101011100)))
(assert (= y (fp #b0 #b01111110111 #b1101001110100010010011101101101110011110001001011001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
