(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3389438777470232810884454011102207005023956298828125p921 {+ 1526467521521005 921 (2.3735e+277)}
; 1.3389438777470232810884454011102207005023956298828125p921 | == 1.3389438777470232810884454011102207005023956298828125p921
; [HW: 1.3389438777470232810884454011102207005023956298828125p921] 

; mpf : + 1526467521521005 921
; mpfd: + 1526467521521005 921 (2.3735e+277) class: Pos. norm. non-zero
; hwf : + 1526467521521005 921 (2.3735e+277) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110011000 #b0101011011000101000001101010011000011010010101101101)))
(assert (= r (fp #b0 #b11110011000 #b0101011011000101000001101010011000011010010101101101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
