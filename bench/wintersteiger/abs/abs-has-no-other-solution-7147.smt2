(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6027568122659967553289561692508868873119354248046875p781 {+ 2714575355116171 781 (2.03842e+235)}
; 1.6027568122659967553289561692508868873119354248046875p781 | == 1.6027568122659967553289561692508868873119354248046875p781
; [HW: 1.6027568122659967553289561692508868873119354248046875p781] 

; mpf : + 2714575355116171 781
; mpfd: + 2714575355116171 781 (2.03842e+235) class: Pos. norm. non-zero
; hwf : + 2714575355116171 781 (2.03842e+235) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100001100 #b1001101001001110010001010011110000011111101010001011)))
(assert (= r (fp #b0 #b11100001100 #b1001101001001110010001010011110000011111101010001011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
