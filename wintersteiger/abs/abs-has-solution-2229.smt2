(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.3473780764064020587511549820192158222198486328125p-524 {- 1564451775460552 -524 (-2.45342e-158)}
; -1.3473780764064020587511549820192158222198486328125p-524 | == 1.3473780764064020587511549820192158222198486328125p-524
; [HW: 1.3473780764064020587511549820192158222198486328125p-524] 

; mpf : + 1564451775460552 -524
; mpfd: + 1564451775460552 -524 (2.45342e-158) class: Pos. norm. non-zero
; hwf : + 1564451775460552 -524 (2.45342e-158) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00111110011 #b0101100011101101110001010000010110000011010011001000)))
(assert (= r (fp #b0 #b00111110011 #b0101100011101101110001010000010110000011010011001000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
