(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1389882916392195522092833925853483378887176513671875 448 {- 625947618435251 448 (-8.27861e+134)}
; -1.1389882916392195522092833925853483378887176513671875 448 I == -1.1389882916392195522092833925853483378887176513671875 448
; [HW: -1.1389882916392195522092833925853483378887176513671875 448] 

; mpf : - 625947618435251 448
; mpfd: - 625947618435251 448 (-8.27861e+134) class: Neg. norm. non-zero
; hwf : - 625947618435251 448 (-8.27861e+134) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110111111 #b0010001110010100101111001001011100011110000010110011)))
(assert (= r (fp #b1 #b10110111111 #b0010001110010100101111001001011100011110000010110011)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
