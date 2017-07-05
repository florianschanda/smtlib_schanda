(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9160926495660108859198089703568257391452789306640625p845 {+ 4125714515222337 845 (4.49534e+254)}
; Y = 0.9465712676576563122665675109601579606533050537109375p-1022 {+ 4262978008302639 -1023 (2.10619e-308)}
; 1.9160926495660108859198089703568257391452789306640625p845 M 0.9465712676576563122665675109601579606533050537109375p-1022 == 1.9160926495660108859198089703568257391452789306640625p845
; [HW: 1.9160926495660108859198089703568257391452789306640625p845] 

; mpf : + 4125714515222337 845
; mpfd: + 4125714515222337 845 (4.49534e+254) class: Pos. norm. non-zero
; hwf : + 4125714515222337 845 (4.49534e+254) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101001100 #b1110101010000101000011000100000111111101111101000001)))
(assert (= y (fp #b0 #b00000000000 #b1111001001010010011111101001110111101100010000101111)))
(assert (= r (fp #b0 #b11101001100 #b1110101010000101000011000100000111111101111101000001)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
