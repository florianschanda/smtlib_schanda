(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.77580436470893943123883218504488468170166015625 152 {- 3493912247815584 152 (-1.01381e+046)}
; -1.77580436470893943123883218504488468170166015625 152 I == -1.77580436470893943123883218504488468170166015625 152
; [HW: -1.77580436470893943123883218504488468170166015625 152] 

; mpf : - 3493912247815584 152
; mpfd: - 3493912247815584 152 (-1.01381e+046) class: Neg. norm. non-zero
; hwf : - 3493912247815584 152 (-1.01381e+046) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010010111 #b1100011010011011000111010110011010000100110110100000)))
(assert (= r (fp #b1 #b10010010111 #b1100011010011011000111010110011010000100110110100000)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
