(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.137410552476826541834498129901476204395294189453125p238 {- 618842112931410 238 (-5.02408e+071)}
; -1.137410552476826541834498129901476204395294189453125p238 | == 1.137410552476826541834498129901476204395294189453125p238
; [HW: 1.137410552476826541834498129901476204395294189453125p238] 

; mpf : + 618842112931410 238
; mpfd: + 618842112931410 238 (5.02408e+071) class: Pos. norm. non-zero
; hwf : + 618842112931410 238 (5.02408e+071) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011101101 #b0010001100101101010101101000010100000011011001010010)))
(assert (= r (fp #b0 #b10011101101 #b0010001100101101010101101000010100000011011001010010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
