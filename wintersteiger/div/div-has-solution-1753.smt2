(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.58790587760037649189825970097444951534271240234375p82 {+ 2647692691289980 82 (7.67864e+024)}
; Y = 1.5429798033832327064374112524092197418212890625p-26 {+ 2445363640186432 -26 (2.29922e-008)}
; 1.58790587760037649189825970097444951534271240234375p82 / 1.5429798033832327064374112524092197418212890625p-26 == 1.0291164369868199823798704528599046170711517333984375p108
; [HW: 1.0291164369868199823798704528599046170711517333984375p108] 

; mpf : + 131128774764199 108
; mpfd: + 131128774764199 108 (3.33967e+032) class: Pos. norm. non-zero
; hwf : + 131128774764199 108 (3.33967e+032) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001010001 #b1001011010000000111111111110010101101011011101111100)))
(assert (= y (fp #b0 #b01111100101 #b1000101100000000101110010111000111101011011001000000)))
(assert (= r (fp #b0 #b10001101011 #b0000011101110100001011001100000010100010011010100111)))
(assert (= (fp.div roundTowardZero x y) r))
(check-sat)
(exit)
