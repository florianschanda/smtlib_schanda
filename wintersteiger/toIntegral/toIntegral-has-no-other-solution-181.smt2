(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.16379820101977760060663058538921177387237548828125 830 {+ 737681517076628 830 (8.33248e+249)}
; 1.16379820101977760060663058538921177387237548828125 830 I == 1.16379820101977760060663058538921177387237548828125 830
; [HW: 1.16379820101977760060663058538921177387237548828125 830] 

; mpf : + 737681517076628 830
; mpfd: + 737681517076628 830 (8.33248e+249) class: Pos. norm. non-zero
; hwf : + 737681517076628 830 (8.33248e+249) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100111101 #b0010100111101110101011011100110010000110000010010100)))
(assert (= r (fp #b0 #b11100111101 #b0010100111101110101011011100110010000110000010010100)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
