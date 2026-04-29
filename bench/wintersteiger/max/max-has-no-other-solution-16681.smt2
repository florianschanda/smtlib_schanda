(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = +zero {+ 0 -1023 (0)}
; Y = 1.1673815680977874809087779794936068356037139892578125p508 {+ 753819567713885 508 (9.78252e+152)}
; +zero M 1.1673815680977874809087779794936068356037139892578125p508 == 1.1673815680977874809087779794936068356037139892578125p508
; [HW: 1.1673815680977874809087779794936068356037139892578125p508] 

; mpf : + 753819567713885 508
; mpfd: + 753819567713885 508 (9.78252e+152) class: Pos. norm. non-zero
; hwf : + 753819567713885 508 (9.78252e+152) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b0 #b10111111011 #b0010101011011001100001001011100011101110111001011101)))
(assert (= r (fp #b0 #b10111111011 #b0010101011011001100001001011100011101110111001011101)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
