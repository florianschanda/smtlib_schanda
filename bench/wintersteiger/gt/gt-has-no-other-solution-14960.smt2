(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3723081341743326166948691025027073919773101806640625p629 {+ 1676726774334529 629 (3.05717e+189)}
; Y = 1.68415872302289049144974342198111116886138916015625p-7 {+ 3081176970068164 -7 (0.0131575)}
; 1.3723081341743326166948691025027073919773101806640625p629 > 1.68415872302289049144974342198111116886138916015625p-7 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001110100 #b0101111101001111100101011111110001010000010001000001)))
(assert (= y (fp #b0 #b01111111000 #b1010111100100101000001101010110010101000000011000100)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
