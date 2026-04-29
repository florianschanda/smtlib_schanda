(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.3987798757656098036505909476545639336109161376953125 42 {- 1795944899900853 42 (-6.1519e+012)}
; -1.3987798757656098036505909476545639336109161376953125 42 I == -1.398779875765512770158238708972930908203125 42
; [HW: -1.398779875765512770158238708972930908203125 42] 

; mpf : - 1795944899900416 42
; mpfd: - 1795944899900416 42 (-6.1519e+012) class: Neg. norm. non-zero
; hwf : - 1795944899900416 42 (-6.1519e+012) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000101001 #b0110011000010110011100000001110010110111010110110101)))
(assert (= r (fp #b1 #b10000101001 #b0110011000010110011100000001110010110111010000000000)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
