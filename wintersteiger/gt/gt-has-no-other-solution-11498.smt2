(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.1504464603944668521506855540792457759380340576171875p-779 {- 677550622971731 -779 (-3.61826e-235)}
; Y = 1.60284904411586293093705535284243524074554443359375p913 {+ 2714990730440860 913 (1.10989e+275)}
; -1.1504464603944668521506855540792457759380340576171875p-779 > 1.60284904411586293093705535284243524074554443359375p913 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011110100 #b0010011010000011101010001100001100110001011101010011)))
(assert (= y (fp #b0 #b11110010000 #b1001101001010100010100001010000011100111000010011100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
