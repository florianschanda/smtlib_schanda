(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.955316472328247012768542845151387155055999755859375p69 {- 4302362908798390 69 (-1.15422e+021)}
; -1.955316472328247012768542845151387155055999755859375p69 | == 1.955316472328247012768542845151387155055999755859375p69
; [HW: 1.955316472328247012768542845151387155055999755859375p69] 

; mpf : + 4302362908798390 69
; mpfd: + 4302362908798390 69 (1.15422e+021) class: Pos. norm. non-zero
; hwf : + 4302362908798390 69 (1.15422e+021) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001000100 #b1111010010001111100111101100110111111010110110110110)))
(assert (= r (fp #b0 #b10001000100 #b1111010010001111100111101100110111111010110110110110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
