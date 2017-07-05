(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.634889314327765408307868710835464298725128173828125p-263 {+ 2859287279428034 -263 (1.10306e-079)}
; Y = -1.152285233667491137765637176926247775554656982421875p341 {- 685831721598942 341 (-5.16165e+102)}
; 1.634889314327765408307868710835464298725128173828125p-263 = -1.152285233667491137765637176926247775554656982421875p341 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011111000 #b1010001010001000000110110010100110011110000111000010)))
(assert (= y (fp #b1 #b10101010100 #b0010011011111100001010100100001001000011111111011110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
