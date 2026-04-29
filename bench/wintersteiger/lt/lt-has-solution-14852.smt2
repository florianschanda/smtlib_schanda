(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.920544553537203658066800926462747156620025634765625p-232 {- 4145764108288090 -232 (-2.78269e-070)}
; Y = 1.1810690249339483859358779227477498352527618408203125p-921 {+ 815462393220869 -921 (6.66268e-278)}
; -1.920544553537203658066800926462747156620025634765625p-232 < 1.1810690249339483859358779227477498352527618408203125p-921 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100010111 #b1110101110101000110011101100111111110100000001011010)))
(assert (= y (fp #b0 #b00001100110 #b0010111001011010100010100010010001101000111100000101)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
