(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8917447278809991217940478236414492130279541015625p-115 {- 4016061224194472 -115 (-4.55421e-035)}
; Y = -1.6053341861973200455082633197889663279056549072265625p-977 {- 2726182815392873 -977 (-1.25678e-294)}
; -1.8917447278809991217940478236414492130279541015625p-115 < -1.6053341861973200455082633197889663279056549072265625p-977 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110001100 #b1110010001001001011000011110101010100001000110101000)))
(assert (= y (fp #b1 #b00000101110 #b1001101011110111001011100110010011011110010001101001)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
