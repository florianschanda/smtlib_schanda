(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9621799904351784338274455876671709120273590087890625p-694 {+ 4333273446387217 -694 (2.38738e-209)}
; Y = -1.40972902645224085205200026393868029117584228515625p531 {- 1845255490853188 531 (-9.90976e+159)}
; 1.9621799904351784338274455876671709120273590087890625p-694 = -1.40972902645224085205200026393868029117584228515625p531 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101001001 #b1111011001010001011011011000011111001000111000010001)))
(assert (= y (fp #b1 #b11000010010 #b0110100011100100000000000110000011010101100101000100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
