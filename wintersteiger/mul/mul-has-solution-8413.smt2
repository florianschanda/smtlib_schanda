(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9465584689887627245497014882857911288738250732421875p-748 {+ 4262920368222179 -748 (1.31471e-225)}
; Y = 1.2938158896361187100154666040907613933086395263671875p517 {+ 1323229131080755 517 (5.55112e+155)}
; 1.9465584689887627245497014882857911288738250732421875p-748 * 1.2938158896361187100154666040907613933086395263671875p517 == 1.2592441386417088100557748475694097578525543212890625p-230
; [HW: 1.2592441386417088100557748475694097578525543212890625p-230] 

; mpf : + 1167531806184785 -230
; mpfd: + 1167531806184785 -230 (7.29812e-070) class: Pos. norm. non-zero
; hwf : + 1167531806184785 -230 (7.29812e-070) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100010011 #b1111001001010001101001111110010000001110111111100011)))
(assert (= y (fp #b0 #b11000000100 #b0100101100110111100001001010010100001000010000110011)))
(assert (= r (fp #b0 #b01100011001 #b0100001001011101110100101110100100100101010101010001)))
(assert (= (fp.mul roundTowardPositive x y) r))
(check-sat)
(exit)
