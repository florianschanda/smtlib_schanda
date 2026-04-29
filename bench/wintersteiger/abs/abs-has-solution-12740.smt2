(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.8106765802625146566384728430421091616153717041015625p-234 {+ 3650962744788249 -234 (6.55876e-071)}
; 1.8106765802625146566384728430421091616153717041015625p-234 | == 1.8106765802625146566384728430421091616153717041015625p-234
; [HW: 1.8106765802625146566384728430421091616153717041015625p-234] 

; mpf : + 3650962744788249 -234
; mpfd: + 3650962744788249 -234 (6.55876e-071) class: Pos. norm. non-zero
; hwf : + 3650962744788249 -234 (6.55876e-071) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100010101 #b1100111110001000100000000001011111011100010100011001)))
(assert (= r (fp #b0 #b01100010101 #b1100111110001000100000000001011111011100010100011001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
