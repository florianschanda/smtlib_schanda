(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.63258864109299839384448205237276852130889892578125p429 {- 2848925968305236 429 (-2.26331e+129)}
; Y = 1.774151983336427207404994987882673740386962890625p603 {+ 3486470583682064 603 (5.8895e+181)}
; -1.63258864109299839384448205237276852130889892578125p429 + 1.774151983336427207404994987882673740386962890625p603 == 1.7741519833364269853603900628513656556606292724609375p603
; [HW: 1.7741519833364269853603900628513656556606292724609375p603] 

; mpf : + 3486470583682063 603
; mpfd: + 3486470583682063 603 (5.8895e+181) class: Pos. norm. non-zero
; hwf : + 3486470583682063 603 (5.8895e+181) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110101100 #b1010000111110001010101000100010101010000110001010100)))
(assert (= y (fp #b0 #b11001011010 #b1100011000101110110100110000101010010000010000010000)))
(assert (= r (fp #b0 #b11001011010 #b1100011000101110110100110000101010010000010000001111)))
(assert  (not (= (fp.add roundTowardNegative x y) r)))
(check-sat)
(exit)
