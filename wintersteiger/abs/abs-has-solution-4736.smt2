(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.6999513079194326081733379396609961986541748046875p-123 {- 3152300449523448 -123 (-1.59863e-037)}
; -1.6999513079194326081733379396609961986541748046875p-123 | == 1.6999513079194326081733379396609961986541748046875p-123
; [HW: 1.6999513079194326081733379396609961986541748046875p-123] 

; mpf : + 3152300449523448 -123
; mpfd: + 3152300449523448 -123 (1.59863e-037) class: Pos. norm. non-zero
; hwf : + 3152300449523448 -123 (1.59863e-037) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01110000100 #b1011001100110000000000100100100001001110011011111000)))
(assert (= r (fp #b0 #b01110000100 #b1011001100110000000000100100100001001110011011111000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
