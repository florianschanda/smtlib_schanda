(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.208601807593033594656617424334399402141571044921875p179 {- 939459022944798 179 (-9.26088e+053)}
; -1.208601807593033594656617424334399402141571044921875p179 | == 1.208601807593033594656617424334399402141571044921875p179
; [HW: 1.208601807593033594656617424334399402141571044921875p179] 

; mpf : + 939459022944798 179
; mpfd: + 939459022944798 179 (9.26088e+053) class: Pos. norm. non-zero
; hwf : + 939459022944798 179 (9.26088e+053) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010110010 #b0011010101100110111011011001010101111111101000011110)))
(assert (= r (fp #b0 #b10010110010 #b0011010101100110111011011001010101111111101000011110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
