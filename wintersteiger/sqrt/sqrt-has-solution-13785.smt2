(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.644333148780251274700958674657158553600311279296875p212 {+ 2901818528749198 212 (1.0823e+064)}
; 1.644333148780251274700958674657158553600311279296875p212 S == 1.2823155418149820850004516614717431366443634033203125p106
; [HW: 1.2823155418149820850004516614717431366443634033203125p106] 

; mpf : + 1271436168918853 106
; mpfd: + 1271436168918853 106 (1.04034e+032) class: Pos. norm. non-zero
; hwf : + 1271436168918853 106 (1.04034e+032) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011010011 #b1010010011110011000001000110100110111101011010001110)))
(assert (= r (fp #b0 #b10001101001 #b0100100001000101110101001101001100111111011101000101)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
