(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4212116450841330017595964818610809743404388427734375 494 {+ 1896968607845015 494 (7.26903e+148)}
; 1.4212116450841330017595964818610809743404388427734375 494 I == 1.4212116450841330017595964818610809743404388427734375 494
; [HW: 1.4212116450841330017595964818610809743404388427734375 494] 

; mpf : + 1896968607845015 494
; mpfd: + 1896968607845015 494 (7.26903e+148) class: Pos. norm. non-zero
; hwf : + 1896968607845015 494 (7.26903e+148) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111101101 #b0110101111010100100001101100000001010100101010010111)))
(assert (= r (fp #b0 #b10111101101 #b0110101111010100100001101100000001010100101010010111)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
