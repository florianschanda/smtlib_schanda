(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7732491350333965396401936231995932757854461669921875p549 {- 3482404516400963 549 (-3.26766e+165)}
; Y = -1.848284391940176352164826312218792736530303955078125p553 {- 3820333271445986 553 (-5.4495e+166)}
; -1.7732491350333965396401936231995932757854461669921875p549 < -1.848284391940176352164826312218792736530303955078125p553 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000100100 #b1100010111110011101001111100001010100000111101000011)))
(assert (= y (fp #b1 #b11000101000 #b1101100100101001001010100111100100010111000111100010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
