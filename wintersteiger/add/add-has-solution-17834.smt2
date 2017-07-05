(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.0705719066635273062360056428587995469570159912109375p-343 {+ 317827612552687 -343 (5.97485e-104)}
; Y = 1.3033553130646975404260956565849483013153076171875p982 {+ 1366190874879032 982 (5.32744e+295)}
; 1.0705719066635273062360056428587995469570159912109375p-343 + 1.3033553130646975404260956565849483013153076171875p982 == 1.3033553130646975404260956565849483013153076171875p982
; [HW: 1.3033553130646975404260956565849483013153076171875p982] 

; mpf : + 1366190874879032 982
; mpfd: + 1366190874879032 982 (5.32744e+295) class: Pos. norm. non-zero
; hwf : + 1366190874879032 982 (5.32744e+295) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010101000 #b0001001000010001000000000001111100100010110111101111)))
(assert (= y (fp #b0 #b11111010101 #b0100110110101000101100011001110010101110010000111000)))
(assert (= r (fp #b0 #b11111010101 #b0100110110101000101100011001110010101110010000111000)))
(assert (= (fp.add roundTowardZero x y) r))
(check-sat)
(exit)
