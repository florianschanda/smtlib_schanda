(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.519974885349544280188638367690145969390869140625p191 {- 2341758699902224 191 (-4.77052e+057)}
; Y = -1.1315484937200828152725762265617959201335906982421875p951 {- 592441747298915 951 (-2.15377e+286)}
; -1.519974885349544280188638367690145969390869140625p191 < -1.1315484937200828152725762265617959201335906982421875p951 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010111110 #b1000010100011101000100101111011101010001010100010000)))
(assert (= y (fp #b1 #b11110110110 #b0010000110101101001010010111111001011101101001100011)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
