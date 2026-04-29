(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.335767216222271347447758671478368341922760009765625 644 {+ 1512161109861850 644 (9.75097e+193)}
; 1.335767216222271347447758671478368341922760009765625 644 I == 1.335767216222271347447758671478368341922760009765625 644
; [HW: 1.335767216222271347447758671478368341922760009765625 644] 

; mpf : + 1512161109861850 644
; mpfd: + 1512161109861850 644 (9.75097e+193) class: Pos. norm. non-zero
; hwf : + 1512161109861850 644 (9.75097e+193) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010000011 #b0101010111110100110101110001110010111110010111011010)))
(assert (= r (fp #b0 #b11010000011 #b0101010111110100110101110001110010111110010111011010)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
