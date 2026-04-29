(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.2012418029954312626017554066493175923824310302734375p164 {- 906312508981591 164 (-2.80899e+049)}
; -1.2012418029954312626017554066493175923824310302734375p164 | == 1.2012418029954312626017554066493175923824310302734375p164
; [HW: 1.2012418029954312626017554066493175923824310302734375p164] 

; mpf : + 906312508981591 164
; mpfd: + 906312508981591 164 (2.80899e+049) class: Pos. norm. non-zero
; hwf : + 906312508981591 164 (2.80899e+049) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010100011 #b0011001110000100100101010011001001110100000101010111)))
(assert (= r (fp #b0 #b10010100011 #b0011001110000100100101010011001001110100000101010111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
