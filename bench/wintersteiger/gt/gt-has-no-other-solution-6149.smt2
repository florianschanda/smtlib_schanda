(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6100582210338358901680066992412321269512176513671875p-167 {+ 2747457976922291 -167 (8.60661e-051)}
; Y = -1.212946957995495456117396315676160156726837158203125p-595 {- 959027840678194 -595 (-9.35394e-180)}
; 1.6100582210338358901680066992412321269512176513671875p-167 > -1.212946957995495456117396315676160156726837158203125p-595 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01101011000 #b1001110000101100110001101000101111111111000010110011)))
(assert (= y (fp #b1 #b00110101100 #b0011011010000011101100010001110001011111100100110010)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
