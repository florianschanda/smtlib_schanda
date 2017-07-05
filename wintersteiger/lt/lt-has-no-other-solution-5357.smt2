(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.5185388341038519310899346237420104444026947021484375p-934 {- 2335291300047239 -934 (-1.04571e-281)}
; Y = -1.0467929904763852988480721251107752323150634765625p-13 {- 210736894473000 -13 (-0.000127782)}
; -1.5185388341038519310899346237420104444026947021484375p-934 < -1.0467929904763852988480721251107752323150634765625p-13 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001011001 #b1000010010111110111101100000011000101110100110000111)))
(assert (= y (fp #b1 #b01111110010 #b0000101111111010101000000001101111000111001100101000)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
