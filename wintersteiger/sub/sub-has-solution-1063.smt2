(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8828896189087578338927642107591964304447174072265625p-706 {- 3976181358726761 -706 (-5.59304e-213)}
; Y = 1.7280379781553543150351970325573347508907318115234375p-648 {+ 3278791567132023 -648 (1.4795e-195)}
; -1.8828896189087578338927642107591964304447174072265625p-706 - 1.7280379781553543150351970325573347508907318115234375p-648 == -1.7280379781553545370798019575886428356170654296875p-648
; [HW: -1.7280379781553545370798019575886428356170654296875p-648] 

; mpf : - 3278791567132024 -648
; mpfd: - 3278791567132024 -648 (-1.4795e-195) class: Neg. norm. non-zero
; hwf : - 3278791567132024 -648 (-1.4795e-195) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00100111101 #b1110001000000101000011011101011100110000111001101001)))
(assert (= y (fp #b0 #b00101110111 #b1011101001100000101100100110101001101100010101110111)))
(assert (= r (fp #b1 #b00101110111 #b1011101001100000101100100110101001101100010101111000)))
(assert (= (fp.sub roundTowardNegative x y) r))
(check-sat)
(exit)
