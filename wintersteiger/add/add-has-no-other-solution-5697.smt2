(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.012324320888758233394355556811206042766571044921875p310 {- 55503806962206 310 (-2.11163e+093)}
; Y = 1.4858341425224013132577738360851071774959564208984375p130 {+ 2188002463227751 130 (2.02241e+039)}
; -1.012324320888758233394355556811206042766571044921875p310 + 1.4858341425224013132577738360851071774959564208984375p130 == -1.012324320888758233394355556811206042766571044921875p310
; [HW: -1.012324320888758233394355556811206042766571044921875p310] 

; mpf : - 55503806962206 310
; mpfd: - 55503806962206 310 (-2.11163e+093) class: Neg. norm. non-zero
; hwf : - 55503806962206 310 (-2.11163e+093) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100110101 #b0000001100100111101011111100101100101001101000011110)))
(assert (= y (fp #b0 #b10010000001 #b0111110001011111101000000101100101101001111101100111)))
(assert (= r (fp #b1 #b10100110101 #b0000001100100111101011111100101100101001101000011110)))
(assert  (not (= (fp.add roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
