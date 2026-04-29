(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.5660461135176497737830914047663100063800811767578125p-733 {- 2549245065912605 -733 (-3.46591e-221)}
; Y = -1.3085236706825928987285578841692768037319183349609375p-330 {- 1389467088321103 -330 (-5.9825e-100)}
; -1.5660461135176497737830914047663100063800811767578125p-733 > -1.3085236706825928987285578841692768037319183349609375p-330 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100100010 #b1001000011101000011001011110100110010110000100011101)))
(assert (= y (fp #b1 #b01010110101 #b0100111011111011011010000100001110011111101001001111)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
