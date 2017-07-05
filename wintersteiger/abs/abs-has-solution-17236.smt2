(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.5416663558196932459765093881287612020969390869140625p-653 {- 2439448398228705 -653 (-4.1248e-197)}
; -1.5416663558196932459765093881287612020969390869140625p-653 | == 1.5416663558196932459765093881287612020969390869140625p-653
; [HW: 1.5416663558196932459765093881287612020969390869140625p-653] 

; mpf : + 2439448398228705 -653
; mpfd: + 2439448398228705 -653 (4.1248e-197) class: Pos. norm. non-zero
; hwf : + 2439448398228705 -653 (4.1248e-197) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00101110010 #b1000101010101010101001010111001110010110110011100001)))
(assert (= r (fp #b0 #b00101110010 #b1000101010101010101001010111001110010110110011100001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
