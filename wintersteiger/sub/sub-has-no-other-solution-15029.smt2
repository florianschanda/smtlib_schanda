(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.264243651799249246181489070295356214046478271484375p592 {+ 1190047611778118 592 (2.04922e+178)}
; Y = -1.632301098938451655584458421799354255199432373046875p-259 {- 2847630993565166 -259 (-1.7621e-078)}
; 1.264243651799249246181489070295356214046478271484375p592 - -1.632301098938451655584458421799354255199432373046875p-259 == 1.264243651799249246181489070295356214046478271484375p592
; [HW: 1.264243651799249246181489070295356214046478271484375p592] 

; mpf : + 1190047611778118 592
; mpfd: + 1190047611778118 592 (2.04922e+178) class: Pos. norm. non-zero
; hwf : + 1190047611778118 592 (2.04922e+178) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001001111 #b0100001110100101011110001101001010100111010001000110)))
(assert (= y (fp #b1 #b01011111100 #b1010000111011110011111000001110100101010010111101110)))
(assert (= r (fp #b0 #b11001001111 #b0100001110100101011110001101001010100111010001000110)))
(assert  (not (= (fp.sub roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
