(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.845827199498561110857508538174442946910858154296875p-459 {- 3809267060481550 -459 (-1.24e-138)}
; -1.845827199498561110857508538174442946910858154296875p-459 | == 1.845827199498561110857508538174442946910858154296875p-459
; [HW: 1.845827199498561110857508538174442946910858154296875p-459] 

; mpf : + 3809267060481550 -459
; mpfd: + 3809267060481550 -459 (1.24e-138) class: Pos. norm. non-zero
; hwf : + 3809267060481550 -459 (1.24e-138) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01000110100 #b1101100010001000001000011001111111101001111000001110)))
(assert (= r (fp #b0 #b01000110100 #b1101100010001000001000011001111111101001111000001110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
