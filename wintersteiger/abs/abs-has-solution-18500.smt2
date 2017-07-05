(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.579320138037577425649260476347990334033966064453125p-380 {- 2609025957794258 -380 (-6.41316e-115)}
; -1.579320138037577425649260476347990334033966064453125p-380 | == 1.579320138037577425649260476347990334033966064453125p-380
; [HW: 1.579320138037577425649260476347990334033966064453125p-380] 

; mpf : + 2609025957794258 -380
; mpfd: + 2609025957794258 -380 (6.41316e-115) class: Pos. norm. non-zero
; hwf : + 2609025957794258 -380 (6.41316e-115) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01010000011 #b1001010001001110010100110001011011001001000111010010)))
(assert (= r (fp #b0 #b01010000011 #b1001010001001110010100110001011011001001000111010010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
