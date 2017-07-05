(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4413291586478484962441370953456498682498931884765625p531 {- 1987569834434185 531 (-1.01319e+160)}
; Y = -1.6868449800405385108348355061025358736515045166015625p-449 {- 3093274796171865 -449 (-1.1604e-135)}
; -1.4413291586478484962441370953456498682498931884765625p531 < -1.6868449800405385108348355061025358736515045166015625p-449 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000010010 #b0111000011111010111100101001111100101001111010001001)))
(assert (= y (fp #b1 #b01000111110 #b1010111111010101000100101001011010110010001001011001)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
