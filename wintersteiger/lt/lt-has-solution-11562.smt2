(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.61799223743263009822612730204127728939056396484375p314 {+ 2783189610219452 314 (5.40002e+094)}
; Y = -1.7842877331294955123297540922067128121852874755859375p-532 {- 3532117942673247 -532 (-1.26913e-160)}
; 1.61799223743263009822612730204127728939056396484375p314 < -1.7842877331294955123297540922067128121852874755859375p-532 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100111001 #b1001111000110100101111010100000011110100011110111100)))
(assert (= y (fp #b1 #b00111101011 #b1100100011000111000101001011010001110001111101011111)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
