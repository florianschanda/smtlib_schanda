(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.2647431899375873864954655800829641520977020263671875 197 {- 1192297331551795 197 (-2.54045e+059)}
; -1.2647431899375873864954655800829641520977020263671875 197 I == -1.2647431899375873864954655800829641520977020263671875 197
; [HW: -1.2647431899375873864954655800829641520977020263671875 197] 

; mpf : - 1192297331551795 197
; mpfd: - 1192297331551795 197 (-2.54045e+059) class: Neg. norm. non-zero
; hwf : - 1192297331551795 197 (-2.54045e+059) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011000100 #b0100001111000110001101011010111010011110111000110011)))
(assert (= r (fp #b1 #b10011000100 #b0100001111000110001101011010111010011110111000110011)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
