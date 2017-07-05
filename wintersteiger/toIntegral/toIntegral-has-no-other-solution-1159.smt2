(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.894319322399352412134021506062708795070648193359375 497 {+ 4027656167107958 497 (7.75106e+149)}
; 1.894319322399352412134021506062708795070648193359375 497 I == 1.894319322399352412134021506062708795070648193359375 497
; [HW: 1.894319322399352412134021506062708795070648193359375 497] 

; mpf : + 4027656167107958 497
; mpfd: + 4027656167107958 497 (7.75106e+149) class: Pos. norm. non-zero
; hwf : + 4027656167107958 497 (7.75106e+149) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111110000 #b1110010011110010000111000111000111100010110101110110)))
(assert (= r (fp #b0 #b10111110000 #b1110010011110010000111000111000111100010110101110110)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
