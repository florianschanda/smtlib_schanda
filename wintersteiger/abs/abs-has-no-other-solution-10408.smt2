(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.0497416904235266077449750810046680271625518798828125p979 {+ 224016658456173 979 (5.3635e+294)}
; 1.0497416904235266077449750810046680271625518798828125p979 | == 1.0497416904235266077449750810046680271625518798828125p979
; [HW: 1.0497416904235266077449750810046680271625518798828125p979] 

; mpf : + 224016658456173 979
; mpfd: + 224016658456173 979 (5.3635e+294) class: Pos. norm. non-zero
; hwf : + 224016658456173 979 (5.3635e+294) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111010010 #b0000110010111011110111110001010110011101111001101101)))
(assert (= r (fp #b0 #b11111010010 #b0000110010111011110111110001010110011101111001101101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
