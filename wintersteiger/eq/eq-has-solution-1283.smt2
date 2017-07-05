(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.75417553995228647778503727749921381473541259765625p-439 {+ 3396504680701060 -439 (1.23568e-132)}
; Y = 1.907750436128395676860236562788486480712890625p607 {+ 4088144525893248 607 (1.01328e+183)}
; 1.75417553995228647778503727749921381473541259765625p-439 = 1.907750436128395676860236562788486480712890625p607 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001001000 #b1100000100010001101001011110111110001001110010000100)))
(assert (= y (fp #b0 #b11001011110 #b1110100001100010010101010010010000011001111010000000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
