(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.244924677116216127359393794904462993144989013671875p873 {- 1103042684594430 873 (-7.84024e+262)}
; Y = 1.4705628657813305526502745124162174761295318603515625p776 {+ 2119226746987193 776 (5.84467e+233)}
; -1.244924677116216127359393794904462993144989013671875p873 > 1.4705628657813305526502745124162174761295318603515625p776 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101101000 #b0011111010110011011000100011011000110010100011111110)))
(assert (= y (fp #b0 #b11100000111 #b0111100001110110110011101101011100111110001010111001)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
