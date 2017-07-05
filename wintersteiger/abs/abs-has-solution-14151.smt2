(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.3256931657765702592399748027673922479152679443359375p-390 {- 1466791620028479 -390 (-5.25708e-118)}
; -1.3256931657765702592399748027673922479152679443359375p-390 | == 1.3256931657765702592399748027673922479152679443359375p-390
; [HW: 1.3256931657765702592399748027673922479152679443359375p-390] 

; mpf : + 1466791620028479 -390
; mpfd: + 1466791620028479 -390 (5.25708e-118) class: Pos. norm. non-zero
; hwf : + 1466791620028479 -390 (5.25708e-118) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01001111001 #b0101001101100000101000001001011110001010100000111111)))
(assert (= r (fp #b0 #b01001111001 #b0101001101100000101000001001011110001010100000111111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
