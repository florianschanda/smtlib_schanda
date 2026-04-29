(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.683357639709691877527575343265198171138763427734375p-621 {+ 3077569211557350 -621 (1.93441e-187)}
; Y = 1.79898388596009706219547297223471105098724365234375p1015 {+ 3598303531084924 1015 (6.31645e+305)}
; 1.683357639709691877527575343265198171138763427734375p-621 < 1.79898388596009706219547297223471105098724365234375p1015 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110010010 #b1010111011110000100001101011101000000110010111100110)))
(assert (= y (fp #b0 #b11111110110 #b1100110010001010001101010011110000111010110001111100)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
