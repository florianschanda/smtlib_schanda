(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1507308512929130817070699777104891836643218994140625 1004 {+ 678831405716001 1004 (1.97283e+302)}
; 1.1507308512929130817070699777104891836643218994140625 1004 I == 1.1507308512929130817070699777104891836643218994140625 1004
; [HW: 1.1507308512929130817070699777104891836643218994140625 1004] 

; mpf : + 678831405716001 1004
; mpfd: + 678831405716001 1004 (1.97283e+302) class: Pos. norm. non-zero
; hwf : + 678831405716001 1004 (1.97283e+302) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111101011 #b0010011010010110010011000000110011001101001000100001)))
(assert (= r (fp #b0 #b11111101011 #b0010011010010110010011000000110011001101001000100001)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
