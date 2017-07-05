(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3207777850810999975550430463044904172420501708984375p-654 {+ 1444654713359975 -654 (1.7669e-197)}
; Y = 1.576788364925175045527794281952083110809326171875p637 {+ 2597623865348656 637 (8.9925e+191)}
; 1.3207777850810999975550430463044904172420501708984375p-654 < 1.576788364925175045527794281952083110809326171875p637 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101110001 #b0101001000011110011111100011000000110100111001100111)))
(assert (= y (fp #b0 #b11001111100 #b1001001110101000011001101111110000010001001000110000)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
