(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0357221694917324583684603567235171794891357421875p682 {- 160878349211832 682 (-2.07826e+205)}
; Y = -1.7209367015350789387184704537503421306610107421875p637 {- 3246810260391096 637 (-9.81459e+191)}
; -1.0357221694917324583684603567235171794891357421875p682 < -1.7209367015350789387184704537503421306610107421875p637 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11010101001 #b0000100100100101000101101000110110110101100010111000)))
(assert (= y (fp #b1 #b11001111100 #b1011100010001111010011101100001110010100010010111000)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
