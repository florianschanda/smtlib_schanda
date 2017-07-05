(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.568792356148156041939500937587581574916839599609375p-807 {+ 2561613043200022 -807 (1.83806e-243)}
; 1.568792356148156041939500937587581574916839599609375p-807 S == 1.7713228707088701785465900684357620775699615478515625p-404
; [HW: 1.7713228707088701785465900684357620775699615478515625p-404] 

; mpf : + 3473729393106809 -404
; mpfd: + 3473729393106809 -404 (4.28726e-122) class: Pos. norm. non-zero
; hwf : + 3473729393106809 -404 (4.28726e-122) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011011000 #b1001000110011100011000000011011111011111000000010110)))
(assert (= r (fp #b0 #b01001101011 #b1100010101110101011010100110100001011001111101111001)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
