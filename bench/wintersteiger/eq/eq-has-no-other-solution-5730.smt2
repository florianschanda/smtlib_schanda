(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.857870227246973815482533609610982239246368408203125p888 {- 3863504035761714 888 (-3.83399e+267)}
; Y = 1.0030204771681534570149096907698549330234527587890625p45 {+ 13603019848977 45 (3.52906e+013)}
; -1.857870227246973815482533609610982239246368408203125p888 = 1.0030204771681534570149096907698549330234527587890625p45 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101110111 #b1101101110011101011000100001101000111100111000110010)))
(assert (= y (fp #b0 #b10000101100 #b0000000011000101111100110011001010100111110100010001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
