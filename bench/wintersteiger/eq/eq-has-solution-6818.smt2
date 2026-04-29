(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4753284866927511842504827654920518398284912109375p88 {+ 2140689195548056 88 (4.56592e+026)}
; Y = -1.67200173207770408367878189892508089542388916015625p-552 {- 3026426750177476 -552 (-1.13417e-166)}
; 1.4753284866927511842504827654920518398284912109375p88 = -1.67200173207770408367878189892508089542388916015625p-552 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001010111 #b0111100110101111001000001011000100110011110110011000)))
(assert (= y (fp #b1 #b00111010111 #b1010110000001000010011100011011000100001000011000100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
