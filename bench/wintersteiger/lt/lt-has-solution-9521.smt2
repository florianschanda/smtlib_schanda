(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.302208189495072332420022576116025447845458984375p129 {- 1361024689598320 129 (-8.86237e+038)}
; Y = 1.17115412754170922227103801560588181018829345703125p178 {+ 770809665019764 178 (4.48697e+053)}
; -1.302208189495072332420022576116025447845458984375p129 < 1.17115412754170922227103801560588181018829345703125p178 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010000000 #b0100110101011101100001000001001001110110111101110000)))
(assert (= y (fp #b0 #b10010110001 #b0010101111010000110000011100010001011101111101110100)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
