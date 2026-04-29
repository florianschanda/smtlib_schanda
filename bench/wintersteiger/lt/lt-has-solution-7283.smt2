(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.636269227482291199748942744918167591094970703125p-604 {+ 2865501855796560 -604 (2.46455e-182)}
; Y = -1.008572462053412888138836933649145066738128662109375p860 {- 38606936909398 860 (-7.7536e+258)}
; 1.636269227482291199748942744918167591094970703125p-604 < -1.008572462053412888138836933649145066738128662109375p860 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110100011 #b1010001011100010100010100100001101111100110101010000)))
(assert (= y (fp #b1 #b11101011011 #b0000001000110001110011100000110000101010011001010110)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
