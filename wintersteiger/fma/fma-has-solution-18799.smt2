(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.1136294554870176387595392952789552509784698486328125p854 {- 511741573389645 854 (-1.33769e+257)}
; Y = -1.62813282403548331700449125492013990879058837890625p-838 {- 2828858752265380 -838 (-8.88287e-253)}
; Z = 1.9022276441871230900915179518051445484161376953125p-189 {+ 4063272082164488 -189 (2.42434e-057)}
; -1.1136294554870176387595392952789552509784698486328125p854 x -1.62813282403548331700449125492013990879058837890625p-838 1.9022276441871230900915179518051445484161376953125p-189 == 1.813136670291175533975547295995056629180908203125p16
; [HW: 1.813136670291175533975547295995056629180908203125p16] 

; mpf : + 3662042005324624 16
; mpfd: + 3662042005324624 16 (118826) class: Pos. norm. non-zero
; hwf : + 3662042005324624 16 (118826) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101010101 #b0001110100010110110100011110101100101101110101001101)))
(assert (= y (fp #b1 #b00010111001 #b1010000011001101010100000001000011000110110010100100)))
(assert (= z (fp #b0 #b01101000010 #b1110011011111000011001000001000101010100101100001000)))
(assert (= r (fp #b0 #b10000001111 #b1101000000101001101110011000111000010100001101010000)))
(assert (= (fp.fma roundTowardNegative x y z) r))
(check-sat)
(exit)
