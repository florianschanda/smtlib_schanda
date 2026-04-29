(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4908196216292548541559881414286792278289794921875p118 {+ 2210455065075640 118 (4.9541e+035)}
; 1.4908196216292548541559881414286792278289794921875p118 | == 1.4908196216292548541559881414286792278289794921875p118
; [HW: 1.4908196216292548541559881414286792278289794921875p118] 

; mpf : + 2210455065075640 118
; mpfd: + 2210455065075640 118 (4.9541e+035) class: Pos. norm. non-zero
; hwf : + 2210455065075640 118 (4.9541e+035) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001110101 #b0111110110100110010110101100111100100001111110111000)))
(assert (= r (fp #b0 #b10001110101 #b0111110110100110010110101100111100100001111110111000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
