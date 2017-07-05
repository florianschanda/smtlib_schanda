(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.1563048114750509309800463597639463841915130615234375 547 {- 703934290715255 547 (-5.32697e+164)}
; -1.1563048114750509309800463597639463841915130615234375 547 I == -1.1563048114750509309800463597639463841915130615234375 547
; [HW: -1.1563048114750509309800463597639463841915130615234375 547] 

; mpf : - 703934290715255 547
; mpfd: - 703934290715255 547 (-5.32697e+164) class: Neg. norm. non-zero
; hwf : - 703934290715255 547 (-5.32697e+164) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000100010 #b0010100000000011100101111001010101111110001001110111)))
(assert (= r (fp #b1 #b11000100010 #b0010100000000011100101111001010101111110001001110111)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
