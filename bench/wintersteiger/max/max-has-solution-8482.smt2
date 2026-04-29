(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.2027971846522678145419149586814455687999725341796875p760 {+ 913317325231739 760 (7.29439e+228)}
; Y = -oo {- 0 1024 (-1.#INF)}
; 1.2027971846522678145419149586814455687999725341796875p760 M -oo == 1.2027971846522678145419149586814455687999725341796875p760
; [HW: 1.2027971846522678145419149586814455687999725341796875p760] 

; mpf : + 913317325231739 760
; mpfd: + 913317325231739 760 (7.29439e+228) class: Pos. norm. non-zero
; hwf : + 913317325231739 760 (7.29439e+228) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011110111 #b0011001111101010100001000010101111001101011001111011)))
(assert (= y (_ -oo 11 53)))
(assert (= r (fp #b0 #b11011110111 #b0011001111101010100001000010101111001101011001111011)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
