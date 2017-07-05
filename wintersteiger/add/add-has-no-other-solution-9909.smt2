(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.469107129123686572569340569316409528255462646484375p-439 {- 2112670691918278 -439 (-1.03487e-132)}
; Y = -1.52796861196188960008157664560712873935699462890625p-308 {- 2377759244094884 -308 (-2.93005e-093)}
; -1.469107129123686572569340569316409528255462646484375p-439 + -1.52796861196188960008157664560712873935699462890625p-308 == -1.5279686119618898221261815706384368240833282470703125p-308
; [HW: -1.5279686119618898221261815706384368240833282470703125p-308] 

; mpf : - 2377759244094885 -308
; mpfd: - 2377759244094885 -308 (-2.93005e-093) class: Neg. norm. non-zero
; hwf : - 2377759244094885 -308 (-2.93005e-093) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01001001000 #b0111100000010111011001111010000111101000000111000110)))
(assert (= y (fp #b1 #b01011001011 #b1000011100101000111100110111000110110000110110100100)))
(assert (= r (fp #b1 #b01011001011 #b1000011100101000111100110111000110110000110110100101)))
(assert  (not (= (fp.add roundTowardNegative x y) r)))
(check-sat)
(exit)
