(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.25287510900493348486861577839590609073638916015625p952 {+ 1138848246685892 952 (4.7694e+286)}
; 1.25287510900493348486861577839590609073638916015625p952 S == 1.1193190380784796555957427699468098580837249755859375p476
; [HW: 1.1193190380784796555957427699468098580837249755859375p476] 

; mpf : + 537365175428447 476
; mpfd: + 537365175428447 476 (2.1839e+143) class: Pos. norm. non-zero
; hwf : + 537365175428447 476 (2.1839e+143) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110110111 #b0100000010111100011011000101001100100110000011000100)))
(assert (= r (fp #b0 #b10111011011 #b0001111010001011101100010100011001010110010101011111)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
