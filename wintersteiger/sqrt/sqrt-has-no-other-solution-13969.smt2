(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3430050781816060823103953225654549896717071533203125p-98 {+ 1544757542284869 -98 (4.23778e-030)}
; 1.3430050781816060823103953225654549896717071533203125p-98 S == 1.15888095945252533880420742207206785678863525390625p-49
; [HW: 1.15888095945252533880420742207206785678863525390625p-49] 

; mpf : + 715536229786660 -49
; mpfd: + 715536229786660 -49 (2.05859e-015) class: Pos. norm. non-zero
; hwf : + 715536229786660 -49 (2.05859e-015) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110011101 #b0101011111001111001011100100100100100110111001000101)))
(assert (= r (fp #b0 #b01111001110 #b0010100010101100011011000010110011001110010000100100)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
