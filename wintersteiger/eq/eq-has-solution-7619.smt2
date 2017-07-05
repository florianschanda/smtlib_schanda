(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.6079834159098218560046689162845723330974578857421875p-104 {- 2738113885338915 -104 (-7.92797e-032)}
; Y = -1.78721143909983393172069554566405713558197021484375p-453 {- 3545285143791804 -453 (-7.68401e-137)}
; -1.6079834159098218560046689162845723330974578857421875p-104 = -1.78721143909983393172069554566405713558197021484375p-453 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110010111 #b1001101110100100110011010001011111010111110100100011)))
(assert (= y (fp #b1 #b01000111010 #b1100100110000110101100000101100111111000100010111100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
