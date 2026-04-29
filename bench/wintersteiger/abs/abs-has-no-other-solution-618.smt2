(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.94465267579776135420388527563773095607757568359375p916 {- 4254337438717340 916 (-1.07725e+276)}
; -1.94465267579776135420388527563773095607757568359375p916 | == 1.94465267579776135420388527563773095607757568359375p916
; [HW: 1.94465267579776135420388527563773095607757568359375p916] 

; mpf : + 4254337438717340 916
; mpfd: + 4254337438717340 916 (1.07725e+276) class: Pos. norm. non-zero
; hwf : + 4254337438717340 916 (1.07725e+276) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110010011 #b1111000111010100110000011111110010100001010110011100)))
(assert (= r (fp #b0 #b11110010011 #b1111000111010100110000011111110010100001010110011100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
