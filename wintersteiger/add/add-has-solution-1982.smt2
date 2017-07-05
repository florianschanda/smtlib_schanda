(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.8866549997183865716721129501820541918277740478515625p481 {- 3993139126337913 481 (-1.17793e+145)}
; Y = 1.521394765992518660624455151264555752277374267578125p-667 {+ 2348153273836834 -667 (2.48448e-201)}
; -1.8866549997183865716721129501820541918277740478515625p481 + 1.521394765992518660624455151264555752277374267578125p-667 == -1.8866549997183863496275080251507461071014404296875p481
; [HW: -1.8866549997183863496275080251507461071014404296875p481] 

; mpf : - 3993139126337912 481
; mpfd: - 3993139126337912 481 (-1.17793e+145) class: Neg. norm. non-zero
; hwf : - 3993139126337912 481 (-1.17793e+145) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111100000 #b1110001011111011110100100111001010100000000101111001)))
(assert (= y (fp #b0 #b00101100100 #b1000010101111010001000001001110000111110010100100010)))
(assert (= r (fp #b1 #b10111100000 #b1110001011111011110100100111001010100000000101111000)))
(assert (= (fp.add roundTowardZero x y) r))
(check-sat)
(exit)
