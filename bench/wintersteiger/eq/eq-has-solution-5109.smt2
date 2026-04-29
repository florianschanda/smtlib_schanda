(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5192287329205245161034554257639683783054351806640625p-220 {+ 2338398328100929 -220 (9.01621e-067)}
; Y = 1.936188467400829171793930072453804314136505126953125p43 {+ 4216218032934930 43 (1.70309e+013)}
; 1.5192287329205245161034554257639683783054351806640625p-220 = 1.936188467400829171793930072453804314136505126953125p43 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100100011 #b1000010011101100001011001001101100001001100001000001)))
(assert (= y (fp #b0 #b10000101010 #b1110111110101010000011000010001001100001000000010010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
