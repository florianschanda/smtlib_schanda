(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.904510968799345338453576914616860449314117431640625 934 {+ 4073555262037258 934 (2.76566e+281)}
; 1.904510968799345338453576914616860449314117431640625 934 I == 1.904510968799345338453576914616860449314117431640625 934
; [HW: 1.904510968799345338453576914616860449314117431640625 934] 

; mpf : + 4073555262037258 934
; mpfd: + 4073555262037258 934 (2.76566e+281) class: Pos. norm. non-zero
; hwf : + 4073555262037258 934 (2.76566e+281) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110100101 #b1110011110001110000001111110010111011101110100001010)))
(assert (= r (fp #b0 #b11110100101 #b1110011110001110000001111110010111011101110100001010)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
