(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.6333474183776683918978278597933240234851837158203125p885 {- 2852343197401733 885 (-4.21332e+266)}
; Y = -1.3458585301606846851285581578849814832210540771484375p832 {- 1557608347554567 832 (-3.85439e+250)}
; -1.6333474183776683918978278597933240234851837158203125p885 - -1.3458585301606846851285581578849814832210540771484375p832 == -1.63334741837766816985322293476201593875885009765625p885
; [HW: -1.63334741837766816985322293476201593875885009765625p885] 

; mpf : - 2852343197401732 885
; mpfd: - 2852343197401732 885 (-4.21332e+266) class: Neg. norm. non-zero
; hwf : - 2852343197401732 885 (-4.21332e+266) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101110100 #b1010001000100011000011100111000011110000001010000101)))
(assert (= y (fp #b1 #b11100111111 #b0101100010001010001011110100010000010101001100000111)))
(assert (= r (fp #b1 #b11101110100 #b1010001000100011000011100111000011110000001010000100)))
(assert (= (fp.sub roundTowardZero x y) r))
(check-sat)
(exit)
