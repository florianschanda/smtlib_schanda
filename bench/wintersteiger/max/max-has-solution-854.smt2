(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.776034466816610812855969925294630229473114013671875p386 {- 3494948535581950 386 (-2.79917e+116)}
; Y = -oo {- 0 1024 (-1.#INF)}
; -1.776034466816610812855969925294630229473114013671875p386 M -oo == -1.776034466816610812855969925294630229473114013671875p386
; [HW: -1.776034466816610812855969925294630229473114013671875p386] 

; mpf : - 3494948535581950 386
; mpfd: - 3494948535581950 386 (-2.79917e+116) class: Neg. norm. non-zero
; hwf : - 3494948535581950 386 (-2.79917e+116) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110000001 #b1100011010101010001100011101111110001011110011111110)))
(assert (= y (_ -oo 11 53)))
(assert (= r (fp #b1 #b10110000001 #b1100011010101010001100011101111110001011110011111110)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
