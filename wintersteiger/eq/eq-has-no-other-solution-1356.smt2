(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.825013104951176412527047432377003133296966552734375p-238 {+ 3715528712033894 -238 (4.13168e-072)}
; Y = 1.690900406541334444199264908093027770519256591796875p-291 {+ 3111538813449678 -291 (4.25e-088)}
; 1.825013104951176412527047432377003133296966552734375p-238 = 1.690900406541334444199264908093027770519256591796875p-291 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100010001 #b1101001100110100000011110001000010001001011001100110)))
(assert (= y (fp #b0 #b01011011100 #b1011000011011110110110010101101011100011010111001110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
