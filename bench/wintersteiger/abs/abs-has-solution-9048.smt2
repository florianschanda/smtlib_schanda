(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5449735523189407349065049857017584145069122314453125p98 {+ 2454342687150357 98 (4.89622e+029)}
; 1.5449735523189407349065049857017584145069122314453125p98 | == 1.5449735523189407349065049857017584145069122314453125p98
; [HW: 1.5449735523189407349065049857017584145069122314453125p98] 

; mpf : + 2454342687150357 98
; mpfd: + 2454342687150357 98 (4.89622e+029) class: Pos. norm. non-zero
; hwf : + 2454342687150357 98 (4.89622e+029) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001100001 #b1000101110000011011000110000000001100101000100010101)))
(assert (= r (fp #b0 #b10001100001 #b1000101110000011011000110000000001100101000100010101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
