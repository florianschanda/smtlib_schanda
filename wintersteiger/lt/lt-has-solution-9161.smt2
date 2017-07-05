(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.948096086602145060595603354158811271190643310546875p324 {- 4269845182332846 324 (-6.65777e+097)}
; Y = -1.0518602611894627418820391540066339075565338134765625p-355 {- 233557852968201 -355 (-1.43321e-107)}
; -1.948096086602145060595603354158811271190643310546875p324 < -1.0518602611894627418820391540066339075565338134765625p-355 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101000011 #b1111001010110110011011001101010101101011111110101110)))
(assert (= y (fp #b1 #b01010011100 #b0000110101000110101101101100110111000101010100001001)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
