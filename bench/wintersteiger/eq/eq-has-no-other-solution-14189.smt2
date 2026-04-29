(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0910808310417972055716973045491613447666168212890625p1012 {- 410191596740433 1012 (-4.78864e+304)}
; Y = -1.689112206875672317352155005210079252719879150390625p-329 {- 3103485478101738 -329 (-1.54451e-099)}
; -1.0910808310417972055716973045491613447666168212890625p1012 = -1.689112206875672317352155005210079252719879150390625p-329 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111110011 #b0001011101010001000100101100011010011101111101010001)))
(assert (= y (fp #b1 #b01010110110 #b1011000001101001101010000101011111001110001011101010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
