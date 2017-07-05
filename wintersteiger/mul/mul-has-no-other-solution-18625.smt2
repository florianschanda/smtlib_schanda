(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.2537372225550329485344036584137938916683197021484375p-735 {- 1142730860948871 -735 (-6.93681e-222)}
; Y = -1.570893035090443756729428059770725667476654052734375p717 {- 2571073660101734 717 (-1.08306e+216)}
; -1.2537372225550329485344036584137938916683197021484375p-735 * -1.570893035090443756729428059770725667476654052734375p717 == 1.9694870707453386859953070597839541733264923095703125p-18
; [HW: 1.9694870707453386859953070597839541733264923095703125p-18] 

; mpf : + 4366181610549221 -18
; mpfd: + 4366181610549221 -18 (7.513e-006) class: Pos. norm. non-zero
; hwf : + 4366181610549221 -18 (7.513e-006) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00100100000 #b0100000011110100111011000011000010100110110110000111)))
(assert (= y (fp #b1 #b11011001100 #b1001001000100110000010111100001100111010010001100110)))
(assert (= r (fp #b0 #b01111101101 #b1111100000110000010011011111111010111110111111100101)))
(assert  (not (= (fp.mul roundTowardZero x y) r)))
(check-sat)
(exit)
