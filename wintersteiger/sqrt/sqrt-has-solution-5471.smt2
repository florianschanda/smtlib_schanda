(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7917662960158098339746857163845561444759368896484375p485 {+ 3565798395701319 485 (1.7899e+146)}
; 1.7917662960158098339746857163845561444759368896484375p485 S == 1.89302207911889386338089025230146944522857666015625p242
; [HW: 1.89302207911889386338089025230146944522857666015625p242] 

; mpf : + 4021813902753476 242
; mpfd: + 4021813902753476 242 (1.33787e+073) class: Pos. norm. non-zero
; hwf : + 4021813902753476 242 (1.33787e+073) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111100100 #b1100101010110001001100100010101101110110100001000111)))
(assert (= r (fp #b0 #b10011110001 #b1110010010011101000110000101000001101011111011000100)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
