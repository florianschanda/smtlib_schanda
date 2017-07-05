(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.737826135886266332164495906908996403217315673828125p633 {+ 3322873510641602 633 (6.19432e+190)}
; Y = -1.2701944604078503342492467709234915673732757568359375p924 {- 1216847671210367 924 (-1.8013e+278)}
; 1.737826135886266332164495906908996403217315673828125p633 < -1.2701944604078503342492467709234915673732757568359375p924 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001111000 #b1011110011100010001011000111001111000011111111000010)))
(assert (= y (fp #b1 #b11110011011 #b0100010100101011011101101101001100000011000101111111)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
