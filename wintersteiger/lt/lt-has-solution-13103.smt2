(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.2229759515822686832819954361184500157833099365234375p-248 {- 1004194412458487 -248 (-2.70383e-075)}
; Y = -1.6991270249174679207726512686349451541900634765625p-367 {- 3148588208902952 -367 (-5.6522e-111)}
; -1.2229759515822686832819954361184500157833099365234375p-248 < -1.6991270249174679207726512686349451541900634765625p-367 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100000111 #b0011100100010100111100111011001111010111000111110111)))
(assert (= y (fp #b1 #b01010010000 #b1011001011111001111111010001101111000101001100101000)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
