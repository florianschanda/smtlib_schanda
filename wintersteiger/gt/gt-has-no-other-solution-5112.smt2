(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.061594858887810577385835131281055510044097900390625p926 {+ 277398583535082 926 (6.02192e+278)}
; Y = 1.742305328102540240564621853991411626338958740234375p-636 {+ 3343045999037734 -636 (6.11008e-192)}
; 1.061594858887810577385835131281055510044097900390625p926 > 1.742305328102540240564621853991411626338958740234375p-636 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110011101 #b0000111111000100101011100100000010000110010111101010)))
(assert (= y (fp #b0 #b00110000011 #b1011111000000111101110001101001111011000110100100110)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
