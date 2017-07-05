(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.165821082459519431040462222881615161895751953125p-11 {+ 746791765174864 -11 (0.000569249)}
; Y = -1.6975427257268929093214637759956531226634979248046875p-967 {- 3141453159658635 -967 (-1.36086e-291)}
; 1.165821082459519431040462222881615161895751953125p-11 / -1.6975427257268929093214637759956531226634979248046875p-967 == -1.3735396049726069644947301640058867633342742919921875p955
; [HW: -1.3735396049726069644947301640058867633342742919921875p955] 

; mpf : - 1682272825762755 955
; mpfd: - 1682272825762755 955 (-4.18299e+287) class: Neg. norm. non-zero
; hwf : - 1682272825762755 955 (-4.18299e+287) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01111110100 #b0010101001110011010000000001111000100110101001010000)))
(assert (= y (fp #b1 #b00000111000 #b1011001010010010001010001111101010001111010010001011)))
(assert (= r (fp #b1 #b11110111010 #b0101111110100000010010101010001100011110001111000011)))
(assert (= (fp.div roundTowardNegative x y) r))
(check-sat)
(exit)
