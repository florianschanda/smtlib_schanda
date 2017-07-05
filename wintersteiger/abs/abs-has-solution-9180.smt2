(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.5714215927669552552714549165102653205394744873046875p224 {- 2573454072256715 224 (-4.23654e+067)}
; -1.5714215927669552552714549165102653205394744873046875p224 | == 1.5714215927669552552714549165102653205394744873046875p224
; [HW: 1.5714215927669552552714549165102653205394744873046875p224] 

; mpf : + 2573454072256715 224
; mpfd: + 2573454072256715 224 (4.23654e+067) class: Pos. norm. non-zero
; hwf : + 2573454072256715 224 (4.23654e+067) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011011111 #b1001001001001000101011110111110100101001100011001011)))
(assert (= r (fp #b0 #b10011011111 #b1001001001001000101011110111110100101001100011001011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
