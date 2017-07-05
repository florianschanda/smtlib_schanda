(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1795509582057508435326553808408789336681365966796875 176 {+ 808625628469435 176 (1.12979e+053)}
; 1.1795509582057508435326553808408789336681365966796875 176 I == 1.1795509582057508435326553808408789336681365966796875 176
; [HW: 1.1795509582057508435326553808408789336681365966796875 176] 

; mpf : + 808625628469435 176
; mpfd: + 808625628469435 176 (1.12979e+053) class: Pos. norm. non-zero
; hwf : + 808625628469435 176 (1.12979e+053) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010101111 #b0010110111110111000011010011010101110101100010111011)))
(assert (= r (fp #b0 #b10010101111 #b0010110111110111000011010011010101110101100010111011)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
