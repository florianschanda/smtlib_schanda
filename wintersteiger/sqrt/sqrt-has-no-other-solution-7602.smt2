(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.495074169773754846346491831354796886444091796875p943 {+ 2229615846513840 943 (1.1116e+284)}
; 1.495074169773754846346491831354796886444091796875p943 S == 1.7292045395347275249520180295803584158420562744140625p471
; [HW: 1.7292045395347275249520180295803584158420562744140625p471] 

; mpf : + 3284045292525473 471
; mpfd: + 3284045292525473 471 (1.05432e+142) class: Pos. norm. non-zero
; hwf : + 3284045292525473 471 (1.05432e+142) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110101110 #b0111111010111101001011100100100001000101110010110000)))
(assert (= r (fp #b0 #b10111010110 #b1011101010101101001001100001000101100101011110100001)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
