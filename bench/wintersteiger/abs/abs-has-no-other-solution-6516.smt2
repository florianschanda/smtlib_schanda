(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.915252728292431871892631534137763082981109619140625p-606 {- 4121931846087626 -606 (-7.21188e-183)}
; -1.915252728292431871892631534137763082981109619140625p-606 | == 1.915252728292431871892631534137763082981109619140625p-606
; [HW: 1.915252728292431871892631534137763082981109619140625p-606] 

; mpf : + 4121931846087626 -606
; mpfd: + 4121931846087626 -606 (7.21188e-183) class: Pos. norm. non-zero
; hwf : + 4121931846087626 -606 (7.21188e-183) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00110100001 #b1110101001001110000000001011011110010111001111001010)))
(assert (= r (fp #b0 #b00110100001 #b1110101001001110000000001011011110010111001111001010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
