(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.10509139608467332749341949238441884517669677734375p-536 {+ 473289572246780 -536 (4.9127e-162)}
; 1.10509139608467332749341949238441884517669677734375p-536 | == 1.10509139608467332749341949238441884517669677734375p-536
; [HW: 1.10509139608467332749341949238441884517669677734375p-536] 

; mpf : + 473289572246780 -536
; mpfd: + 473289572246780 -536 (4.9127e-162) class: Pos. norm. non-zero
; hwf : + 473289572246780 -536 (4.9127e-162) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111100111 #b0001101011100111010001010000110101000110010011111100)))
(assert (= r (fp #b0 #b00111100111 #b0001101011100111010001010000110101000110010011111100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
