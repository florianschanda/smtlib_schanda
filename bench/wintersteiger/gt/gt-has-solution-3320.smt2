(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6083396844617670051746927128988318145275115966796875p-227 {+ 2739718376256699 -227 (7.45708e-069)}
; Y = 1.0462234036330979591866707778535783290863037109375p-965 {+ 208171703377816 -965 (3.35489e-291)}
; 1.6083396844617670051746927128988318145275115966796875p-227 > 1.0462234036330979591866707778535783290863037109375p-965 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100011100 #b1001101110111100001001100100100110011111010010111011)))
(assert (= y (fp #b0 #b00000111010 #b0000101111010101010011000000011011101001111110011000)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
