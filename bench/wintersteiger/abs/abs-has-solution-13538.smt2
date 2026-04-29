(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0805231203044918242284211373771540820598602294921875p809 {+ 362643894598019 809 (3.68893e+243)}
; 1.0805231203044918242284211373771540820598602294921875p809 | == 1.0805231203044918242284211373771540820598602294921875p809
; [HW: 1.0805231203044918242284211373771540820598602294921875p809] 

; mpf : + 362643894598019 809
; mpfd: + 362643894598019 809 (3.68893e+243) class: Pos. norm. non-zero
; hwf : + 362643894598019 809 (3.68893e+243) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100101000 #b0001010010011101001010011100100001000111100110000011)))
(assert (= r (fp #b0 #b11100101000 #b0001010010011101001010011100100001000111100110000011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
