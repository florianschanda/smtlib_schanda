(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7296070237994338736342569973203353583812713623046875 64 {- 3285857920510027 64 (-3.19056e+019)}
; -1.7296070237994338736342569973203353583812713623046875 64 I == -1.7296070237994338736342569973203353583812713623046875 64
; [HW: -1.7296070237994338736342569973203353583812713623046875 64] 

; mpf : - 3285857920510027 64
; mpfd: - 3285857920510027 64 (-3.19056e+019) class: Neg. norm. non-zero
; hwf : - 3285857920510027 64 (-3.19056e+019) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000111111 #b1011101011000111100001101010001000100110100001001011)))
(assert (= r (fp #b1 #b10000111111 #b1011101011000111100001101010001000100110100001001011)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
