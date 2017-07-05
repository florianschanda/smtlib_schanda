(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.5863677385797025909397461873595602810382843017578125p997 {- 2640765528969629 997 (-2.12476e+300)}
; Y = -1.3325744180030729690855650915182195603847503662109375p552 {- 1497782024991599 552 (-1.96449e+166)}
; Z = +oo {+ 0 1024 (1.#INF)}
; -1.5863677385797025909397461873595602810382843017578125p997 x -1.3325744180030729690855650915182195603847503662109375p552 +oo == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111100100 #b1001011000011100001100100011010010100001000110011101)))
(assert (= y (fp #b1 #b11000100111 #b0101010100100011100110001101100011001111001101101111)))
(assert (= z (_ +oo 11 53)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.fma roundTowardZero x y z) r)))
(check-sat)
(exit)
