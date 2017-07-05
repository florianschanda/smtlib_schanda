(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.826270940400181785889799357391893863677978515625 340 {- 3721193499293328 340 (-4.09038e+102)}
; -1.826270940400181785889799357391893863677978515625 340 I == -1.826270940400181785889799357391893863677978515625 340
; [HW: -1.826270940400181785889799357391893863677978515625 340] 

; mpf : - 3721193499293328 340
; mpfd: - 3721193499293328 340 (-4.09038e+102) class: Neg. norm. non-zero
; hwf : - 3721193499293328 340 (-4.09038e+102) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10101010011 #b1101001110000110011111100000101010100111011010010000)))
(assert (= r (fp #b1 #b10101010011 #b1101001110000110011111100000101010100111011010010000)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
