(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.68221059883621126829211789299733936786651611328125p-929 {- 3072403398706964 -929 (-3.70693e-280)}
; Y = 1.2220917587562942774326302242116071283817291259765625p-1005 {+ 1000212361976905 -1005 (3.56417e-303)}
; -1.68221059883621126829211789299733936786651611328125p-929 M 1.2220917587562942774326302242116071283817291259765625p-1005 == 1.2220917587562942774326302242116071283817291259765625p-1005
; [HW: 1.2220917587562942774326302242116071283817291259765625p-1005] 

; mpf : + 1000212361976905 -1005
; mpfd: + 1000212361976905 -1005 (3.56417e-303) class: Pos. norm. non-zero
; hwf : + 1000212361976905 -1005 (3.56417e-303) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001011110 #b1010111010100101010110101001001011111100011100010100)))
(assert (= y (fp #b0 #b00000010010 #b0011100011011011000000010110100010010001110001001001)))
(assert (= r (fp #b0 #b00000010010 #b0011100011011011000000010110100010010001110001001001)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
