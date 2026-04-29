(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3601734925917001728379318592487834393978118896484375p-478 {+ 1622077207024711 -478 (1.74284e-144)}
; 1.3601734925917001728379318592487834393978118896484375p-478 | == 1.3601734925917001728379318592487834393978118896484375p-478
; [HW: 1.3601734925917001728379318592487834393978118896484375p-478] 

; mpf : + 1622077207024711 -478
; mpfd: + 1622077207024711 -478 (1.74284e-144) class: Pos. norm. non-zero
; hwf : + 1622077207024711 -478 (1.74284e-144) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000100001 #b0101110000110100010101000111101110010001010001000111)))
(assert (= r (fp #b0 #b01000100001 #b0101110000110100010101000111101110010001010001000111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
