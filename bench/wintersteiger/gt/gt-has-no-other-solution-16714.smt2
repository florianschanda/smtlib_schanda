(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.3070062217373175084134118151268921792507171630859375p807 {- 1382633105816607 807 (-1.11554e+243)}
; Y = -1.165476659380445756397648437996394932270050048828125p769 {- 745240621524290 769 (-3.61885e+231)}
; -1.3070062217373175084134118151268921792507171630859375p807 > -1.165476659380445756397648437996394932270050048828125p769 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100100110 #b0100111010010111111101011011001000000111110000011111)))
(assert (= y (fp #b1 #b11100000000 #b0010101001011100101011011010100001001010010101000010)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
