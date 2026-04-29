(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.5764255989217341724639709354960359632968902587890625 127 {- 2595990112510737 127 (-2.68215e+038)}
; -1.5764255989217341724639709354960359632968902587890625 127 I == -1.5764255989217341724639709354960359632968902587890625 127
; [HW: -1.5764255989217341724639709354960359632968902587890625 127] 

; mpf : - 2595990112510737 127
; mpfd: - 2595990112510737 127 (-2.68215e+038) class: Neg. norm. non-zero
; hwf : - 2595990112510737 127 (-2.68215e+038) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001111110 #b1001001110010000101000001100011111110010001100010001)))
(assert (= r (fp #b1 #b10001111110 #b1001001110010000101000001100011111110010001100010001)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
