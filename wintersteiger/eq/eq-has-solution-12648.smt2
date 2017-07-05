(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.43378903781727817801083801896311342716217041015625p295 {- 1953612149071300 295 (-9.12712e+088)}
; Y = -1.974876744947670292873453945503570139408111572265625p-969 {- 4390454545278490 -969 (-3.95799e-292)}
; -1.43378903781727817801083801896311342716217041015625p295 = -1.974876744947670292873453945503570139408111572265625p-969 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10100100110 #b0110111100001100110011000110001011001001110111000100)))
(assert (= y (fp #b1 #b00000110110 #b1111100110010001100001011011100100101110011000011010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
