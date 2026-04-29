(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.403782750989951200182304091867990791797637939453125p-82 {+ 1818475846896978 -82 (2.90295e-025)}
; 1.403782750989951200182304091867990791797637939453125p-82 | == 1.403782750989951200182304091867990791797637939453125p-82
; [HW: 1.403782750989951200182304091867990791797637939453125p-82] 

; mpf : + 1818475846896978 -82
; mpfd: + 1818475846896978 -82 (2.90295e-025) class: Pos. norm. non-zero
; hwf : + 1818475846896978 -82 (2.90295e-025) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110101101 #b0110011101011110010011100110111000110000110101010010)))
(assert (= r (fp #b0 #b01110101101 #b0110011101011110010011100110111000110000110101010010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
