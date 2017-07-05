(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.3412721681513044558187175425700843334197998046875p-371 {- 1536953209318136 -371 (-2.78861e-112)}
; Y = -1.132405715356149311645594934816472232341766357421875p-732 {- 596302330339678 -732 (-5.01239e-221)}
; -1.3412721681513044558187175425700843334197998046875p-371 > -1.132405715356149311645594934816472232341766357421875p-732 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010001100 #b0101011101011101100111001110000100111110101011111000)))
(assert (= y (fp #b1 #b00100100011 #b0010000111100101010101110100100101000010000101011110)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
