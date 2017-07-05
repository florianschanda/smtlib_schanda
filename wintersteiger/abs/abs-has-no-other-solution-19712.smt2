(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8654506165893709468406314044841565191745758056640625p718 {+ 3897643074379457 718 (2.57229e+216)}
; 1.8654506165893709468406314044841565191745758056640625p718 | == 1.8654506165893709468406314044841565191745758056640625p718
; [HW: 1.8654506165893709468406314044841565191745758056640625p718] 

; mpf : + 3897643074379457 718
; mpfd: + 3897643074379457 718 (2.57229e+216) class: Pos. norm. non-zero
; hwf : + 3897643074379457 718 (2.57229e+216) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011001101 #b1101110110001110001010111110111010001101111011000001)))
(assert (= r (fp #b0 #b11011001101 #b1101110110001110001010111110111010001101111011000001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
