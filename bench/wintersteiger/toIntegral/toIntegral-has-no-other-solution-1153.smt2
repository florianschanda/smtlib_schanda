(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.144604279393107493234538196702487766742706298828125 596 {+ 651239778790978 596 (2.96847e+179)}
; 1.144604279393107493234538196702487766742706298828125 596 I == 1.144604279393107493234538196702487766742706298828125 596
; [HW: 1.144604279393107493234538196702487766742706298828125 596] 

; mpf : + 651239778790978 596
; mpfd: + 651239778790978 596 (2.96847e+179) class: Pos. norm. non-zero
; hwf : + 651239778790978 596 (2.96847e+179) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001010011 #b0010010100000100110010010011101011011010111001000010)))
(assert (= r (fp #b0 #b11001010011 #b0010010100000100110010010011101011011010111001000010)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
