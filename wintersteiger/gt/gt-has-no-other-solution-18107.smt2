(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.82194373920609375971935151028446853160858154296875p-300 {- 3701705517608076 -300 (-8.94409e-091)}
; Y = -1.403169696004860522720036897226236760616302490234375p761 {- 1815714892694566 761 (-1.70191e+229)}
; -1.82194373920609375971935151028446853160858154296875p-300 > -1.403169696004860522720036897226236760616302490234375p761 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01011010011 #b1101001001101010111001111010011100001010110010001100)))
(assert (= y (fp #b1 #b11011111000 #b0110011100110110001000010001001100010100010000100110)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
