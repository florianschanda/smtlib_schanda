(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.6216223895360013518285313693922944366931915283203125p572 {- 2799538361879493 572 (-2.50673e+172)}
; Y = 1.451233771127002025735919232829473912715911865234375p729 {+ 2032176243504550 729 (4.0983e+219)}
; -1.6216223895360013518285313693922944366931915283203125p572 > 1.451233771127002025735919232829473912715911865234375p729 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000111011 #b1001111100100010101001010001100110000100101111000101)))
(assert (= y (fp #b0 #b11011011000 #b0111001110000100000011100111000111010111010110100110)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
