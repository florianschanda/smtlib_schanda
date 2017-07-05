(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.423823022850748909462481606169603765010833740234375p-308 {- 1908729207781670 -308 (-2.73034e-093)}
; Y = -1.9963927913613919162827414766070432960987091064453125p-584 {- 4487354203889813 -584 (-3.15303e-176)}
; -1.423823022850748909462481606169603765010833740234375p-308 > -1.9963927913613919162827414766070432960987091064453125p-584 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01011001011 #b0110110001111111101010100110011001101111100100100110)))
(assert (= y (fp #b1 #b00110110111 #b1111111100010011100110010001010011011110000010010101)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
