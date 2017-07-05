(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.542914780640135319345063180662691593170166015625p-741 {+ 2445070803784848 -741 (1.33388e-223)}
; Y = 1.566391852976144694054028150276280939579010009765625p444 {+ 2550802138009050 444 (7.11571e+133)}
; 1.542914780640135319345063180662691593170166015625p-741 < 1.566391852976144694054028150276280939579010009765625p444 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100011010 #b1000101011111100011101101000101101011101010010010000)))
(assert (= y (fp #b0 #b10110111011 #b1001000011111111000011100111010101000000110111011010)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
