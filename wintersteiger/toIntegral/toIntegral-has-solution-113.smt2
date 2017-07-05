(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.41487589456430118417529229191131889820098876953125 279 {- 1868434924164788 279 (-1.37432e+084)}
; -1.41487589456430118417529229191131889820098876953125 279 I == -1.41487589456430118417529229191131889820098876953125 279
; [HW: -1.41487589456430118417529229191131889820098876953125 279] 

; mpf : - 1868434924164788 279
; mpfd: - 1868434924164788 279 (-1.37432e+084) class: Neg. norm. non-zero
; hwf : - 1868434924164788 279 (-1.37432e+084) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100010110 #b0110101000110101010011100111111100001101011010110100)))
(assert (= r (fp #b1 #b10100010110 #b0110101000110101010011100111111100001101011010110100)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
