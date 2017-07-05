(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.1163193056252989077137272033724002540111541748046875p856 {- 523855581470091 856 (-5.3637e+257)}
; -1.1163193056252989077137272033724002540111541748046875p856 | == 1.1163193056252989077137272033724002540111541748046875p856
; [HW: 1.1163193056252989077137272033724002540111541748046875p856] 

; mpf : + 523855581470091 856
; mpfd: + 523855581470091 856 (5.3637e+257) class: Pos. norm. non-zero
; hwf : + 523855581470091 856 (5.3637e+257) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101010111 #b0001110111000111000110100001110110001101110110001011)))
(assert (= r (fp #b0 #b11101010111 #b0001110111000111000110100001110110001101110110001011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
