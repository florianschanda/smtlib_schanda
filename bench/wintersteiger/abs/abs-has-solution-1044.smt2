(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.55976706711075596700766254798509180545806884765625p-967 {- 2520966754854276 -967 (-1.25041e-291)}
; -1.55976706711075596700766254798509180545806884765625p-967 | == 1.55976706711075596700766254798509180545806884765625p-967
; [HW: 1.55976706711075596700766254798509180545806884765625p-967] 

; mpf : + 2520966754854276 -967
; mpfd: + 2520966754854276 -967 (1.25041e-291) class: Pos. norm. non-zero
; hwf : + 2520966754854276 -967 (1.25041e-291) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000111000 #b1000111101001100111001001111111010011110010110000100)))
(assert (= r (fp #b0 #b00000111000 #b1000111101001100111001001111111010011110010110000100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
