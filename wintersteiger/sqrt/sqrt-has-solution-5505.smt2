(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.443406757568829856808179101790301501750946044921875p580 {+ 1996926508160542 580 (5.71197e+174)}
; 1.443406757568829856808179101790301501750946044921875p580 S == 1.2014186437577991650726971784024499356746673583984375p290
; [HW: 1.2014186437577991650726971784024499356746673583984375p290] 

; mpf : + 907108928973095 290
; mpfd: + 907108928973095 290 (2.38997e+087) class: Pos. norm. non-zero
; hwf : + 907108928973095 290 (2.38997e+087) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001000011 #b0111000110000011000110101111001010010101011000011110)))
(assert (= r (fp #b0 #b10100100001 #b0011001110010000001011000001011110111110100100100111)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
