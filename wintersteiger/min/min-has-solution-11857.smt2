(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.96717801428401184438143900479190051555633544921875p-287 {- 4355782544730412 -287 (-7.91106e-087)}
; Y = +oo {+ 0 1024 (1.#INF)}
; -1.96717801428401184438143900479190051555633544921875p-287 m +oo == -1.96717801428401184438143900479190051555633544921875p-287
; [HW: -1.96717801428401184438143900479190051555633544921875p-287] 

; mpf : - 4355782544730412 -287
; mpfd: - 4355782544730412 -287 (-7.91106e-087) class: Neg. norm. non-zero
; hwf : - 4355782544730412 -287 (-7.91106e-087) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01011100000 #b1111011110011000111110100111010011000010100100101100)))
(assert (= y (_ +oo 11 53)))
(assert (= r (fp #b1 #b01011100000 #b1111011110011000111110100111010011000010100100101100)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
