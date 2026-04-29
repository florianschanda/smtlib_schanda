(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0922018121064509532658348689437843859195709228515625p568 {+ 415240046645497 568 (1.05521e+171)}
; 1.0922018121064509532658348689437843859195709228515625p568 | == 1.0922018121064509532658348689437843859195709228515625p568
; [HW: 1.0922018121064509532658348689437843859195709228515625p568] 

; mpf : + 415240046645497 568
; mpfd: + 415240046645497 568 (1.05521e+171) class: Pos. norm. non-zero
; hwf : + 415240046645497 568 (1.05521e+171) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000110111 #b0001011110011010100010011011011110100001000011111001)))
(assert (= r (fp #b0 #b11000110111 #b0001011110011010100010011011011110100001000011111001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
