(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.39641304031704915900036212406121194362640380859375p-903 {- 1785285620656668 -903 (-2.06504e-272)}
; Y = 1.2034087359766740821243047321331687271595001220703125p-101 {+ 916071507548453 -101 (4.74661e-031)}
; -1.39641304031704915900036212406121194362640380859375p-903 * 1.2034087359766740821243047321331687271595001220703125p-101 == -1.6804556517492843514816058814176358282566070556640625p-1004
; [HW: -1.6804556517492843514816058814176358282566070556640625p-1004] 

; mpf : - 3064499819660225 -1004
; mpfd: - 3064499819660225 -1004 (-9.80193e-303) class: Neg. norm. non-zero
; hwf : - 3064499819660225 -1004 (-9.80193e-303) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001111000 #b0110010101111011010100110011001111011110101000011100)))
(assert (= y (fp #b0 #b01110011010 #b0011010000010010100110000100110010111101100100100101)))
(assert (= r (fp #b1 #b00000010011 #b1010111000110010010101110111001010100100001111000001)))
(assert (= (fp.mul roundTowardPositive x y) r))
(check-sat)
(exit)
