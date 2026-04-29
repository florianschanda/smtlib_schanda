(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.74799908312567620072286445065401494503021240234375p475 {+ 3368688392038268 475 (1.70525e+143)}
; Y = 1.1048037305181923617425354677834548056125640869140625p-632 {+ 471994041708769 -632 (6.19909e-191)}
; 1.74799908312567620072286445065401494503021240234375p475 = 1.1048037305181923617425354677834548056125640869140625p-632 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111011010 #b1011111101111100110111100010111101110110011101111100)))
(assert (= y (fp #b0 #b00110000111 #b0001101011010100011010101101001100010011000011100001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
