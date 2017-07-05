(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.344676767134915795764982249238528311252593994140625p-373 {- 1552286160032074 -373 (-6.98923e-113)}
; Y = -1.8185466449029046298591083541396073997020721435546875p671 {- 3686406364970091 671 (-1.78177e+202)}
; -1.344676767134915795764982249238528311252593994140625p-373 m -1.8185466449029046298591083541396073997020721435546875p671 == -1.8185466449029046298591083541396073997020721435546875p671
; [HW: -1.8185466449029046298591083541396073997020721435546875p671] 

; mpf : - 3686406364970091 671
; mpfd: - 3686406364970091 671 (-1.78177e+202) class: Neg. norm. non-zero
; hwf : - 3686406364970091 671 (-1.78177e+202) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01010001010 #b0101100000111100101111001001001010001001000101001010)))
(assert (= y (fp #b1 #b11010011110 #b1101000110001100010001011101111000011011110001101011)))
(assert (= r (fp #b1 #b11010011110 #b1101000110001100010001011101111000011011110001101011)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
