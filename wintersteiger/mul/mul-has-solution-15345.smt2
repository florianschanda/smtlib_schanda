(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.31361193996543601514304100419394671916961669921875p-596 {+ 1412382615967276 -596 (5.06512e-180)}
; Y = -1.531845610293563364479041410959325730800628662109375p427 {- 2395219692336726 427 (-5.30913e+128)}
; 1.31361193996543601514304100419394671916961669921875p-596 * -1.531845610293563364479041410959325730800628662109375p427 == -1.0061253419326323665927702677436172962188720703125p-168
; [HW: -1.0061253419326323665927702677436172962188720703125p-168] 

; mpf : - 27586087645320 -168
; mpfd: - 27586087645320 -168 (-2.68914e-051) class: Neg. norm. non-zero
; hwf : - 27586087645320 -168 (-2.68914e-051) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00110101011 #b0101000001001000110111110100000111001001011000101100)))
(assert (= y (fp #b1 #b10110101010 #b1000100000100111000010001010111010111011011001010110)))
(assert (= r (fp #b1 #b01101010111 #b0000000110010001011011100010111101000111000010001000)))
(assert (= (fp.mul roundTowardZero x y) r))
(check-sat)
(exit)
