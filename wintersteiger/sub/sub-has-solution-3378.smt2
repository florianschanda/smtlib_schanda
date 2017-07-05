(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9634302291963610098690651284414343535900115966796875p-93 {+ 4338904021206203 -93 (1.98256e-028)}
; Y = 1.893236166558866617748435601242817938327789306640625p85 {+ 4022778066868362 85 (7.3241e+025)}
; 1.9634302291963610098690651284414343535900115966796875p-93 - 1.893236166558866617748435601242817938327789306640625p85 == -1.893236166558866617748435601242817938327789306640625p85
; [HW: -1.893236166558866617748435601242817938327789306640625p85] 

; mpf : - 4022778066868362 85
; mpfd: - 4022778066868362 85 (-7.3241e+025) class: Neg. norm. non-zero
; hwf : - 4022778066868362 85 (-7.3241e+025) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110100010 #b1111011010100011010111010000111001100000010010111011)))
(assert (= y (fp #b0 #b10001010100 #b1110010010101011001000000001101011111001100010001010)))
(assert (= r (fp #b1 #b10001010100 #b1110010010101011001000000001101011111001100010001010)))
(assert (= (fp.sub roundNearestTiesToEven x y) r))
(check-sat)
(exit)
