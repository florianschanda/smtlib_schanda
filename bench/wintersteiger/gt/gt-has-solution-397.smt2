(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.0401160371569162510496653339941985905170440673828125p-765 {- 180666569991469 -765 (-5.35963e-231)}
; Y = -1.423430538420870750115909686428494751453399658203125p-871 {- 1906961615049522 -871 (-9.04087e-263)}
; -1.0401160371569162510496653339941985905170440673828125p-765 > -1.423430538420870750115909686428494751453399658203125p-871 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100000010 #b0000101001000101000010110110101110100010010100101101)))
(assert (= y (fp #b1 #b00010011000 #b0110110001100101111100011001101010100101001100110010)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
