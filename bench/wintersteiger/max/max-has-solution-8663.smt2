(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = NaN {+ 2957975876594535 1024 (1.#QNAN)}
; Y = 1.1035434937169108504662062841816805303096771240234375p74 {+ 466318439720119 74 (2.08453e+022)}
; NaN M 1.1035434937169108504662062841816805303096771240234375p74 == 1.1035434937169108504662062841816805303096771240234375p74
; [HW: 1.1035434937169108504662062841816805303096771240234375p74] 

; mpf : + 466318439720119 74
; mpfd: + 466318439720119 74 (2.08453e+022) class: Pos. norm. non-zero
; hwf : + 466318439720119 74 (2.08453e+022) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (_ NaN 11 53)))
(assert (= y (fp #b0 #b10001001001 #b0001101010000001110100111000111100111010010010110111)))
(assert (= r (fp #b0 #b10001001001 #b0001101010000001110100111000111100111010010010110111)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
