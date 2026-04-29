(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.368930965536291122219836324802599847316741943359375p49 {+ 1661517358914678 49 (7.7064e+014)}
; 1.368930965536291122219836324802599847316741943359375p49 S == 1.6546485823499146317061558875138871371746063232421875p24
; [HW: 1.6546485823499146317061558875138871371746063232421875p24] 

; mpf : + 2948275111529699 24
; mpfd: + 2948275111529699 24 (2.77604e+007) class: Pos. norm. non-zero
; hwf : + 2948275111529699 24 (2.77604e+007) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000110000 #b0101111001110010010000100111111101110101110001110110)))
(assert (= r (fp #b0 #b10000010111 #b1010011110010111000011001010101110010000110011100011)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
