(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.90084220929480096629049512557685375213623046875p-984 {+ 4057032638099680 -984 (1.1626e-296)}
; Y = -1.77983752524516436466228697099722921848297119140625p-965 {- 3512075988103652 -965 (-5.70735e-291)}
; 1.90084220929480096629049512557685375213623046875p-984 = -1.77983752524516436466228697099722921848297119140625p-965 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000100111 #b1110011010011101100110000101001111000111000011100000)))
(assert (= y (fp #b1 #b00000111010 #b1100011110100011011011101001101100011111000111100100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
