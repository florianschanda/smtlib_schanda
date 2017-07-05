(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3592890590985626797504437490715645253658294677734375p1023 {+ 1618094072674583 1023 (1.22179e+308)}
; Y = 1.863491921267999007483240347937680780887603759765625p-533 {+ 3888821894859994 -533 (6.62735e-161)}
; 1.3592890590985626797504437490715645253658294677734375p1023 + 1.863491921267999007483240347937680780887603759765625p-533 == 1.3592890590985626797504437490715645253658294677734375p1023
; [HW: 1.3592890590985626797504437490715645253658294677734375p1023] 

; mpf : + 1618094072674583 1023
; mpfd: + 1618094072674583 1023 (1.22179e+308) class: Pos. norm. non-zero
; hwf : + 1618094072674583 1023 (1.22179e+308) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111111110 #b0101101111111010010111100010011010100011100100010111)))
(assert (= y (fp #b0 #b00111101010 #b1101110100001101110011100111101000110100110011011010)))
(assert (= r (fp #b0 #b11111111110 #b0101101111111010010111100010011010100011100100010111)))
(assert (= (fp.add roundTowardZero x y) r))
(check-sat)
(exit)
