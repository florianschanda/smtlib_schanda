(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.70637551481726834623486865893937647342681884765625p-614 {+ 3181232505314692 -614 (2.5099e-185)}
; 1.70637551481726834623486865893937647342681884765625p-614 | == 1.70637551481726834623486865893937647342681884765625p-614
; [HW: 1.70637551481726834623486865893937647342681884765625p-614] 

; mpf : + 3181232505314692 -614
; mpfd: + 3181232505314692 -614 (2.5099e-185) class: Pos. norm. non-zero
; hwf : + 3181232505314692 -614 (2.5099e-185) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00110011001 #b1011010011010101000001101001011011010101110110000100)))
(assert (= r (fp #b0 #b00110011001 #b1011010011010101000001101001011011010101110110000100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
