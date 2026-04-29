(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.898866378049029801644564940943382680416107177734375p-774 {- 4048134285237478 -774 (-1.91108e-233)}
; Y = -1.35290155562645875164662356837652623653411865234375p757 {- 1589327314417788 757 (-1.02559e+228)}
; -1.898866378049029801644564940943382680416107177734375p-774 > -1.35290155562645875164662356837652623653411865234375p757 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011111001 #b1110011000011100000110110110000100110001110011100110)))
(assert (= y (fp #b1 #b11011110100 #b0101101001010111110000011010000000011111100001111100)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
