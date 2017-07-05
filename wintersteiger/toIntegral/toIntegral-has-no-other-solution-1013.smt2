(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.6859188253089858466893247168627567589282989501953125 814 {+ 3089103766067957 814 (1.84185e+245)}
; 1.6859188253089858466893247168627567589282989501953125 814 I == 1.6859188253089858466893247168627567589282989501953125 814
; [HW: 1.6859188253089858466893247168627567589282989501953125 814] 

; mpf : + 3089103766067957 814
; mpfd: + 3089103766067957 814 (1.84185e+245) class: Pos. norm. non-zero
; hwf : + 3089103766067957 814 (1.84185e+245) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100101101 #b1010111110011000011000000100101001101001101011110101)))
(assert (= r (fp #b0 #b11100101101 #b1010111110011000011000000100101001101001101011110101)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
