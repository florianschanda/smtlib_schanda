(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.1253179690068646490175297003588639199733734130859375p87 {- 564381958522143 87 (-1.74135e+026)}
; Y = -1.48721904039278829401382608921267092227935791015625p227 {- 2194239488760772 227 (-3.20763e+068)}
; -1.1253179690068646490175297003588639199733734130859375p87 - -1.48721904039278829401382608921267092227935791015625p227 == 1.4872190403927880719692211641813628375530242919921875p227
; [HW: 1.4872190403927880719692211641813628375530242919921875p227] 

; mpf : + 2194239488760771 227
; mpfd: + 2194239488760771 227 (3.20763e+068) class: Pos. norm. non-zero
; hwf : + 2194239488760771 227 (3.20763e+068) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001010110 #b0010000000010100110101101010001001111100010100011111)))
(assert (= y (fp #b1 #b10011100010 #b0111110010111010011000110001010001111001101111000100)))
(assert (= r (fp #b0 #b10011100010 #b0111110010111010011000110001010001111001101111000011)))
(assert  (not (= (fp.sub roundTowardNegative x y) r)))
(check-sat)
(exit)
