(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 0.00788581297566537386956042610108852386474609375p-1022 {+ 35514544378720 -1023 (1.75465e-310)}
; 0.00788581297566537386956042610108852386474609375p-1022 S == 1.4208336010139734906232433786499314010143280029296875p-515
; [HW: 1.4208336010139734906232433786499314010143280029296875p-515] 

; mpf : + 1895266048711515 -515
; mpfd: + 1895266048711515 -515 (1.32463e-155) class: Pos. norm. non-zero
; hwf : + 1895266048711515 -515 (1.32463e-155) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000000000 #b0000001000000100110011011111110011010101001101100000)))
(assert (= r (fp #b0 #b00111111100 #b0110101110111011110000000011100101101001101101011011)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
