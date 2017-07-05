(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.8996895963327589118563309966702945530414581298828125p17 {+ 4051841730793325 17 (248996)}
; 1.8996895963327589118563309966702945530414581298828125p17 | == 1.8996895963327589118563309966702945530414581298828125p17
; [HW: 1.8996895963327589118563309966702945530414581298828125p17] 

; mpf : + 4051841730793325 17
; mpfd: + 4051841730793325 17 (248996) class: Pos. norm. non-zero
; hwf : + 4051841730793325 17 (248996) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000010000 #b1110011001010010000011101011000011001100111101101101)))
(assert (= r (fp #b0 #b10000010000 #b1110011001010010000011101011000011001100111101101101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
