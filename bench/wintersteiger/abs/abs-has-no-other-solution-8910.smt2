(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4104727744841312198076366257737390697002410888671875p639 {- 1848605034212467 639 (-3.2176e+192)}
; -1.4104727744841312198076366257737390697002410888671875p639 | == 1.4104727744841312198076366257737390697002410888671875p639
; [HW: 1.4104727744841312198076366257737390697002410888671875p639] 

; mpf : + 1848605034212467 639
; mpfd: + 1848605034212467 639 (3.2176e+192) class: Pos. norm. non-zero
; hwf : + 1848605034212467 639 (3.2176e+192) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001111110 #b0110100100010100101111100110011001001110110001110011)))
(assert (= r (fp #b0 #b11001111110 #b0110100100010100101111100110011001001110110001110011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
