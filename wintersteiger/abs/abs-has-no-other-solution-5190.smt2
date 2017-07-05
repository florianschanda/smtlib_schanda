(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1334203889899452377676425385288894176483154296875p-846 {+ 600872014138744 -846 (2.41554e-255)}
; 1.1334203889899452377676425385288894176483154296875p-846 | == 1.1334203889899452377676425385288894176483154296875p-846
; [HW: 1.1334203889899452377676425385288894176483154296875p-846] 

; mpf : + 600872014138744 -846
; mpfd: + 600872014138744 -846 (2.41554e-255) class: Pos. norm. non-zero
; hwf : + 600872014138744 -846 (2.41554e-255) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010110001 #b0010001000100111110101101010111101010100110101111000)))
(assert (= r (fp #b0 #b00010110001 #b0010001000100111110101101010111101010100110101111000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
