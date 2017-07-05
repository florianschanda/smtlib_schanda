(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.0808132124759957104487284595961682498455047607421875p283 {- 363950353593507 283 (-1.67973e+085)}
; -1.0808132124759957104487284595961682498455047607421875p283 | == 1.0808132124759957104487284595961682498455047607421875p283
; [HW: 1.0808132124759957104487284595961682498455047607421875p283] 

; mpf : + 363950353593507 283
; mpfd: + 363950353593507 283 (1.67973e+085) class: Pos. norm. non-zero
; hwf : + 363950353593507 283 (1.67973e+085) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100011010 #b0001010010110000001011001011100010101011010010100011)))
(assert (= r (fp #b0 #b10100011010 #b0001010010110000001011001011100010101011010010100011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
