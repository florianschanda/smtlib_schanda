(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.326735891880562068223525784560479223728179931640625p-24 {+ 1471487640921866 -24 (7.90796e-008)}
; 1.326735891880562068223525784560479223728179931640625p-24 | == 1.326735891880562068223525784560479223728179931640625p-24
; [HW: 1.326735891880562068223525784560479223728179931640625p-24] 

; mpf : + 1471487640921866 -24
; mpfd: + 1471487640921866 -24 (7.90796e-008) class: Pos. norm. non-zero
; hwf : + 1471487640921866 -24 (7.90796e-008) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01111100111 #b0101001110100100111101101010001000001110011100001010)))
(assert (= r (fp #b0 #b01111100111 #b0101001110100100111101101010001000001110011100001010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
