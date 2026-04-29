(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8040778438494982083284412510693073272705078125p208 {+ 3621244677937472 208 (7.42155e+062)}
; 1.8040778438494982083284412510693073272705078125p208 S == 1.343159649427236868035606676130555570125579833984375p104
; [HW: 1.343159649427236868035606676130555570125579833984375p104] 

; mpf : + 1545453669289094 104
; mpfd: + 1545453669289094 104 (2.72425e+031) class: Pos. norm. non-zero
; hwf : + 1545453669289094 104 (2.72425e+031) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011001111 #b1100110111011000000010111010101011000101100101000000)))
(assert (= r (fp #b0 #b10001100111 #b0101011111011001010011111000111110011000110010000110)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
