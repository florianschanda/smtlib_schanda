(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.98043534179168290165762300603091716766357421875 95 {+ 4415488239953888 95 (7.84531e+028)}
; 1.98043534179168290165762300603091716766357421875 95 I == 1.98043534179168290165762300603091716766357421875 95
; [HW: 1.98043534179168290165762300603091716766357421875 95] 

; mpf : + 4415488239953888 95
; mpfd: + 4415488239953888 95 (7.84531e+028) class: Pos. norm. non-zero
; hwf : + 4415488239953888 95 (7.84531e+028) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001011110 #b1111101011111101110011111000000011010110011111100000)))
(assert (= r (fp #b0 #b10001011110 #b1111101011111101110011111000000011010110011111100000)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
