(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.15985095408462601795918089919723570346832275390625p-183 {+ 719904697250340 -183 (9.46048e-056)}
; Y = -1.1194624366508241219975161584443412721157073974609375p18 {- 538010985185423 18 (-293460)}
; 1.15985095408462601795918089919723570346832275390625p-183 > -1.1194624366508241219975161584443412721157073974609375p18 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01101001000 #b0010100011101011111111011111110000000111001000100100)))
(assert (= y (fp #b1 #b10000010001 #b0001111010010101000101110001101010000100000010001111)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
