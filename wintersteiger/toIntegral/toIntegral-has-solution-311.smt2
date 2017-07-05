(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.636110202418005865609984539332799613475799560546875 75 {+ 2864785670576302 75 (6.18105e+022)}
; 1.636110202418005865609984539332799613475799560546875 75 I == 1.636110202418005865609984539332799613475799560546875 75
; [HW: 1.636110202418005865609984539332799613475799560546875 75] 

; mpf : + 2864785670576302 75
; mpfd: + 2864785670576302 75 (6.18105e+022) class: Pos. norm. non-zero
; hwf : + 2864785670576302 75 (6.18105e+022) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001001010 #b1010001011011000000111100100010000001001100010101110)))
(assert (= r (fp #b0 #b10001001010 #b1010001011011000000111100100010000001001100010101110)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
