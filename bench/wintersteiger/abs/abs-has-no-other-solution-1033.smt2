(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.4209323459354006313759555268916301429271697998046875p-978 {- 1895710756302859 -978 (-5.56209e-295)}
; -1.4209323459354006313759555268916301429271697998046875p-978 | == 1.4209323459354006313759555268916301429271697998046875p-978
; [HW: 1.4209323459354006313759555268916301429271697998046875p-978] 

; mpf : + 1895710756302859 -978
; mpfd: + 1895710756302859 -978 (5.56209e-295) class: Pos. norm. non-zero
; hwf : + 1895710756302859 -978 (5.56209e-295) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000101101 #b0110101111000010001110001110001110011111000000001011)))
(assert (= r (fp #b0 #b00000101101 #b0110101111000010001110001110001110011111000000001011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
