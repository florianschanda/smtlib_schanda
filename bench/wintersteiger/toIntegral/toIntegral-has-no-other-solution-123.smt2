(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.07116975605248310188244431628845632076263427734375 582 {+ 320520086838012 582 (1.69557e+175)}
; 1.07116975605248310188244431628845632076263427734375 582 I == 1.07116975605248310188244431628845632076263427734375 582
; [HW: 1.07116975605248310188244431628845632076263427734375 582] 

; mpf : + 320520086838012 582
; mpfd: + 320520086838012 582 (1.69557e+175) class: Pos. norm. non-zero
; hwf : + 320520086838012 582 (1.69557e+175) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001000101 #b0001001000111000001011100101111010110101101011111100)))
(assert (= r (fp #b0 #b11001000101 #b0001001000111000001011100101111010110101101011111100)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
