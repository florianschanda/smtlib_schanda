(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4396654050692869741823187723639421164989471435546875p219 {- 1980076954437739 219 (-1.21292e+066)}
; Y = -1.8716313439745675406555847075651399791240692138671875p940 {- 3925478595928307 940 (-1.73947e+283)}
; -1.4396654050692869741823187723639421164989471435546875p219 = -1.8716313439745675406555847075651399791240692138671875p940 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011011010 #b0111000010001101111010010111011111110100100001101011)))
(assert (= y (fp #b1 #b11110101011 #b1101111100100011001110110101010010001010000011110011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
