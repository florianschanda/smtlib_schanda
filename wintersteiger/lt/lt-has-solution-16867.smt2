(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8448239169178355378875266978866420686244964599609375p439 {- 3804748677424847 439 (-2.61892e+132)}
; Y = 1.1003902827760578819749071044498123228549957275390625p-271 {+ 452117640101873 -271 (2.90013e-082)}
; -1.8448239169178355378875266978866420686244964599609375p439 < 1.1003902827760578819749071044498123228549957275390625p-271 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110110110 #b1101100001000110011000010101011000001010011011001111)))
(assert (= y (fp #b0 #b01011110000 #b0001100110110011001011010111010101011011111111110001)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
