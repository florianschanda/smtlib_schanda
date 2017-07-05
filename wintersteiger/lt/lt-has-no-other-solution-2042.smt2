(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8217138542499580200484388115000911056995391845703125p32 {- 3700670207805285 32 (-7.8242e+009)}
; Y = 1.5206206604148040373303274463978596031665802001953125p-431 {+ 2344667012245493 -431 (2.74216e-130)}
; -1.8217138542499580200484388115000911056995391845703125p32 < 1.5206206604148040373303274463978596031665802001953125p-431 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000011111 #b1101001001011011110101101101001010101100011101100101)))
(assert (= y (fp #b0 #b01001010000 #b1000010101000111011001010100011000011010011111110101)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
