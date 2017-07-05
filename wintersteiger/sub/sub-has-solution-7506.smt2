(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -zero {- 0 -1023 (-0)}
; Y = 1.948880321223121381279952402110211551189422607421875p592 {+ 4273377061079646 592 (3.15895e+178)}
; -zero - 1.948880321223121381279952402110211551189422607421875p592 == -1.948880321223121381279952402110211551189422607421875p592
; [HW: -1.948880321223121381279952402110211551189422607421875p592] 

; mpf : - 4273377061079646 592
; mpfd: - 4273377061079646 592 (-3.15895e+178) class: Neg. norm. non-zero
; hwf : - 4273377061079646 592 (-3.15895e+178) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b0 #b11001001111 #b1111001011101001110100100001101101111000101001011110)))
(assert (= r (fp #b1 #b11001001111 #b1111001011101001110100100001101101111000101001011110)))
(assert (= (fp.sub roundTowardNegative x y) r))
(check-sat)
(exit)
