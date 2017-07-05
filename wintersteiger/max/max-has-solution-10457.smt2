(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.6598838502852089060723983493517152965068817138671875p-833 {+ 2971852662252275 -833 (2.89795e-251)}
; Y = -oo {- 0 1024 (-1.#INF)}
; 1.6598838502852089060723983493517152965068817138671875p-833 M -oo == 1.6598838502852089060723983493517152965068817138671875p-833
; [HW: 1.6598838502852089060723983493517152965068817138671875p-833] 

; mpf : + 2971852662252275 -833
; mpfd: + 2971852662252275 -833 (2.89795e-251) class: Pos. norm. non-zero
; hwf : + 2971852662252275 -833 (2.89795e-251) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010111110 #b1010100011101110001001011110010000100010001011110011)))
(assert (= y (_ -oo 11 53)))
(assert (= r (fp #b0 #b00010111110 #b1010100011101110001001011110010000100010001011110011)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
