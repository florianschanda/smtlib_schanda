(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.9854046662016298085973176057450473308563232421875p-983 {- 4437868087514808 -983 (-2.42864e-296)}
; -1.9854046662016298085973176057450473308563232421875p-983 | == 1.9854046662016298085973176057450473308563232421875p-983
; [HW: 1.9854046662016298085973176057450473308563232421875p-983] 

; mpf : + 4437868087514808 -983
; mpfd: + 4437868087514808 -983 (2.42864e-296) class: Pos. norm. non-zero
; hwf : + 4437868087514808 -983 (2.42864e-296) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000101000 #b1111110001000011011110101110111010101001011010111000)))
(assert (= r (fp #b0 #b00000101000 #b1111110001000011011110101110111010101001011010111000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
