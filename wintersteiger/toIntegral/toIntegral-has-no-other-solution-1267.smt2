(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5792648802193836043983310446492396295070648193359375 976 {+ 2608777098704831 976 (1.00863e+294)}
; 1.5792648802193836043983310446492396295070648193359375 976 I == 1.5792648802193836043983310446492396295070648193359375 976
; [HW: 1.5792648802193836043983310446492396295070648193359375 976] 

; mpf : + 2608777098704831 976
; mpfd: + 2608777098704831 976 (1.00863e+294) class: Pos. norm. non-zero
; hwf : + 2608777098704831 976 (1.00863e+294) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111001111 #b1001010001001010101101000000010001000011011110111111)))
(assert (= r (fp #b0 #b11111001111 #b1001010001001010101101000000010001000011011110111111)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
