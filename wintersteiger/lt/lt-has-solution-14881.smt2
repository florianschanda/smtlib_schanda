(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8412612697525443383739229830098338425159454345703125p-383 {- 3788703940978789 -383 (-9.34603e-116)}
; Y = -1.5724654020102140083992026120540685951709747314453125p680 {- 2578154971175701 680 (-7.8882e+204)}
; -1.8412612697525443383739229830098338425159454345703125p-383 < -1.5724654020102140083992026120540685951709747314453125p680 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010000000 #b1101011101011100111001100000100011111010100001100101)))
(assert (= y (fp #b1 #b11010100111 #b1001001010001101000101111011001110111001101100010101)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
