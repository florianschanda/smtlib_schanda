(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.15730543183939271756344169261865317821502685546875p404 {+ 708440684215244 404 (4.78152e+121)}
; 1.15730543183939271756344169261865317821502685546875p404 | == 1.15730543183939271756344169261865317821502685546875p404
; [HW: 1.15730543183939271756344169261865317821502685546875p404] 

; mpf : + 708440684215244 404
; mpfd: + 708440684215244 404 (4.78152e+121) class: Pos. norm. non-zero
; hwf : + 708440684215244 404 (4.78152e+121) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110010011 #b0010100001000101001010110011010100111011101111001100)))
(assert (= r (fp #b0 #b10110010011 #b0010100001000101001010110011010100111011101111001100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
