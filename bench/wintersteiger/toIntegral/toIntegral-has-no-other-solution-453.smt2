(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.700939481812867359877827766467817127704620361328125 7 {- 3156750789101698 7 (-217.72)}
; -1.700939481812867359877827766467817127704620361328125 7 I == -1.703125 7
; [HW: -1.703125 7] 

; mpf : - 3166593487994880 7
; mpfd: - 3166593487994880 7 (-218) class: Neg. norm. non-zero
; hwf : - 3166593487994880 7 (-218) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000000110 #b1011001101110000110001010001011011011100100010000010)))
(assert (= r (fp #b1 #b10000000110 #b1011010000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
