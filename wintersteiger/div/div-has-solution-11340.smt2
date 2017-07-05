(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7905851055688721817915620704297907650470733642578125p-412 {+ 3560478786844637 -412 (1.69292e-124)}
; Y = 1.541343995427372437490021184203214943408966064453125p-679 {+ 2437996616085970 -679 (6.14515e-205)}
; 1.7905851055688721817915620704297907650470733642578125p-412 / 1.541343995427372437490021184203214943408966064453125p-679 == 1.1617037539192487383132856848533265292644500732421875p267
; [HW: 1.1617037539192487383132856848533265292644500732421875p267] 

; mpf : + 728248965895139 267
; mpfd: + 728248965895139 267 (2.75489e+080) class: Pos. norm. non-zero
; hwf : + 728248965895139 267 (2.75489e+080) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001100011 #b1100101001100011110010010001010100011111011111011101)))
(assert (= y (fp #b0 #b00101011000 #b1000101010010101100001010010010000111111000111010010)))
(assert (= r (fp #b0 #b10100001010 #b0010100101100101011010101100111010111001001111100011)))
(assert (= (fp.div roundTowardZero x y) r))
(check-sat)
(exit)
