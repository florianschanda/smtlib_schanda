(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.37775420241155988065884230309166014194488525390625p739 {+ 1701253685218340 739 (3.98418e+222)}
; 1.37775420241155988065884230309166014194488525390625p739 | == 1.37775420241155988065884230309166014194488525390625p739
; [HW: 1.37775420241155988065884230309166014194488525390625p739] 

; mpf : + 1701253685218340 739
; mpfd: + 1701253685218340 739 (3.98418e+222) class: Pos. norm. non-zero
; hwf : + 1701253685218340 739 (3.98418e+222) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011100010 #b0110000010110100011111111101100101001000110000100100)))
(assert (= r (fp #b0 #b11011100010 #b0110000010110100011111111101100101001000110000100100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
