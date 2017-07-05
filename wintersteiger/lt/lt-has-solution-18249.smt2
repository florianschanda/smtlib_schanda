(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8876069897290304044901176894200034439563751220703125p-619 {- 3997426508195109 -619 (-8.67649e-187)}
; Y = 1.9550507519437416714680466611753217875957489013671875p-217 {+ 4301166210573747 -217 (9.28216e-066)}
; -1.8876069897290304044901176894200034439563751220703125p-619 < 1.9550507519437416714680466611753217875957489013671875p-217 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00110010100 #b1110001100111010001101100011000010010110010100100101)))
(assert (= y (fp #b0 #b01100100110 #b1111010001111110001101001100000110011110010110110011)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
