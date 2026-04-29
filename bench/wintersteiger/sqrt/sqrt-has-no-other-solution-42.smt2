(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6004802075730701904632269361172802746295928955078125p-220 {+ 2704322439069437 -220 (9.49842e-067)}
; 1.6004802075730701904632269361172802746295928955078125p-220 S == 1.2651008685369993234104413204477168619632720947265625p-110
; [HW: 1.2651008685369993234104413204477168619632720947265625p-110] 

; mpf : + 1193908172758825 -110
; mpfd: + 1193908172758825 -110 (9.74598e-034) class: Pos. norm. non-zero
; hwf : + 1193908172758825 -110 (9.74598e-034) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100100011 #b1001100110111001000100100010010101101011111011111101)))
(assert (= r (fp #b0 #b01110010001 #b0100001111011101101001101000100010000001111100101001)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
