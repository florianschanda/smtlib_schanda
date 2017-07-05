(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = +zero {+ 0 -1023 (0)}
; Y = -1.919122669643995582333673155517317354679107666015625p951 {- 4139360512516474 951 (-3.65282e+286)}
; +zero - -1.919122669643995582333673155517317354679107666015625p951 == 1.919122669643995582333673155517317354679107666015625p951
; [HW: 1.919122669643995582333673155517317354679107666015625p951] 

; mpf : + 4139360512516474 951
; mpfd: + 4139360512516474 951 (3.65282e+286) class: Pos. norm. non-zero
; hwf : + 4139360512516474 951 (3.65282e+286) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b1 #b11110110110 #b1110101101001011100111111000111100100010000101111010)))
(assert (= r (fp #b0 #b11110110110 #b1110101101001011100111111000111100100010000101111010)))
(assert  (not (= (fp.sub roundTowardNegative x y) r)))
(check-sat)
(exit)
