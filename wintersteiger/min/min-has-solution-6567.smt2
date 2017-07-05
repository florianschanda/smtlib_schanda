(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.729942756553124905138929534587077796459197998046875p-1006 {+ 3287369926414446 -1006 (2.52264e-303)}
; Y = +oo {+ 0 1024 (1.#INF)}
; 1.729942756553124905138929534587077796459197998046875p-1006 m +oo == 1.729942756553124905138929534587077796459197998046875p-1006
; [HW: 1.729942756553124905138929534587077796459197998046875p-1006] 

; mpf : + 3287369926414446 -1006
; mpfd: + 3287369926414446 -1006 (2.52264e-303) class: Pos. norm. non-zero
; hwf : + 3287369926414446 -1006 (2.52264e-303) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000010001 #b1011101011011101100001110100101101011001000001101110)))
(assert (= y (_ +oo 11 53)))
(assert (= r (fp #b0 #b00000010001 #b1011101011011101100001110100101101011001000001101110)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
