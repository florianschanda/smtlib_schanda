(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4678072580867935759130205042310990393161773681640625p685 {- 2106816593200897 685 (-2.35622e+206)}
; Y = 1.2883516926988907158602160052396357059478759765625p580 {+ 1298620575790376 580 (5.09838e+174)}
; -1.4678072580867935759130205042310990393161773681640625p685 > 1.2883516926988907158602160052396357059478759765625p580 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11010101100 #b0111011111000010001101110110101001010000011100000001)))
(assert (= y (fp #b0 #b11001000011 #b0100100111010001011010101010000111100011010100101000)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
