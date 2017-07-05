(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.191247031511547316284804765018634498119354248046875 390 {+ 861300059851118 390 (3.004e+117)}
; 1.191247031511547316284804765018634498119354248046875 390 I == 1.191247031511547316284804765018634498119354248046875 390
; [HW: 1.191247031511547316284804765018634498119354248046875 390] 

; mpf : + 861300059851118 390
; mpfd: + 861300059851118 390 (3.004e+117) class: Pos. norm. non-zero
; hwf : + 861300059851118 390 (3.004e+117) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110000101 #b0011000011110101100100001100000111001100100101101110)))
(assert (= r (fp #b0 #b10110000101 #b0011000011110101100100001100000111001100100101101110)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
