(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.01596017562568352587959452648647129535675048828125p230 {+ 71878241000596 230 (1.75297e+069)}
; Y = +oo {+ 0 1024 (1.#INF)}
; 1.01596017562568352587959452648647129535675048828125p230 M +oo == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011100101 #b0000010000010101111101110101000001011001110010010100)))
(assert (= y (_ +oo 11 53)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
