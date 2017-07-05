(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.9764461379792894746287856833077967166900634765625p-257 {+ 4397522463150888 -257 (8.53446e-078)}
; 1.9764461379792894746287856833077967166900634765625p-257 | == 1.9764461379792894746287856833077967166900634765625p-257
; [HW: 1.9764461379792894746287856833077967166900634765625p-257] 

; mpf : + 4397522463150888 -257
; mpfd: + 4397522463150888 -257 (8.53446e-078) class: Pos. norm. non-zero
; hwf : + 4397522463150888 -257 (8.53446e-078) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011111110 #b1111100111111000010111111100010011101101001100101000)))
(assert (= r (fp #b0 #b01011111110 #b1111100111111000010111111100010011101101001100101000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
