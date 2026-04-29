(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.4726249851024746373440166280488483607769012451171875p579 {- 2128513706793491 579 (-2.9138e+174)}
; -1.4726249851024746373440166280488483607769012451171875p579 | == 1.4726249851024746373440166280488483607769012451171875p579
; [HW: 1.4726249851024746373440166280488483607769012451171875p579] 

; mpf : + 2128513706793491 579
; mpfd: + 2128513706793491 579 (2.9138e+174) class: Pos. norm. non-zero
; hwf : + 2128513706793491 579 (2.9138e+174) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001000010 #b0111100011111101111100110111011001001001101000010011)))
(assert (= r (fp #b0 #b11001000010 #b0111100011111101111100110111011001001001101000010011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
