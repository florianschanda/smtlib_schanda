(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.8116186627076451554074765226687304675579071044921875p-789 {+ 3655205506937091 -789 (5.56417e-238)}
; Y = 1.9482592494557746665151398701709695160388946533203125p914 {+ 4270580002499653 914 (2.69813e+275)}
; 1.8116186627076451554074765226687304675579071044921875p-789 m 1.9482592494557746665151398701709695160388946533203125p914 == 1.8116186627076451554074765226687304675579071044921875p-789
; [HW: 1.8116186627076451554074765226687304675579071044921875p-789] 

; mpf : + 3655205506937091 -789
; mpfd: + 3655205506937091 -789 (5.56417e-238) class: Pos. norm. non-zero
; hwf : + 3655205506937091 -789 (5.56417e-238) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011101010 #b1100111111000110001111011001110100100111000100000011)))
(assert (= y (fp #b0 #b11110010001 #b1111001011000001000111100100000010001010110001000101)))
(assert (= r (fp #b0 #b00011101010 #b1100111111000110001111011001110100100111000100000011)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
