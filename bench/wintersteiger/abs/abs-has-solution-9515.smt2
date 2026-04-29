(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1896244059968645867542136329575441777706146240234375p-828 {- 853992404187831 -828 (-6.6462e-250)}
; -1.1896244059968645867542136329575441777706146240234375p-828 | == 1.1896244059968645867542136329575441777706146240234375p-828
; [HW: 1.1896244059968645867542136329575441777706146240234375p-828] 

; mpf : + 853992404187831 -828
; mpfd: + 853992404187831 -828 (6.6462e-250) class: Pos. norm. non-zero
; hwf : + 853992404187831 -828 (6.6462e-250) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00011000011 #b0011000010001011001110011001111001000111101010110111)))
(assert (= r (fp #b0 #b00011000011 #b0011000010001011001110011001111001000111101010110111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
