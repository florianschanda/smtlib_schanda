(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.9745433622378205651415328247821889817714691162109375p7 {- 4388953123030639 7 (-252.742)}
; -1.9745433622378205651415328247821889817714691162109375p7 | == 1.9745433622378205651415328247821889817714691162109375p7
; [HW: 1.9745433622378205651415328247821889817714691162109375p7] 

; mpf : + 4388953123030639 7
; mpfd: + 4388953123030639 7 (252.742) class: Pos. norm. non-zero
; hwf : + 4388953123030639 7 (252.742) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000000110 #b1111100101111011101011000111110101011000011001101111)))
(assert (= r (fp #b0 #b10000000110 #b1111100101111011101011000111110101011000011001101111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
