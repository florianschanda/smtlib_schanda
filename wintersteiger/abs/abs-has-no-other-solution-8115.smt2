(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5929398229120195207286769800703041255474090576171875p-575 {+ 2670363565519699 -575 (1.28811e-173)}
; 1.5929398229120195207286769800703041255474090576171875p-575 | == 1.5929398229120195207286769800703041255474090576171875p-575
; [HW: 1.5929398229120195207286769800703041255474090576171875p-575] 

; mpf : + 2670363565519699 -575
; mpfd: + 2670363565519699 -575 (1.28811e-173) class: Pos. norm. non-zero
; hwf : + 2670363565519699 -575 (1.28811e-173) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111000000 #b1001011111001010111001110111101111100111001101010011)))
(assert (= r (fp #b0 #b00111000000 #b1001011111001010111001110111101111100111001101010011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
