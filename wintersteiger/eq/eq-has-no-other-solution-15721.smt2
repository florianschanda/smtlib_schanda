(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.495537097736912013346000094315968453884124755859375p-26 {+ 2231700688716214 -26 (2.22852e-008)}
; Y = 1.00960124260766992421167742577381432056427001953125p23 {+ 43240152630196 23 (8.46915e+006)}
; 1.495537097736912013346000094315968453884124755859375p-26 = 1.00960124260766992421167742577381432056427001953125p23 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01111100101 #b0111111011011011100001001110110010111100000110110110)))
(assert (= y (fp #b0 #b10000010110 #b0000001001110101001110100001111100000000001110110100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
