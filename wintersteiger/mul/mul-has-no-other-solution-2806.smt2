(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.935761519562163801566612164606340229511260986328125p112 {- 4214295230807810 112 (-1.0051e+034)}
; Y = 1.5766071808642525553523228154517710208892822265625p760 {+ 2596807884879400 760 (9.56137e+228)}
; -1.935761519562163801566612164606340229511260986328125p112 * 1.5766071808642525553523228154517710208892822265625p760 == -1.525967756091202165436016002786345779895782470703125p873
; [HW: -1.525967756091202165436016002786345779895782470703125p873] 

; mpf : - 2368748190341234 873
; mpfd: - 2368748190341234 873 (-9.61018e+262) class: Neg. norm. non-zero
; hwf : - 2368748190341234 873 (-9.61018e+262) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001101111 #b1110111110001110000100010010001101011111111100000010)))
(assert (= y (fp #b0 #b11011110111 #b1001001110011100100001110011100001110011011000101000)))
(assert (= r (fp #b1 #b11101101000 #b1000011010100101110100101010011100101001100001110010)))
(assert  (not (= (fp.mul roundTowardZero x y) r)))
(check-sat)
(exit)
