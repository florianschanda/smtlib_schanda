(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.527457666147256087896266762982122600078582763671875p768 {- 2375458148714494 768 (-2.37141e+231)}
; Y = +oo {+ 0 1024 (1.#INF)}
; -1.527457666147256087896266762982122600078582763671875p768 m +oo == -1.527457666147256087896266762982122600078582763671875p768
; [HW: -1.527457666147256087896266762982122600078582763671875p768] 

; mpf : - 2375458148714494 768
; mpfd: - 2375458148714494 768 (-2.37141e+231) class: Neg. norm. non-zero
; hwf : - 2375458148714494 768 (-2.37141e+231) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011111111 #b1000011100000111011101110011001000100000011111111110)))
(assert (= y (_ +oo 11 53)))
(assert (= r (fp #b1 #b11011111111 #b1000011100000111011101110011001000100000011111111110)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
