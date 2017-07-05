(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.390409296685104489910145275644026696681976318359375p264 {- 1758247163073014 264 (-4.12156e+079)}
; Y = 1.3044507496350690178843478861381299793720245361328125p-739 {+ 1371124282609165 -739 (4.51088e-223)}
; -1.390409296685104489910145275644026696681976318359375p264 = 1.3044507496350690178843478861381299793720245361328125p-739 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10100000111 #b0110001111110001110111010001100101010001000111110110)))
(assert (= y (fp #b0 #b00100011100 #b0100110111110000011110111111110011101100111000001101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
