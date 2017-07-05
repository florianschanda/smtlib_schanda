(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.0386540828515518075647605655831284821033477783203125p-296 {+ 174082513126597 -296 (8.15816e-090)}
; 1.0386540828515518075647605655831284821033477783203125p-296 | == 1.0386540828515518075647605655831284821033477783203125p-296
; [HW: 1.0386540828515518075647605655831284821033477783203125p-296] 

; mpf : + 174082513126597 -296
; mpfd: + 174082513126597 -296 (8.15816e-090) class: Pos. norm. non-zero
; hwf : + 174082513126597 -296 (8.15816e-090) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011010111 #b0000100111100101001110111110010110110100010011000101)))
(assert (= r (fp #b0 #b01011010111 #b0000100111100101001110111110010110110100010011000101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
