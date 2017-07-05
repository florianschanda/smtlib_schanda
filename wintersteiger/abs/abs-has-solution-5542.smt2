(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1920997494692577856056914242799393832683563232421875p235 {- 865140360127715 235 (-6.58206e+070)}
; -1.1920997494692577856056914242799393832683563232421875p235 | == 1.1920997494692577856056914242799393832683563232421875p235
; [HW: 1.1920997494692577856056914242799393832683563232421875p235] 

; mpf : + 865140360127715 235
; mpfd: + 865140360127715 235 (6.58206e+070) class: Pos. norm. non-zero
; hwf : + 865140360127715 235 (6.58206e+070) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011101010 #b0011000100101101011100101111110110001010010011100011)))
(assert (= r (fp #b0 #b10011101010 #b0011000100101101011100101111110110001010010011100011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
