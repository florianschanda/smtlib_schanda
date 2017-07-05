(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.36078112947818485878315186710096895694732666015625p-1019 {+ 1624813760280260 -1019 (2.42227e-307)}
; Y = -1.88120624248413204071539439610205590724945068359375p-20 {- 3968600105288092 -20 (-1.79406e-006)}
; 1.36078112947818485878315186710096895694732666015625p-1019 > -1.88120624248413204071539439610205590724945068359375p-20 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000000100 #b0101110001011100001001101111000000011111011011000100)))
(assert (= y (fp #b1 #b01111101011 #b1110000110010110101110110111100010000000000110011100)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
