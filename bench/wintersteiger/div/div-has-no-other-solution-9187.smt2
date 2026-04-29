(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.2901256962959537499813222893862985074520111083984375p773 {- 1306609977729063 773 (-6.40942e+232)}
; Y = -1.6308385548021313571354085070197470486164093017578125p-398 {- 2841044280337821 -398 (-2.52623e-120)}
; -1.2901256962959537499813222893862985074520111083984375p773 / -1.6308385548021313571354085070197470486164093017578125p-398 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100000100 #b0100101001000101101011010111100101010010000000100111)))
(assert (= y (fp #b1 #b01001110001 #b1010000101111110101000101011000111101110010110011101)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.div roundTowardPositive x y) r)))
(check-sat)
(exit)
