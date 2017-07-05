(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6107572918441148690504860496730543673038482666015625p473 {+ 2750606311962969 473 (3.92842e+142)}
; 1.6107572918441148690504860496730543673038482666015625p473 | == 1.6107572918441148690504860496730543673038482666015625p473
; [HW: 1.6107572918441148690504860496730543673038482666015625p473] 

; mpf : + 2750606311962969 473
; mpfd: + 2750606311962969 473 (3.92842e+142) class: Pos. norm. non-zero
; hwf : + 2750606311962969 473 (3.92842e+142) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111011000 #b1001110001011010100101110000001001000011100101011001)))
(assert (= r (fp #b0 #b10111011000 #b1001110001011010100101110000001001000011100101011001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
