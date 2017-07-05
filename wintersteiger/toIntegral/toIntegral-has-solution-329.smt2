(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4016645263346834138218355292337946593761444091796875 484 {- 1808936211128827 484 (-7.00103e+145)}
; -1.4016645263346834138218355292337946593761444091796875 484 I == -1.4016645263346834138218355292337946593761444091796875 484
; [HW: -1.4016645263346834138218355292337946593761444091796875 484] 

; mpf : - 1808936211128827 484
; mpfd: - 1808936211128827 484 (-7.00103e+145) class: Neg. norm. non-zero
; hwf : - 1808936211128827 484 (-7.00103e+145) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111100011 #b0110011011010011011111001000010010010010000111111011)))
(assert (= r (fp #b1 #b10111100011 #b0110011011010011011111001000010010010010000111111011)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
