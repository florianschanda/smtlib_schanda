(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5013054966554630897945799006265588104724884033203125 578 {+ 2257679247936325 578 (1.48527e+174)}
; 1.5013054966554630897945799006265588104724884033203125 578 I == 1.5013054966554630897945799006265588104724884033203125 578
; [HW: 1.5013054966554630897945799006265588104724884033203125 578] 

; mpf : + 2257679247936325 578
; mpfd: + 2257679247936325 578 (1.48527e+174) class: Pos. norm. non-zero
; hwf : + 2257679247936325 578 (1.48527e+174) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001000001 #b1000000001010101100011101001100101110000101101000101)))
(assert (= r (fp #b0 #b11001000001 #b1000000001010101100011101001100101110000101101000101)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
