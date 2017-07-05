(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.138789293116452494558643593336455523967742919921875p955 {- 625051408762270 955 (-3.46808e+287)}
; Y = -1.8739975566782132165855045968783088028430938720703125p-229 {- 3936135070578725 -229 (-2.1722e-069)}
; -1.138789293116452494558643593336455523967742919921875p955 = -1.8739975566782132165855045968783088028430938720703125p-229 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110111010 #b0010001110000111101100011111001011111000010110011110)))
(assert (= y (fp #b1 #b01100011010 #b1101111110111110010011011100101010110111100000100101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
