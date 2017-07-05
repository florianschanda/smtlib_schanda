(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.68695750952676792877582556684501469135284423828125p557 {- 3093781583924116 557 (-7.95814e+167)}
; -1.68695750952676792877582556684501469135284423828125p557 | == 1.68695750952676792877582556684501469135284423828125p557
; [HW: 1.68695750952676792877582556684501469135284423828125p557] 

; mpf : + 3093781583924116 557
; mpfd: + 3093781583924116 557 (7.95814e+167) class: Pos. norm. non-zero
; hwf : + 3093781583924116 557 (7.95814e+167) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000101100 #b1010111111011100011100101000010100101000101110010100)))
(assert (= r (fp #b0 #b11000101100 #b1010111111011100011100101000010100101000101110010100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
