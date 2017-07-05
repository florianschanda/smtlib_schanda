(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4452958552353141197244212889927439391613006591796875p48 {+ 2005434247707387 48 (4.06815e+014)}
; 1.4452958552353141197244212889927439391613006591796875p48 | == 1.4452958552353141197244212889927439391613006591796875p48
; [HW: 1.4452958552353141197244212889927439391613006591796875p48] 

; mpf : + 2005434247707387 48
; mpfd: + 2005434247707387 48 (4.06815e+014) class: Pos. norm. non-zero
; hwf : + 2005434247707387 48 (4.06815e+014) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000101111 #b0111000111111110111010001011111101000111101011111011)))
(assert (= r (fp #b0 #b10000101111 #b0111000111111110111010001011111101000111101011111011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
