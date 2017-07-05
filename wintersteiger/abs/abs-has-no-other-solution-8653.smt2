(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.4041081639336530084705145782209001481533050537109375p253 {- 1819941376508975 253 (-2.03231e+076)}
; -1.4041081639336530084705145782209001481533050537109375p253 | == 1.4041081639336530084705145782209001481533050537109375p253
; [HW: 1.4041081639336530084705145782209001481533050537109375p253] 

; mpf : + 1819941376508975 253
; mpfd: + 1819941376508975 253 (2.03231e+076) class: Pos. norm. non-zero
; hwf : + 1819941376508975 253 (2.03231e+076) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011111100 #b0110011101110011101000011111010000100100010000101111)))
(assert (= r (fp #b0 #b10011111100 #b0110011101110011101000011111010000100100010000101111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
