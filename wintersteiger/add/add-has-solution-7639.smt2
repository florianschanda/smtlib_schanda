(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.732602888910864447069570815074257552623748779296875p709 {- 3299350097509518 709 (-4.66623e+213)}
; Y = 1.8219215298646032064056043964228592813014984130859375p-461 {+ 3701605495626015 -461 (3.05986e-139)}
; -1.732602888910864447069570815074257552623748779296875p709 + 1.8219215298646032064056043964228592813014984130859375p-461 == -1.7326028889108642250249658900429494678974151611328125p709
; [HW: -1.7326028889108642250249658900429494678974151611328125p709] 

; mpf : - 3299350097509517 709
; mpfd: - 3299350097509517 709 (-4.66623e+213) class: Neg. norm. non-zero
; hwf : - 3299350097509517 709 (-4.66623e+213) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011000100 #b1011101110001011110111001110100011010011110010001110)))
(assert (= y (fp #b0 #b01000110010 #b1101001001101001011100110000101010100101100100011111)))
(assert (= r (fp #b1 #b11011000100 #b1011101110001011110111001110100011010011110010001101)))
(assert (= (fp.add roundTowardZero x y) r))
(check-sat)
(exit)
