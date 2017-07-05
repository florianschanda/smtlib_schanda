(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.017267114342498945944726074230857193470001220703125p174 {+ 77764169718642 174 (2.43587e+052)}
; Y = 1.0262346607418899591124272774322889745235443115234375p767 {+ 118150408341367 767 (7.96624e+230)}
; 1.017267114342498945944726074230857193470001220703125p174 M 1.0262346607418899591124272774322889745235443115234375p767 == 1.0262346607418899591124272774322889745235443115234375p767
; [HW: 1.0262346607418899591124272774322889745235443115234375p767] 

; mpf : + 118150408341367 767
; mpfd: + 118150408341367 767 (7.96624e+230) class: Pos. norm. non-zero
; hwf : + 118150408341367 767 (7.96624e+230) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010101101 #b0000010001101011100111100001101101100101101101110010)))
(assert (= y (fp #b0 #b11011111110 #b0000011010110111010100001001000111101000011101110111)))
(assert (= r (fp #b0 #b11011111110 #b0000011010110111010100001001000111101000011101110111)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
