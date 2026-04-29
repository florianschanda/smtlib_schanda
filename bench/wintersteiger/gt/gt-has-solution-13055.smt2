(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.777559610938755252362852843361906707286834716796875p252 {- 3501817174082126 252 (-1.28642e+076)}
; Y = 1.5740455218781799207050653421902097761631011962890625p-465 {+ 2585271198424273 -465 (1.65223e-140)}
; -1.777559610938755252362852843361906707286834716796875p252 > 1.5740455218781799207050653421902097761631011962890625p-465 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011111011 #b1100011100001110001001011000101110101100001001001110)))
(assert (= y (fp #b0 #b01000101110 #b1001001011110100101001011011011011100001110011010001)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
