(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.60054492559811745167053231853060424327850341796875p-920 {+ 2704613903142924 -920 (1.80581e-277)}
; 1.60054492559811745167053231853060424327850341796875p-920 | == 1.60054492559811745167053231853060424327850341796875p-920
; [HW: 1.60054492559811745167053231853060424327850341796875p-920] 

; mpf : + 2704613903142924 -920
; mpfd: + 2704613903142924 -920 (1.80581e-277) class: Pos. norm. non-zero
; hwf : + 2704613903142924 -920 (1.80581e-277) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001100111 #b1001100110111101010011111110111100111001000000001100)))
(assert (= r (fp #b0 #b00001100111 #b1001100110111101010011111110111100111001000000001100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
