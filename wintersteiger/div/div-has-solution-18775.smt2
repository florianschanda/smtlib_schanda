(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.855180735628712884732749444083310663700103759765625p115 {+ 3851391642311898 115 (7.70612e+034)}
; Y = 1.7648417218772731729359293240122497081756591796875p660 {+ 3444540893643896 660 (8.44312e+198)}
; 1.855180735628712884732749444083310663700103759765625p115 / 1.7648417218772731729359293240122497081756591796875p660 == 1.0511881675458949469970093559822998940944671630859375p-545
; [HW: 1.0511881675458949469970093559822998940944671630859375p-545] 

; mpf : + 230531012285471 -545
; mpfd: + 230531012285471 -545 (9.1271e-165) class: Pos. norm. non-zero
; hwf : + 230531012285471 -545 (9.1271e-165) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001110010 #b1101101011101101000111111110101110110001110011011010)))
(assert (= y (fp #b0 #b11010010011 #b1100001111001100101010101100011000010100010001111000)))
(assert (= r (fp #b0 #b00111011110 #b0000110100011010101010101111000110001101010000011111)))
(assert (= (fp.div roundNearestTiesToEven x y) r))
(check-sat)
(exit)
